CREATE OR REPLACE TABLE reporting.funnel_dropoff_summary AS

SELECT
1 AS stage_order,
'Products → Cart' AS stage_transition,
36.35 AS conversion_rate_pct,
63.65 AS dropoff_rate_pct

UNION ALL

SELECT
2,
'Cart → Shipping',
67.91,
32.09

UNION ALL

SELECT
3,
'Shipping → Billing',
75.12,
24.88

UNION ALL

SELECT
4,
'Billing → Purchase',
66.71,
33.29;
