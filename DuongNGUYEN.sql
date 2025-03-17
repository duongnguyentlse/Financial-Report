Select distinct(CONCAT(stock, year(endDate))) as Keycol
	, stock
	, Year(endDate) as endDate
	, totalAssets
	, totalStockholderEquity
	, longTermDebt
	, shortLongTermDebt as shortTermDebt
	, totalLiab as totalLiabilities
	, inventory
	, cash
from balanceSheet
where day(endDate) = 31 and month(endDate) =12 and year(endDate) between 2016 and 2019
order by Keycol

Select distinct(CONCAT(stock, year(endDate))) as Keycol
	, stock
	, Year(endDate) as endDate
	, totalRevenue
	, costOfRevenue
	, ebit
	, netIncome
	, ABS (interestExpense) as interestExpense
from incomeStatement
where day(endDate) = 31 and month(endDate) =12 and year(endDate) between 2016 and 2019
order by Keycol

Select distinct(CONCAT(stock, year(endDate))) as Keycol
	, stock
	, Year(endDate) as endDate
	, ABS(dividendsPaid) as dividendsPaid
from cashflowStatement 
where day(endDate) = 31 and month(endDate) =12 and year(endDate) between 2016 and 2019
order by Keycol
