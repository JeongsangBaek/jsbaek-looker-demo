connection: "jsbaek-bq-public-baseball"

# include all the views
include: "/views/**/*.view"

datagroup: jsbaek_bq_baseball_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: jsbaek_bq_baseball_default_datagroup

explore: games_post_wide {}

explore: games_wide {}

explore: schedules {}
