SELECT COUNT(*) AS all_subs,
	(SELECT COUNT(*) 
		FROM Subscriptions
			WHERE STATUS = 'ACTIVE') AS total_active,
	(SELECT COUNT(*)
		FROM Subscriptions
			WHERE STATUS = 'CANCELLED') AS total_cancelled,
	(SELECT COUNT(*)
		FROM Subscriptions
			WHERE STATUS = 'CANCELLED' AND cancelled_at BETWEEN '2021-01-01' AND '2021-02-28') AS winter_cancellations,
	(SELECT COUNT(*)
		FROM Subscriptions		
			WHERE STATUS = 'CANCELLED' AND cancelled_at BETWEEN '2021-03-01' AND '2021-05-31') AS spring_cancellations,
	(SELECT COUNT(*)
		FROM Subscriptions
			WHERE STATUS = 'CANCELLED' AND cancelled_at BETWEEN '2021-06-01' AND '2021-08-31') AS summer_cancellations,
	(SELECT COUNT(*)
		FROM Subscriptions
			WHERE STATUS = 'CANCELLED' AND cancelled_at BETWEEN '2021-09-01' AND '2021-11-30') AS fall_cancellations
FROM Subscriptions

