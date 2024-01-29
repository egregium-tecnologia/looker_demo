view: population_by_country {
  sql_table_name: `somosnuvem-lab-br.looker_world_bank_global_population.population_by_country` ;;

  dimension_group: _partitiondate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }
  dimension_group: _partitiontime {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }
  dimension: year_1960 {
    type: number
    sql: ${TABLE}.year_1960 ;;
  }
  dimension: year_1961 {
    type: number
    sql: ${TABLE}.year_1961 ;;
  }
  dimension: year_1962 {
    type: number
    sql: ${TABLE}.year_1962 ;;
  }
  dimension: year_1963 {
    type: number
    sql: ${TABLE}.year_1963 ;;
  }
  dimension: year_1964 {
    type: number
    sql: ${TABLE}.year_1964 ;;
  }
  dimension: year_1965 {
    type: number
    sql: ${TABLE}.year_1965 ;;
  }
  dimension: year_1966 {
    type: number
    sql: ${TABLE}.year_1966 ;;
  }
  dimension: year_1967 {
    type: number
    sql: ${TABLE}.year_1967 ;;
  }
  dimension: year_1968 {
    type: number
    sql: ${TABLE}.year_1968 ;;
  }
  dimension: year_1969 {
    type: number
    sql: ${TABLE}.year_1969 ;;
  }
  dimension: year_1970 {
    type: number
    sql: ${TABLE}.year_1970 ;;
  }
  dimension: year_1971 {
    type: number
    sql: ${TABLE}.year_1971 ;;
  }
  dimension: year_1972 {
    type: number
    sql: ${TABLE}.year_1972 ;;
  }
  dimension: year_1973 {
    type: number
    sql: ${TABLE}.year_1973 ;;
  }
  dimension: year_1974 {
    type: number
    sql: ${TABLE}.year_1974 ;;
  }
  dimension: year_1975 {
    type: number
    sql: ${TABLE}.year_1975 ;;
  }
  dimension: year_1976 {
    type: number
    sql: ${TABLE}.year_1976 ;;
  }
  dimension: year_1977 {
    type: number
    sql: ${TABLE}.year_1977 ;;
  }
  dimension: year_1978 {
    type: number
    sql: ${TABLE}.year_1978 ;;
  }
  dimension: year_1979 {
    type: number
    sql: ${TABLE}.year_1979 ;;
  }
  dimension: year_1980 {
    type: number
    sql: ${TABLE}.year_1980 ;;
  }
  dimension: year_1981 {
    type: number
    sql: ${TABLE}.year_1981 ;;
  }
  dimension: year_1982 {
    type: number
    sql: ${TABLE}.year_1982 ;;
  }
  dimension: year_1983 {
    type: number
    sql: ${TABLE}.year_1983 ;;
  }
  dimension: year_1984 {
    type: number
    sql: ${TABLE}.year_1984 ;;
  }
  dimension: year_1985 {
    type: number
    sql: ${TABLE}.year_1985 ;;
  }
  dimension: year_1986 {
    type: number
    sql: ${TABLE}.year_1986 ;;
  }
  dimension: year_1987 {
    type: number
    sql: ${TABLE}.year_1987 ;;
  }
  dimension: year_1988 {
    type: number
    sql: ${TABLE}.year_1988 ;;
  }
  dimension: year_1989 {
    type: number
    sql: ${TABLE}.year_1989 ;;
  }
  dimension: year_1990 {
    type: number
    sql: ${TABLE}.year_1990 ;;
  }
  dimension: year_1991 {
    type: number
    sql: ${TABLE}.year_1991 ;;
  }
  dimension: year_1992 {
    type: number
    sql: ${TABLE}.year_1992 ;;
  }
  dimension: year_1993 {
    type: number
    sql: ${TABLE}.year_1993 ;;
  }
  dimension: year_1994 {
    type: number
    sql: ${TABLE}.year_1994 ;;
  }
  dimension: year_1995 {
    type: number
    sql: ${TABLE}.year_1995 ;;
  }
  dimension: year_1996 {
    type: number
    sql: ${TABLE}.year_1996 ;;
  }
  dimension: year_1997 {
    type: number
    sql: ${TABLE}.year_1997 ;;
  }
  dimension: year_1998 {
    type: number
    sql: ${TABLE}.year_1998 ;;
  }
  dimension: year_1999 {
    type: number
    sql: ${TABLE}.year_1999 ;;
  }
  dimension: year_2000 {
    type: number
    sql: ${TABLE}.year_2000 ;;
  }
  dimension: year_2001 {
    type: number
    sql: ${TABLE}.year_2001 ;;
  }
  dimension: year_2002 {
    type: number
    sql: ${TABLE}.year_2002 ;;
  }
  dimension: year_2003 {
    type: number
    sql: ${TABLE}.year_2003 ;;
  }
  dimension: year_2004 {
    type: number
    sql: ${TABLE}.year_2004 ;;
  }
  dimension: year_2005 {
    type: number
    sql: ${TABLE}.year_2005 ;;
  }
  dimension: year_2006 {
    type: number
    sql: ${TABLE}.year_2006 ;;
  }
  dimension: year_2007 {
    type: number
    sql: ${TABLE}.year_2007 ;;
  }
  dimension: year_2008 {
    type: number
    sql: ${TABLE}.year_2008 ;;
  }
  dimension: year_2009 {
    type: number
    sql: ${TABLE}.year_2009 ;;
  }
  dimension: year_2010 {
    type: number
    sql: ${TABLE}.year_2010 ;;
  }
  dimension: year_2011 {
    type: number
    sql: ${TABLE}.year_2011 ;;
  }
  dimension: year_2012 {
    type: number
    sql: ${TABLE}.year_2012 ;;
  }
  dimension: year_2013 {
    type: number
    sql: ${TABLE}.year_2013 ;;
  }
  dimension: year_2014 {
    type: number
    sql: ${TABLE}.year_2014 ;;
  }
  dimension: year_2015 {
    type: number
    sql: ${TABLE}.year_2015 ;;
  }
  dimension: year_2016 {
    type: number
    sql: ${TABLE}.year_2016 ;;
  }
  dimension: year_2017 {
    type: number
    sql: ${TABLE}.year_2017 ;;
  }
  dimension: year_2018 {
    type: number
    sql: ${TABLE}.year_2018 ;;
  }
  dimension: year_2019 {
    type: number
    sql: ${TABLE}.year_2019 ;;
  }
  measure: count {
    type: count
  }
}
