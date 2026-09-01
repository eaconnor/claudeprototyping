# Adlumin · Pendo usage — June 2026
# Data: REPORTING_DB.RAW.RAW_PENDO_ALL_EVENTS_VW  (APP_DISPLAYNAME = 'Adlumin')
# Pulled live from Snowflake as ELIZABETHCONNOR / REPORTING_USER_READONLY_NOPII

library(readr)
library(dplyr)
library(ggplot2)

# ---- 1. Load the extract -------------------------------------------------
daily <- read_csv("adlumin_pendo_june2026_daily.csv") |>
  mutate(
    day      = as.Date(day),
    weekday  = weekdays(day),
    is_weekend = weekday %in% c("Saturday", "Sunday"),
    events_per_visitor = round(events / visitors, 1)
  )

# ---- 2. Quick summary ----------------------------------------------------
daily |>
  group_by(is_weekend) |>
  summarise(
    days            = n(),
    mean_events     = round(mean(events)),
    mean_visitors   = round(mean(visitors)),
    mean_accounts   = round(mean(accounts))
  ) |>
  print()

# ---- 3. Trend: visitors is the adoption metric (events are inflated by
#         automation/telemetry — see the high events-per-visitor accounts) --
ggplot(daily, aes(day, visitors, fill = is_weekend)) +
  geom_col() +
  labs(title = "Adlumin — daily active users (Pendo visitors), June 2026",
       x = NULL, y = "Distinct visitors", fill = "Weekend") +
  theme_minimal()

# ---- 4. Optional: pull live from Snowflake instead of the CSV ------------
# Requires a Snowflake ODBC DSN. This is the "skill reads Snowflake" pattern.
#
# library(DBI); library(odbc)
# con <- dbConnect(odbc::odbc(), "Snowflake",
#                  warehouse = "NABLE_REPORTING_WH",
#                  database  = "REPORTING_DB")
#
# daily <- dbGetQuery(con, "
#   SELECT PERIODID AS day,
#          COUNT(*)                  AS events,
#          COUNT(DISTINCT VISITORID) AS visitors,
#          COUNT(DISTINCT ACCOUNTID) AS accounts
#   FROM REPORTING_DB.RAW.RAW_PENDO_ALL_EVENTS_VW
#   WHERE APP_DISPLAYNAME = 'Adlumin'
#     AND PERIODID >= '2026-06-01'
#   GROUP BY 1 ORDER BY 1")
