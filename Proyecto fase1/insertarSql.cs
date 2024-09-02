public void Main()
{
    try
    {
        string Delimitador = Dts.Variables["User::Delimitador"].Value.ToString();
        string Extension = Dts.Variables["User::Extension"].Value.ToString();
        string FolderOrigen = Dts.Variables["User::FolderOrigen"].Value.ToString();
        string TablaDestino = Dts.Variables["User::TablaDestino"].Value.ToString();

        string[] fileentries = Directory.GetFiles(FolderOrigen, "entrada" + Extension);
        foreach (string filename in fileentries)
        {
            SqlConnection myADONETConnection = new SqlConnection();
            myADONETConnection = (SqlConnection)(Dts.Connections["JOSEPH\\SQLEXPRESS.semi2"].AcquireConnection(Dts.Transaction) as SqlConnection);
            int contador = 0;

            string linea;

            System.IO.StreamReader SourceFile = new System.IO.StreamReader(filename);

            while ((linea = SourceFile.ReadLine()) != null)
            {
                if (contador > 0)
                {
                    string[] campos = linea.Split(Delimitador.ToCharArray()[0]);
                    string query = "INSERT INTO " + TablaDestino + " (carnet,nombre,nota) VALUES (@Carnet, @Nombre, @Nota)";
                    using (SqlCommand myCommand = new SqlCommand(query, myADONETConnection))
                    {
                        myCommand.Parameters.AddWithValue("@Carnet", campos[0]);
                        myCommand.Parameters.AddWithValue("@Nombre", campos[1]);
                        myCommand.Parameters.AddWithValue("@Nota", campos[2]);
                        myCommand.ExecuteNonQuery();
                    }
                }
                contador++;
            }
            SourceFile.Close();
            Dts.TaskResult = (int)ScriptResults.Success;
        }
    }

    catch (Exception ex) {
        using (StreamWriter sw = File.CreateText(Dts.Variables["User::FolderError"].Value.ToString() + "\\" + "ErrorLog.log"))
        {
            sw.WriteLine(ex.ToString());
            Dts.TaskResult = (int)ScriptResults.Failure;
        }
    }

}