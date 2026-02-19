Rank the sales people by their aggregate sales while providing their name, position, salary and aggregate sales amount

 

t_sales_person

| sales_person_id | name   | position     | salary |

| --------------- | ------ | ------------ | ------ |

| 1               | Steve  | Senior       | 80000  |

| 2               | Bill   | Intermediate | 60000  |

| 3               | Alan   | Intermediate | 62000  |

| 4               | Gordon | Junior       | 30000  |

| 5               | Robert | Junior       | 25000  |


t_aggregate_sales

| sales_id | month  | amount | sales_person_id |

| -------- | ------ | ------ | --------------- |

| 1        | 202312 | 1000   | 1               |

| 2        | 202312 | 5000   | 2               |

| 3        | 202312 | 2000   | 3               |

| 4        | 202312 | 100    | 4               |

| 5        | 202312 | 2500   | 5               |


SELECT name, position, salary
FROM t_sales_person SP 
INNER JOIN  t_aggregate_sales AS
ON SP.sales_person_id = AS.sales_person_id
GROUP BY AS.amount
ORDER BY amount ASC

