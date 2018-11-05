view: google_adwords_base {
  extension: required

  dimension: _date {
    hidden: yes
    type: date_raw
    sql: TO_DATE(${TABLE}.date) ;;
  }

  dimension: date_string {
    hidden: yes
    sql: TO_CHAR(${TABLE}.date) ;;
  }

  dimension: latest {
    hidden: yes
    type: yesno
    sql: 1=1 ;;
  }

  dimension: external_customer_id {
    hidden: yes
    sql: ${TABLE}.external_customer_id ;;
  }

  dimension: external_customer_id_string {
    hidden: yes
    sql: TO_CHAR(${TABLE}.external_customer_id) ;;
  }

}
