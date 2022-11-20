    public override void Input0_ProcessInputRow(Input0Buffer Row)
    {
        List<PropertyInfo> input = Row.GetType().GetProperties().ToList();
        List<PropertyInfo> output = Output0Buffer.GetType().GetProperties().ToList();
        Output0Buffer.AddRow();
        foreach (PropertyInfo column in input.Where(col => !col.Name.Contains("_IsNull")))
        {
            if (column.PropertyType.Name != "BlobColumn" && !(bool)input.Find(col => col.Name == string.Concat(column.Name,"_IsNull")).GetValue(Row))
            {
                output.Find(col => col.Name == column.Name).SetValue(Output0Buffer, column.GetValue(Row));
            }
            else if (column.PropertyType.Name == "BlobColumn" && !(bool)input.Find(col => col.Name == string.Concat(column.Name, "_IsNull")).GetValue(Row))
            {
                BlobColumn bcInput = (BlobColumn)Row.GetType().GetProperty(column.Name).GetValue(Row);
                BlobColumn bcOutput = (BlobColumn)Output0Buffer.GetType().GetProperty(column.Name).GetValue(Output0Buffer);
                bcOutput.AddBlobData(bcInput.GetBlobData(0, (int)bcInput.Length));

            }
        }
        Output0Buffer.etlInsert = DateTime.Parse(this.now.ToString("yyyy-MM-dd HH:mm:ss.fff"));
    }