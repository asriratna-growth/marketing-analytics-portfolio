CREATE OR REPLACE TABLE reporting.funnel_summary AS

SELECT
    pageview_url AS funnel_stage,
    COUNT(DISTINCT website_session_id) AS sessions
FROM toy_store_funnel_analysis.website_pageview
WHERE pageview_url IN (
    '/products',
    '/cart',
    '/shipping',
    '/billing-2',
    '/thank-you-for-your-order'
)
GROUP BY pageview_url;
