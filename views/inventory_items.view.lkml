view: inventory_items {
  sql_table_name: `DemoLooker_ecommerce.inventory_items` ;;
  drill_fields: [id]

  dimension: id {
    label: "Inventory Item ID"
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: product_brand {
    type: string
    sql: ${TABLE}.product_brand ;;
  }
  dimension: product_category {
    type: string
    sql: ${TABLE}.product_category ;;
  }
  dimension: product_department {
    type: string
    sql: ${TABLE}.product_department ;;
  }
  dimension: product_distribution_center_id {
    type: number
    sql: ${TABLE}.product_distribution_center_id ;;
  }
  dimension: product_retail_price {
    type: number
    sql: ${TABLE}.product_retail_price ;;
  }
  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: product_sku {
    type: string
    sql: ${TABLE}.product_sku ;;
  }
  dimension_group: sold {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.sold_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, product_name, products.name, products.id, order_items.count]
  }
  measure: sum_product_retail_price {
    type: sum
    sql: ${product_retail_price} ;;
  }
  measure: avg_product_retail_price {
    type: average
    value_format: "$#,###.00;($#,###.00)"
    sql: ${product_retail_price} ;;
  }
}


# If necessary, uncomment the line below to include explore_source.
# include: "vesti_training.model.lkml"

view: sales_per_department {
  derived_table: {
    explore_source: order_items {
      column: product_department { field: inventory_items.product_department }
      column: avg_product_retail_price { field: inventory_items.avg_product_retail_price }
      column: sum_sale_price {}
    }
  }
  dimension: product_department {
    description: ""
  }
  dimension: avg_product_retail_price {
    description: ""
    value_format: "$#,###.00;($#,###.00)"
    type: number
  }
  dimension: sum_sale_price {
    description: ""
    value_format: "$#,###.00;($#,###.00)"
    type: number
  }
}
