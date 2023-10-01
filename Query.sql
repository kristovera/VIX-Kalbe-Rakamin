select "Marital Status", round(avg(age)) age_avg
from "Case Study - Customer.csv"
group by "Marital Status" ;


select  gender , round(avg(age)) as age_avg
from "Case Study - Customer.csv" 
group by gender


select sum(qty) total_qty, css.storename  
from "Case Study - Transaction.csv" cst
join "Case Study - Store.csv" css
on cst.storeid = css.storeid 
group by css.storename
order by 1 desc
limit 1


select sum(totalamount) total_amount_sum, csp."Product Name" 
from "Case Study - Transaction.csv" cst
join "Case Study - Product.csv" csp
on cst.productid = csp.productid 
group by 2
order by 1 desc
limit 1