-- View: ship.v_week_days_count

-- DROP VIEW ship.v_week_days_count;

CREATE OR REPLACE VIEW ship.v_week_days_count
 AS
 SELECT tx3.b_month,
    sum(
        CASE tx3.b_day_week
            WHEN 'monday'::text THEN tx3.cnt
            ELSE 0::bigint
        END) AS monday,
    sum(
        CASE tx3.b_day_week
            WHEN 'tuesday'::text THEN tx3.cnt
            ELSE 0::bigint
        END) AS tuesday,
    sum(
        CASE tx3.b_day_week
            WHEN 'wednesday'::text THEN tx3.cnt
            ELSE 0::bigint
        END) AS wednesday,
    sum(
        CASE tx3.b_day_week
            WHEN 'thursday'::text THEN tx3.cnt
            ELSE 0::bigint
        END) AS thursday,
    sum(
        CASE tx3.b_day_week
            WHEN 'friday'::text THEN tx3.cnt
            ELSE 0::bigint
        END) AS friday,
    sum(
        CASE tx3.b_day_week
            WHEN 'saturday'::text THEN tx3.cnt
            ELSE 0::bigint
        END) AS saturday,
    sum(
        CASE tx3.b_day_week
            WHEN 'sunday'::text THEN tx3.cnt
            ELSE 0::bigint
        END) AS sunday
   FROM ( SELECT tx2.b_month,
            tx2.b_day_week,
            count(*) AS cnt
           FROM ( SELECT to_char(tx.month_date, 'yyyy-mm'::text) AS b_month,
                    TRIM(BOTH FROM to_char(tx.month_date, 'day'::text)) AS b_day_week
                   FROM ( SELECT generate_series(t1.month_day_first, t1.month_day_last, '1 day'::interval) AS month_date
                           FROM ( SELECT DISTINCT date_trunc('month'::text, battle.batt_date) AS month_day_first,
                                    date_trunc('month'::text, battle.batt_date) + '1 mon -1 days'::interval AS month_day_last
                                   FROM ship.battle) t1) tx) tx2
          GROUP BY tx2.b_month, tx2.b_day_week) tx3
  GROUP BY tx3.b_month
  ORDER BY tx3.b_month;

ALTER TABLE ship.v_week_days_count
    OWNER TO postgres;
COMMENT ON VIEW ship.v_week_days_count
    IS 'Для каждого месяца (с учетом года) из таблицы battle посчитать сколько раз повторяется каждый день недели в этом месяце.
Вывод: месяц (в формате "YYYY-ММ"), количество понедельников, вторников, ...воскресений.';

