# SSIS
SSIS workarounds
## Script Component ASYNC columns
Given a Source and a Target linked by a Script Component with Async columns enabled, "ease" the creation and maintenance of the Script Component whenever new columns are added.
The idea behind is: if the columns of the source and the target end up being the same data type and with the same data (or cleansed), automate the creation of the package as much as possible (without using BIML).
Therefore:
1. Create your Source, Target and Script Component, link all of them
2. Fill the input data to the Script Component
3. "Show Code" of the package and find the input columns from the Script Component
4. Copy and Paste the input columns from the code of the package (XML code) into the *SSIS-SC-inputs-ouputs.sql* script
5. Execute said SQL script, it will convert the input XML code to output XML code so you don't have to configure every column in the Script Component
6. Paste the result in the XML code
7. Edit the Script Component and add the code in *assign-same-values-async-cols.cs* in the main method
8. This code will pass the same data of the input column to the output column, modify as needed if a cleaning process is for example needed
9. This code takes into account that the types DT_NTEXT, DT_TEXT and DT_IMAGE are seen in C# as BlobColumn
