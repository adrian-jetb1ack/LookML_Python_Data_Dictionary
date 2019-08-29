- dashboard: data_dictionary
  title: Data Dictionary
  layout: newspaper
  elements:
  - title: Dimensions
    name: Dimensions
    model: leigha_data_dictionary
    explore: looker_data_dictionary
    type: looker_grid
    fields: [looker_data_dictionary.field_name, looker_data_dictionary.view_label,
      looker_data_dictionary.description, looker_data_dictionary.type, looker_data_dictionary.number_of_explores]
    filters:
      looker_data_dictionary.category: dimension
      looker_data_dictionary.hidden: 'No'
    sorts: [looker_data_dictionary.number_of_explores desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_labels:
      looker_data_dictionary.number_of_explores: "# of Explores"
    series_cell_visualizations:
      looker_data_dictionary.number_of_explores:
        is_active: false
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#ffffff"
    header_background_color: "#5B31C1"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Field Name: looker_data_dictionary.field_name
      Field Description: looker_data_dictionary.description
      Explore Name: looker_data_dictionary.explore
    row: 5
    col: 0
    width: 12
    height: 10
  - title: Measures
    name: Measures
    model: leigha_data_dictionary
    explore: looker_data_dictionary
    type: looker_grid
    fields: [looker_data_dictionary.field_name, looker_data_dictionary.view_label,
      looker_data_dictionary.description, looker_data_dictionary.type, looker_data_dictionary.number_of_explores]
    filters:
      looker_data_dictionary.category: measure
      looker_data_dictionary.hidden: 'No'
    sorts: [looker_data_dictionary.number_of_explores desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_labels:
      looker_data_dictionary.number_of_explores: "# of Explores"
    series_cell_visualizations:
      looker_data_dictionary.number_of_explores:
        is_active: false
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#ffffff"
    header_background_color: "#5B31C1"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Field Name: looker_data_dictionary.field_name
      Field Description: looker_data_dictionary.description
      Explore Name: looker_data_dictionary.explore
    row: 5
    col: 12
    width: 12
    height: 10
  - name: Welcome to the data dictionary!
    type: text
    title_text: Welcome to the data dictionary!
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: Dimensions, groupable fields
    body_text: 'for example:  **product name**, as in number of products purchased
      _grouped by_ **product name**'
    row: 2
    col: 0
    width: 12
    height: 3
  - name: ''
    type: text
    title_text: ''
    subtitle_text: Measures, aggregates
    body_text: 'for example:  **number of products ordered**,  as in the _total_ **number
      of products ordered** on a given day'
    row: 2
    col: 12
    width: 12
    height: 3
  filters:
  - name: Field Name
    title: Field Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: leigha_data_dictionary
    explore: looker_data_dictionary
    listens_to_filters: []
    field: looker_data_dictionary.field_name
  - name: Field Description
    title: Field Description
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: leigha_data_dictionary
    explore: looker_data_dictionary
    listens_to_filters: []
    field: looker_data_dictionary.description
  - name: Explore Name
    title: Explore Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: leigha_data_dictionary
    explore: looker_data_dictionary
    listens_to_filters: []
    field: looker_data_dictionary.explore
