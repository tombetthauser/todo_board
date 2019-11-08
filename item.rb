class Item

  attr_accessor :title, :deadline, :description

  def self.valid_date?(date_str)
        parts = date_str.split("-")
        return false if parts.length != 3
       
        year, month, day = parts.map(&:to_i)

        return false unless year > 999 && year < 10000
        return false unless month > 0 && month < 13
        return false unless day > 0 && day < 32

        true
    end

  def initialize(title, deadline, description)
    raise "INVALID DEADLINE" unless Item.valid_date?(deadline)

    @title = title
    @deadline = deadline
    @description = description
  end

end