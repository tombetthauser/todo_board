class Item

  def self.valid_date?(date_str)
        parts = date_str.split("-")
        return false if parts.length != 3
       
        year, month, day = parts.map(&:to_i)

        return false unless year > 999 && year < 10000
        return false unless month > 0 && month < 13
        return false unless day > 0 && day < 32

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