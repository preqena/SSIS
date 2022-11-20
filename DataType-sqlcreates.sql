--Template Tables


IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[test].[DataType]') AND type in (N'U'))
BEGIN
CREATE TABLE [test].[DataType](
	[dt_bigint] [bigint] NULL,
	[dt_bit] [bit] NULL,
	[dt_decimal] [decimal](38, 19) NULL,
	[dt_int] [int] NULL,
	[dt_money] [money] NULL,
	[dt_numeric] [numeric](38, 19) NULL,
	[dt_smallint] [smallint] NULL,
	[dt_smallmoney] [smallmoney] NULL,
	[dt_tinyint] [tinyint] NULL,
	[dt_float] [float] NULL,
	[dt_real] [real] NULL,
	[dt_date] [date] NULL,
	[dt_datetime2] [datetime2](7) NULL,
	[dt_datetime] [datetime] NULL,
	[dt_datetimeoffset] [datetimeoffset](7) NULL,
	[dt_smalldatetime] [smalldatetime] NULL,
	[dt_time] [time](7) NULL,
	[dt_char] [char](1) NULL,
	[dt_text] [text] NULL,
	[dt_varchar] [varchar](max) NULL,
	[dt_nchar] [nchar](1) NULL,
	[dt_ntext] [ntext] NULL,
	[dt_nvarchar] [nvarchar](max) NULL,
	[dt_binary] [binary](1) NULL,
	[dt_image] [image] NULL,
	[dt_varbinary] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO


IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[test].[DataType_out]') AND type in (N'U'))
BEGIN
CREATE TABLE [test].[DataType_out](
	[etlId] [bigint] IDENTITY(1,1) NOT NULL,
	[etlInsert] [datetime2](3) NULL,
	[dt_bigint] [bigint] NULL,
	[dt_bit] [bit] NULL,
	[dt_decimal] [decimal](38, 19) NULL,
	[dt_int] [int] NULL,
	[dt_money] [money] NULL,
	[dt_numeric] [numeric](38, 19) NULL,
	[dt_smallint] [smallint] NULL,
	[dt_smallmoney] [smallmoney] NULL,
	[dt_tinyint] [tinyint] NULL,
	[dt_float] [float] NULL,
	[dt_real] [real] NULL,
	[dt_date] [date] NULL,
	[dt_datetime2] [datetime2](7) NULL,
	[dt_datetime] [datetime] NULL,
	[dt_datetimeoffset] [datetimeoffset](7) NULL,
	[dt_smalldatetime] [smalldatetime] NULL,
	[dt_time] [time](7) NULL,
	[dt_char] [char](1) NULL,
	[dt_text] [text] NULL,
	[dt_varchar] [varchar](max) NULL,
	[dt_nchar] [nchar](1) NULL,
	[dt_ntext] [ntext] NULL,
	[dt_nvarchar] [nvarchar](max) NULL,
	[dt_binary] [binary](1) NULL,
	[dt_image] [image] NULL,
	[dt_varbinary] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO