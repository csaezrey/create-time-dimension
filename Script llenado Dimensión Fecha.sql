
SET LANGUAGE Spanish;
SET NOCOUNT ON 

DECLARE @CurrentDate DATE= '2016-01-01';
DECLARE @EndDate DATE= '2021-12-31';
WHILE @CurrentDate < @EndDate
    BEGIN
        INSERT INTO [dimension].[Date]
        ([IdDate], 
         [Day], 
         [Month], 
         [Year], 
         [MonthNumber], 
         [MonthAbbreviation], 
         [YearAbbreviation], 
         [Weekday], 
         [WeekdayAbbreviation], 
         [WeekISO], 
         [Week], 
         [Semester], 
         [Qarter], 
         [YearMonth]
        )
               SELECT YEAR(@CurrentDate) * 10000 + MONTH(@CurrentDate) * 100 + DAY(@CurrentDate), 
                      DAY(@CurrentDate), 
                      DATENAME(mm, @CurrentDate), 
                      YEAR(@CurrentDate), 
                      MONTH(@CurrentDate), 
                      UPPER(LEFT(DATENAME(mm, @CurrentDate), 3)), 
                      RIGHT(YEAR(@CurrentDate), 2), 
                      DATENAME(dw, @CurrentDate), 
                      UPPER(LEFT(DATENAME(dw, @CurrentDate), 3)), 
                      DATEPART(ISO_WEEK, @CurrentDate), 
                      DATEPART(WEEK, @CurrentDate),
                      CASE
                          WHEN DATEPART(quarter, @CurrentDate) >= 3
                          THEN 2
                          ELSE 1
                      END, 
                      DATEPART(q, @CurrentDate), 
                      YEAR(@CurrentDate) * 100 + MONTH(@CurrentDate);
        SET @CurrentDate = DATEADD(DD, 1, @CurrentDate);
    END;
