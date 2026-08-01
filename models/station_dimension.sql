WITH BIKE AS (
    SELECT 
    DISTINCT
    start_statio_id AS station_id,
    start_station_name AS station_name,
    start_lat,
    start_lng
    FROM {{ source('demo', 'bike') }}
    WHERE RIDE_ID <> 'ride_id'
)

SELECT *
FROM BIKE