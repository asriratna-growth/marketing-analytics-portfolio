CREATE OR REPLACE TABLE reporting.executive_summary AS

SELECT
    COUNT(DISTINCT s.website_session_id) AS total_sessions,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(
        COUNT(DISTINCT o.order_id) * 100.0
        / COUNT(DISTINCT s.website_session_id),
        2
    ) AS overall_conversion_rate_pct
FROM toy_store_funnel_analysis.website_sessions s
LEFT JOIN toy_store_funnel_analysis.order o
    ON s.website_session_id = o.website_session_id;
