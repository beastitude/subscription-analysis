SELECT  product_title,
			COUNT(product_title) AS Subs_Cancelled
FROM Subscriptions
WHERE STATUS = 'CANCELLED' AND cancelled_at BETWEEN '2021-09-01' AND '2021-11-30'
GROUP BY product_title
ORDER BY Subs_Cancelled DESC