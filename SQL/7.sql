--7-- Compare the difference standard deviation in selling price between PNJ and SJC.
SELECT type, STDEV(sell) AS sell_price_stddev
FROM (
    SELECT 'PNJ' AS type, sell FROM tbl_PNJ
    UNION ALL
    SELECT 'SJC' AS type, sell FROM tbl_SJC
) AS combined
GROUP BY type;
