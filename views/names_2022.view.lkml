view: names_2022 {
  sql_table_name: `somosnuvem-lab-br.babynames.names_2022` ;;

  dimension: assigned_sex_at_birth {
    type: string
    sql: ${TABLE}.assigned_sex_at_birth ;;
  }
  dimension: count_names_2022 {
    type: number
    sql: ${TABLE}.count ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
