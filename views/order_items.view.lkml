view: order_items {
  sql_table_name: `DemoLooker_ecommerce.order_items` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: delivered {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.delivered_at ;;
  }
  dimension_group: fulfillment {
    type: duration
    intervals: [week,hour,month]
    sql_start: ${created_raw};;
    sql_end: ${delivered_raw} ;;
  }
  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }
  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }
  dimension_group: returned {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.returned_at ;;
  }
  dimension_group: shipped {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.shipped_at ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  measure: sum_sale_price {
    type: sum
    value_format:"\"R$ \"#,###.00;($#,###.00)"
    drill_fields: [detail*]
    sql: ${sale_price} ;;
  }


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  users.last_name,
  users.id,
  users.first_name,
  inventory_items.id,
  inventory_items.product_name,
  products.name,
  products.id,
  orders.order_id
  ]
  }

}


view: customer_order_summary {
  derived_table: {
    sql: SELECT
        user_id as customer_id,
        MIN(DATE(created_at)) AS first_order,
        SUM(sale_price) AS total_amount
      FROM
        order_items
      GROUP BY
        user_id ;;
  }
  dimension: customer_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.customer_id ;;
  }
  dimension_group: first_order {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.first_order ;;
  }
  dimension: total_amount {
    type: number
    value_format: "0.00"
    sql: ${TABLE}.total_amount ;;
  }
}
