class Item

  def self.valid_date?(date)
    strs_array = date.split("-")
    return false if strs_array.length != 3

    year = strs_array[0]
    month = strs_array[1]
    day = strs_array[2]

    return false if year < 1000 || 

    ints_array = date.split("-").map(&:to_i)
    true
  end

  def initialize()

  end

end

p Item.valid_date?('2019-10-25') # true
p Item.valid_date?('1912-06-23') # true
p Item.valid_date?('2018-13-20') # false
p Item.valid_date?('2018-12-32') # false
p Item.valid_date?('10-25-2019') # false