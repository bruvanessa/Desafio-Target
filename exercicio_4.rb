MONTHLY_INCOME = {
  sp: 67836.43,
  rj: 36678.66,
  mg: 29229.88,
  es: 27165.48,
  outros: 19849.53,
}.freeze

def percentil_by_estate
  total_month_income = MONTHLY_INCOME.sum { |key, value| value }
  percentil_by_estate = {}

  MONTHLY_INCOME.map { |key, value| percentil_by_estate[key] = (value*100)/total_month_income }

  percentil_by_estate
end

percentil_by_estate.map { |estate| puts "Estado: #{estate[0]} percentual de receita: #{format('%.2f', estate[1])}%\n" }