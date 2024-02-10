daily_income = [
	{
		"dia": 1,
		"valor": 22174.1664
	},
	{
		"dia": 2,
		"valor": 24537.6698
	},
	{
		"dia": 3,
		"valor": 26139.6134
	},
	{
		"dia": 4,
		"valor": 0.0
	},
	{
		"dia": 5,
		"valor": 0.0
	},
	{
		"dia": 6,
		"valor": 26742.6612
	},
	{
		"dia": 7,
		"valor": 0.0
	},
	{
		"dia": 8,
		"valor": 42889.2258
	},
	{
		"dia": 9,
		"valor": 46251.174
	},
	{
		"dia": 10,
		"valor": 11191.4722
	},
	{
		"dia": 11,
		"valor": 0.0
	},
	{
		"dia": 12,
		"valor": 0.0
	},
	{
		"dia": 13,
		"valor": 3847.4823
	},
	{
		"dia": 14,
		"valor": 373.7838
	},
	{
		"dia": 15,
		"valor": 2659.7563
	},
	{
		"dia": 16,
		"valor": 48924.2448
	},
	{
		"dia": 17,
		"valor": 18419.2614
	},
	{
		"dia": 18,
		"valor": 0.0
	},
	{
		"dia": 19,
		"valor": 0.0
	},
	{
		"dia": 20,
		"valor": 35240.1826
	},
	{
		"dia": 21,
		"valor": 43829.1667
	},
	{
		"dia": 22,
		"valor": 18235.6852
	},
	{
		"dia": 23,
		"valor": 4355.0662
	},
	{
		"dia": 24,
		"valor": 13327.1025
	},
	{
		"dia": 25,
		"valor": 0.0
	},
	{
		"dia": 26,
		"valor": 0.0
	},
	{
		"dia": 27,
		"valor": 25681.8318
	},
	{
		"dia": 28,
		"valor": 1718.1221
	},
	{
		"dia": 29,
		"valor": 13220.495
	},
	{
		"dia": 30,
		"valor": 8414.61
	}
]

## este é um modo mais prático para usar no dia a dia de desenvolvimento em uma empresa
# def smallest_income(daily_income)
  # filtered_values = daily_income.reject { |day| day[:valor] == 0 }
  # ordered_array = filtered_values.sort_by { |day| day[:valor] }

  # ordered_array
# end

## este é um modo em que testa o nivel de lógica do programador
def smallest_income(daily_income)
  smallest_income = {}
  daily_income.each do |day|
    next if day[:valor] == 0

    smallest_income = day if smallest_income[:valor].nil?
    if smallest_income[:valor] > day[:valor]
      smallest_income = day
    end
  end

  smallest_income
end

puts "o dia com o menor valor de faturamento foi #{smallest_income(daily_income)}"

def higher_income_day(daily_income)
  ordered_array = daily_income.sort_by { |day| day[:valor] }
  ordered_array.last
end

puts "o dia com o maior valor de faturamento foi #{higher_income_day(daily_income)}"

def days_above_the_average(daily_income)
  daily_income_exclude_zeros = daily_income.reject { |day| day[:valor] == 0 }
  sum = 0
  daily_income_exclude_zeros.map { |day| sum += day[:valor] }

  average_income = sum / daily_income_exclude_zeros.length
  days_above_average = daily_income_exclude_zeros.select { |day| day[:valor] > average_income }

  return days_above_average.length
end

puts "#{days_above_the_average(daily_income)} dias ficaram a cima da media"