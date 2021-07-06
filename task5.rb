#1
def avg_mileage(cars)
	avg = 0
	
	cars.each do |car|
		avg += car[:mileage]
	end
	
	return avg / cars.length

end
#2
def avg_year(cars)
	avg = 0 
	
	cars.each do |car|
		avg += car[:year]
	end
	
	return avg / cars.length
end
#3
def avg_age(cars)
	avg = 0 
	
	cars.each do |car|
		avg += 2021 - car[:year]
	end
	
	return avg / cars.length
end
#4
def miles_per_year(cars)
    y = (Time.now).year
	avg = 0
    cars.each { |car| car[:mpy] = car[:mileage] / (y - car[:year]) }
	
	cars.each do |mpy|
		avg += mpy[:mpy]
	end
    return avg / cars.length
end
#5
def mid_miles(cars)
	mass = []
	
	cars.each do |car|
		mass.push(car[:mileage])
	end
	
	avg = mass.length / 2
	
	return mass.sort[avg - 1]
end
#6
def mid_years(cars)
	mass = []
	
	cars.each do |car|
		mass.push(car[:year])
	end
	
	avg = mass.length / 2
	
	return mass.sort[avg - 1]
end
#7
def mid_age(cars)
	mass = []
	
	cars.each do |car|
		mass.push(2021 - car[:year])
	end
	
	avg = mass.length / 2
	
	return mass.sort[avg - 1]
end
#8
def mid_miles_year(cars)
    y = (Time.now).year
	mass = []
    cars.each { |car| car[:mpy] = car[:mileage] / (y - car[:year]) }
	
	cars.each do |mpy|
		mass.push(mpy[:mpy])
	end
	
	avg = mass.length / 2
    return mass.sort[avg - 1]
end
#9
def common_color(cars)
	stat = {}
	mass = []
	save = 1
    cars.each do |car|
		c = car[:color]
		stat[c] = stat.has_key?(c) ? stat[c] + 1 : 1
	end
	
	stat.each_value{|val| val > save ? mass.push(stat.key(val)) : save = val}
	
	return mass
end
#10
def rare_color(cars)
	stat = {}
	mass = []
	save = 1
    cars.each do |car|
		c = car[:color]
		stat[c] = stat.has_key?(c) ? stat[c] + 1 : 1
	end
	
	stat.each do |res|
		sub_mass = res
		sub_mass[1] <= save ? mass.push(sub_mass[0]) : save += 1
	end
	
	return mass
end
cars = [
    {
        :year => 2020,
        "name" => "Skoda",
        "model" => "Karoq",
        :mileage => 10000,
        :color => "blue"
    },
    {
        :year => 2008,
        "name" => "Kia",
        "model" => "Ceed",
        :mileage => 16000,
        :color => "blue"
    },
    {
        :year => 2013,
        "name" => "Kia",
        "model" => "Soul",
        :mileage => 150000,
        :color => "white"
    },
    {
        :year => 1988,
        "name" => "Peugeot",
        "model" => "405",
        :mileage => 320000,
        :color => "blue"
    },
    {
        :year => 2017,
        "name" => "Nissan",
        "model" => "Quashkai",
        :mileage => 45000,
        :color => "violet"
    },
    {
        :year => 1972,
        "name" => "ВАЗ",
        "model" => "2103",
        :mileage => 480000,
        :color => "dark red"
    },
    {
        :year => 2002,
        "name" => "Nissan",
        "model" => "X-Trail",
        :mileage => 213000,
        :color => "green"
    }
]

