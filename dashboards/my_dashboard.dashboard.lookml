- dashboard: my_dashboard
  title: My Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: lGdce64aW2xtLxOYyOGlCz
  elements:
  - title: Demo Dashboard
    name: Demo Dashboard
    model: demo_training
    explore: users
    type: looker_bar
    fields: [users.country, users.city, users.count]
    filters: {}
    sorts: [users.count desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: users.count, id: users.count,
            name: Users Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels: {}
    x_axis_label_rotation_bar: 0
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_pivots: {}
    listen:
      Country: users.country
    row: 0
    col: 0
    width: 24
    height: 12
  - title: Countries per Region
    name: Countries per Region
    model: demo_training
    explore: users
    type: looker_pie
    fields: [users.count, users.country]
    sorts: [users.count desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: true
    y_axes: [{label: '', orientation: left, series: [{axisId: users.count, id: users.count,
            name: Users Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_labels: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label_rotation_bar: 0
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_pivots: {}
    show_null_points: true
    interpolation: linear
    listen:
      Country: users.country
    row:
    col:
    width:
    height:
  - title: new look
    name: new look
    model: demo_training
    explore: users
    type: looker_line
    fields: [users.count, users.created_month]
    fill_fields: [users.created_month]
    filters:
      users.created_year: before 2023/01/01
    sorts: [percent_of_users_count desc]
    limit: 1000
    column_limit: 50
    dynamic_fields:
    - args:
      - users.count
      calculation_type: percent_of_column_sum
      category: table_calculation
      based_on: users.count
      label: Percent of Users Count
      source_field: users.count
      table_calculation: percent_of_users_count
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: bottom, series: [{axisId: users.count, id: users.count,
            name: Users Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      users.count: "#E8710A"
    series_labels: {}
    ordering: none
    show_null_labels: false
    x_axis_label_rotation_bar: 0
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Country: users.country
    row:
    col:
    width:
    height:
  - title: Vendas
    name: Vendas
    model: demo_training
    explore: order_items
    type: looker_column
    fields: [price_average_allan, faixa_etaria, users.gender]
    pivots: [faixa_etaria]
    sorts: [faixa_etaria, users.gender, price_average_allan desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: concat(${users.city}, " ", ${users.country})
      label: cities-allan
      value_format:
      value_format_name:
      dimension: cities_allan
      _kind_hint: dimension
      _type_hint: string
    - category: measure
      expression:
      label: price-average-allan
      value_format:
      value_format_name: decimal_2
      based_on: order_items.sale_price
      _kind_hint: measure
      measure: price_average_allan
      type: average
      _type_hint: number
    - category: dimension
      description: ''
      label: country-group-allan
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: country_group_allan
      args:
      - users.country
      - - label: America Latina
          filter: Brasil,Colombia
        - label: Asia
          filter: Japan,South Korea
      - Other
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: age-bin-allan
      value_format:
      value_format_name:
      calculation_type: bin
      dimension: age_bin_allan
      args:
      - users.age
      - '10'
      - '0'
      - '100'
      -
      - classic
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Faixa Etária
      value_format:
      value_format_name:
      calculation_type: bin
      dimension: faixa_etaria
      args:
      - users.age
      - '10'
      - '0'
      - '100'
      -
      - classic
      _kind_hint: dimension
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row:
    col:
    width:
    height:
  filters:
  - name: Country
    title: Country
    type: field_filter
    default_value: China,Brasil,United States
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: demo_training
    explore: users
    listens_to_filters: []
    field: users.country
