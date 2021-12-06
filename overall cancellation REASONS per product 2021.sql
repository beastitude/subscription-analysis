SELECT  product_title,
			cancellation_reason,
			COUNT(cancellation_reason) AS amnt_cancellation_reason
FROM Subscriptions
WHERE STATUS = 'CANCELLED'
GROUP BY product_title, cancellation_reason
