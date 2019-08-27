view: looker_data_dictionary {
  sql_table_name: exoplanets.looker_data_dictionary ;;

  dimension: align {
    type: string
    sql: ${TABLE}.align ;;
  }

  dimension: can_filter {
    type: yesno
    sql: ${TABLE}.can_filter ;;
  }

  dimension: can_time_filter {
    type: yesno
    sql: ${TABLE}.can_time_filter ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: default_filter_value {
    type: string
    sql: ${TABLE}.default_filter_value ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: dynamic {
    type: yesno
    sql: ${TABLE}.dynamic ;;
  }

  dimension: enumerations {
    type: string
    sql: ${TABLE}.enumerations ;;
  }

  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }

  dimension: explore_name {
    type: string
    sql: ${TABLE}.explore_name ;;
  }

  dimension: explore {
    #put model name in the link
    type: string
    sql: ${TABLE}.explore ;;
    link: {
      label: "Go to explore"
      icon_url: "https://avatars0.githubusercontent.com/u/1437874?s=400&v=4"
      url: "https://saleseng.dev.looker.com/explore/{{ looker_data_dictionary.model_name._value }}/{{ looker_data_dictionary.explore_name._value }}"
    }
  }

  dimension: explore_description {
    type: string
    sql: ${TABLE}.explore_description ;;
  }

  dimension: explore_link {
    type: string
    sql: ${TABLE}.explore_description ;;
  }

  dimension: field_group_label {
    type: string
    sql: ${TABLE}.field_group_label ;;
  }

  dimension: field_group_variant {
    type: string
    sql: ${TABLE}.field_group_variant ;;
  }

  dimension: field_name {
    #to take out duplicate dates
    type: string
    sql: case when ${type_original} like '%date%' and ${field_group_label} is not null
              then ${field_group_label} else ${field_group_variant} end;;
  }

  dimension: fill_style {
    type: string
    sql: ${TABLE}.fill_style ;;
  }

  dimension: fiscal_month_offset {
    type: number
    sql: ${TABLE}.fiscal_month_offset ;;
  }

  dimension: has_allowed_values {
    type: yesno
    sql: ${TABLE}.has_allowed_values ;;
  }

  dimension: hidden {
    type: yesno
    sql: ${TABLE}.hidden ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: is_filter {
    type: yesno
    sql: ${TABLE}.is_filter ;;
  }

  dimension: is_fiscal {
    type: yesno
    sql: ${TABLE}.is_fiscal ;;
  }

  dimension: is_numeric {
    type: yesno
    sql: ${TABLE}.is_numeric ;;
  }

  dimension: is_timeframe {
    type: yesno
    sql: ${TABLE}.is_timeframe ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: label_from_parameter {
    type: string
    sql: ${TABLE}.label_from_parameter ;;
  }

  dimension: label_short {
    type: string
    sql: ${TABLE}.label_short ;;
  }

  dimension: lookml_link {
    type: string
    sql: ${TABLE}.lookml_link ;;
  }

  dimension: map_layer {
    type: string
    sql: ${TABLE}.map_layer ;;
  }

  dimension: measure {
    type: yesno
    sql: ${TABLE}.measure ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.model_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parameter {
    type: yesno
    sql: ${TABLE}.parameter ;;
  }

  dimension: permanent {
    type: string
    sql: ${TABLE}.permanent ;;
  }

  dimension: primary_key {
    type: yesno
    sql: ${TABLE}.primary_key ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }

  dimension: requires_refresh_on_sort {
    type: yesno
    sql: ${TABLE}.requires_refresh_on_sort ;;
  }

  dimension: scope {
    type: string
    sql: ${TABLE}.scope ;;
  }

  dimension: sortable {
    type: yesno
    sql: ${TABLE}.sortable ;;
  }

  dimension: source_file {
    type: string
    sql: ${TABLE}.source_file ;;
  }

  dimension: source_file_path {
    type: string
    sql: ${TABLE}.source_file_path ;;
  }

  dimension: sql {
    type: string
    sql: ${TABLE}.sql ;;
  }

  dimension: sql_case {
    type: string
    sql: ${TABLE}.sql_case ;;
  }

  dimension: strict_value_format {
    type: yesno
    sql: ${TABLE}.strict_value_format ;;
  }

  dimension: suggest_dimension {
    type: string
    sql: ${TABLE}.suggest_dimension ;;
  }

  dimension: suggest_explore {
    type: string
    sql: ${TABLE}.suggest_explore ;;
  }

  dimension: suggestable {
    type: yesno
    sql: ${TABLE}.suggestable ;;
  }

  dimension: suggestions {
    type: string
    sql: ${TABLE}.suggestions ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: time_interval {
    type: string
    sql: ${TABLE}.time_interval ;;
  }

  dimension: type_original {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: type {
    description: "Tells the data type of the field (but without dates)"
    sql: case when ${type_original} like '%date%' then 'Date' else ${type_original} end;;
  }

  dimension: user_attribute_filter_types {
    type: string
    sql: ${TABLE}.user_attribute_filter_types ;;
  }

  dimension: value_format {
    type: string
    sql: ${TABLE}.value_format ;;
  }

  dimension: view {
    type: string
    sql: ${TABLE}.view ;;
  }

  dimension: view_label {
    type: string
    sql: ${TABLE}.view_label ;;
  }

  dimension: week_start_day {
    type: string
    sql: ${TABLE}.week_start_day ;;
  }

  measure: number_of_explores {
    type: count_distinct
    sql: ${explore} ;;
    drill_fields: [explore, explore_description]
  }
}
