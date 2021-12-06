SELECT  product_title,
			COUNT(product_title) AS Amnt_Subs_Cancelled
FROM Subscriptions
WHERE STATUS = 'CANCELLED' AND cancelled_at BETWEEN '2021-03-01' AND '2021-05-31'
GROUP BY product_title
ORDER BY Amnt_Subs_Cancelled DESC