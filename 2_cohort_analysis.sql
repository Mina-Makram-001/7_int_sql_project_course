SELECT
	cohort_year,
	count(distinct customerkey) AS total_customers,
	sum(total_net_revenue) AS total_revenue,
	round(sum(total_net_revenue)::numeric/count(distinct customerkey) , 2) AS customer_revenue
FROM 
	cohort_analysis 
WHERE orderdate = first_purchase_date 
GROUP BY 
	cohort_year