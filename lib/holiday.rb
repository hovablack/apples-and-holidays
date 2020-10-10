require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  
  holiday_hash[:winter].each do |attri, data|
    if attri == :christmass || :new_year
      data << supply
      
    end
    
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)

  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
 
end

def all_supplies_in_holidays(holiday_hash)
 holiday_hash.each do |season, holiday_supplies|
   puts "#{season.capitalize}:"
   holiday_supplies.each do |holiday, supply|
     holiday_name = holiday.to_s.split("_")
     holiday_name.each do |word|
       word.capitalize!
     end
     new_holiday = holiday_name.join(" ")
     puts "  #{new_holiday}: #{supply.join(", ")}"
   end
 end
 
end

def all_holidays_with_bbq(holiday_hash)
  arr = []
  holiday_hash.each do |season, holiday_name|
    holiday_name.each do |holiday, supply|
      if supply.include?("BBQ")
        arr << holiday
      end
    end
  end
  arr
end







