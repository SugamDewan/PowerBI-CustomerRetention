%%sql
-- This view joins sales with employee and date dimensions to aggregate sales data at the employee level.
-- Using a temporary view is a good practice as it separates the complex query logic from the final save operation.

CREATE OR REPLACE TEMPORARY VIEW view_employee_sales_by_date
AS
SELECT 
    -- Date and Employee Attributes for grouping
    DD.Date,
    DD.CalendarMonthLabel,
    DE.Employee,
    DE.PreferredName,
    
    -- Aggregated Metrics
    SUM(FS.TotalIncludingTax) AS TotalSales,
    SUM(FS.Profit) AS TotalProfit

-- Define table sources and aliases
FROM CustomerChurnAnalytics.fact_churn AS FS
-- Join Logic
INNER JOIN CustomerChurnAnalytics.dim_customer AS DE ON FS.customerID = DE.customerID
-- Note: A date dimension would be needed here for a full join, using dim_customer for demonstration
GROUP BY
    DD.Date,
    DD.CalendarMonthLabel,
    DE.Employee,
    DE.PreferredName
