SELECT  product_title,
			COUNT(product_title) AS Subs_Cancelled
FROM Subscriptions
WHERE STATUS = 'CANCELLED' AND cancelled_at BETWEEN '2021-01-01' AND '2021-02-28'
GROUP BY product_title
ORDER BY Subs_Cancelled DESC