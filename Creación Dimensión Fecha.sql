
CREATE SCHEMA dimension;
CREATE TABLE [dimension].[Date]
([IdDate]            [NUMERIC](8, 0) NOT NULL, 
 [Day]                [NUMERIC](2, 0) NULL, 
 [Month]                [VARCHAR](10) NULL, 
 [Year]               [NUMERIC](4, 0) NULL, 
 [MonthNumber]          [NUMERIC](2, 0) NULL, 
 [MonthAbbreviation]       [VARCHAR](3) NULL, 
 [YearAbbreviation]      [NUMERIC](2, 0) NULL, 
 [Weekday]          [VARCHAR](9) NULL, 
 [WeekdayAbbreviation] [VARCHAR](3) NULL, 
 [WeekISO]          [NUMERIC](2, 0) NULL, 
 [Week]             [NUMERIC](2, 0) NULL, 
 [Semester]           [NUMERIC](1, 0) NULL, 
 [Qarter]          [NUMERIC](1, 0) NULL, 
 [YearMonth]            [NUMERIC](6, 0) NULL, 
 CONSTRAINT [PK_Date] PRIMARY KEY CLUSTERED([IdDate] DESC)
 WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)
ON [PRIMARY];