SELECT product_title,
			COUNT(product_title) AS amnt_subs_cancelled
FROM Subscriptions
WHERE STATUS = 'CANCELLED'
GROUP BY product_title
ORDER BY amnt_subs_cancelled DESC