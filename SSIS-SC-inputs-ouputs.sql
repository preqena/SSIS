DECLARE @input nvarchar(MAX)
DECLARE @output nvarchar(MAX)
GOTO setters

logic:
SET @output=
REPLACE(--cachedScale
  REPLACE(--cachedPrecision
    REPLACE(--cachedName
      REPLACE(--cachedLength
        REPLACE(--cachedDataType
          REPLACE(--cachedCodepage
            REPLACE(--Input
              REPLACE(--input
                @input COLLATE SQL_Latin1_General_CP1_CS_AS
              ,N'input' COLLATE SQL_Latin1_General_CP1_CS_AS,N'output' COLLATE SQL_Latin1_General_CP1_CS_AS) COLLATE SQL_Latin1_General_CP1_CS_AS
            ,N'Input' COLLATE SQL_Latin1_General_CP1_CS_AS,N'Output' COLLATE SQL_Latin1_General_CP1_CS_AS) COLLATE SQL_Latin1_General_CP1_CS_AS
          ,N'cachedCodepage' COLLATE SQL_Latin1_General_CP1_CS_AS,N'codePage' COLLATE SQL_Latin1_General_CP1_CS_AS) COLLATE SQL_Latin1_General_CP1_CS_AS
        ,N'cachedDataType' COLLATE SQL_Latin1_General_CP1_CS_AS,N'dataType' COLLATE SQL_Latin1_General_CP1_CS_AS) COLLATE SQL_Latin1_General_CP1_CS_AS
      ,N'cachedLength' COLLATE SQL_Latin1_General_CP1_CS_AS,N'length' COLLATE SQL_Latin1_General_CP1_CS_AS) COLLATE SQL_Latin1_General_CP1_CS_AS
    ,N'cachedName' COLLATE SQL_Latin1_General_CP1_CS_AS,N'name' COLLATE SQL_Latin1_General_CP1_CS_AS) COLLATE SQL_Latin1_General_CP1_CS_AS
  ,N'cachedPrecision' COLLATE SQL_Latin1_General_CP1_CS_AS,N'precision' COLLATE SQL_Latin1_General_CP1_CS_AS) COLLATE SQL_Latin1_General_CP1_CS_AS
,N'cachedScale' COLLATE SQL_Latin1_General_CP1_CS_AS,N'scale' COLLATE SQL_Latin1_General_CP1_CS_AS) COLLATE SQL_Latin1_General_CP1_CS_AS
SELECT @output
RETURN


setters:
SET @output=N'' COLLATE SQL_Latin1_General_CP1_CS_AS
SET @input=N'
              <inputs>
                <input
                  refId="Package\DF - DataType\SC - async.Inputs[Input 0]"
                  hasSideEffects="true"
                  name="Input 0">
                  <inputColumns>
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_bigint]"
                      cachedDataType="i8"
                      cachedName="dt_bigint"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_bigint]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_bit]"
                      cachedDataType="bool"
                      cachedName="dt_bit"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_bit]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_decimal]"
                      cachedDataType="numeric"
                      cachedName="dt_decimal"
                      cachedPrecision="38"
                      cachedScale="19"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_decimal]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_int]"
                      cachedDataType="i4"
                      cachedName="dt_int"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_int]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_money]"
                      cachedDataType="cy"
                      cachedName="dt_money"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_money]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_numeric]"
                      cachedDataType="numeric"
                      cachedName="dt_numeric"
                      cachedPrecision="38"
                      cachedScale="19"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_numeric]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_smallint]"
                      cachedDataType="i2"
                      cachedName="dt_smallint"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_smallint]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_smallmoney]"
                      cachedDataType="cy"
                      cachedName="dt_smallmoney"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_smallmoney]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_tinyint]"
                      cachedDataType="ui1"
                      cachedName="dt_tinyint"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_tinyint]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_float]"
                      cachedDataType="r8"
                      cachedName="dt_float"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_float]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_real]"
                      cachedDataType="r4"
                      cachedName="dt_real"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_real]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_date]"
                      cachedDataType="dbDate"
                      cachedName="dt_date"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_date]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_datetime2]"
                      cachedDataType="dbTimeStamp2"
                      cachedName="dt_datetime2"
                      cachedScale="7"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_datetime2]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_datetime]"
                      cachedDataType="dbTimeStamp"
                      cachedName="dt_datetime"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_datetime]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_datetimeoffset]"
                      cachedDataType="dbTimeStampOffset"
                      cachedName="dt_datetimeoffset"
                      cachedScale="7"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_datetimeoffset]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_smalldatetime]"
                      cachedDataType="dbTimeStamp"
                      cachedName="dt_smalldatetime"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_smalldatetime]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_time]"
                      cachedDataType="dbTime2"
                      cachedName="dt_time"
                      cachedScale="7"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_time]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_char]"
                      cachedCodepage="1252"
                      cachedDataType="str"
                      cachedLength="1"
                      cachedName="dt_char"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_char]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_text]"
                      cachedCodepage="1252"
                      cachedDataType="text"
                      cachedName="dt_text"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_text]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_varchar]"
                      cachedCodepage="1252"
                      cachedDataType="str"
                      cachedLength="8000"
                      cachedName="dt_varchar"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_varchar]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_nchar]"
                      cachedDataType="wstr"
                      cachedLength="1"
                      cachedName="dt_nchar"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_nchar]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_ntext]"
                      cachedDataType="nText"
                      cachedName="dt_ntext"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_ntext]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_nvarchar]"
                      cachedDataType="wstr"
                      cachedLength="4000"
                      cachedName="dt_nvarchar"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_nvarchar]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_binary]"
                      cachedDataType="bytes"
                      cachedLength="1"
                      cachedName="dt_binary"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_binary]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_image]"
                      cachedDataType="image"
                      cachedName="dt_image"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_image]" />
                    <inputColumn
                      refId="Package\DF - DataType\SC - async.Inputs[Input 0].Columns[dt_varbinary]"
                      cachedDataType="bytes"
                      cachedLength="8000"
                      cachedName="dt_varbinary"
                      lineageId="Package\DF - DataType\SRC - DataType.Outputs[Salida de origen de OLE DB].Columns[dt_varbinary]" />
                  </inputColumns>
                  <externalMetadataColumns />
                </input>
              </inputs>
' COLLATE SQL_Latin1_General_CP1_CS_AS
GOTO logic