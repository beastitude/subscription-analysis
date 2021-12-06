SELECT  product_title,
			cancellation_reason,
			COUNT(cancellation_reason) AS amnt_cancellation_reason
FROM Subscriptions
WHERE STATUS = 'CANCELLED' AND cancelled_at BETWEEN '2021-09-01' AND '2021-11-30'
GROUP BY product_title, cancellation_reason
#ORDER BY amnt_cancellation_reason DESC