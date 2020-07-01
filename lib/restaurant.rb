
class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name         = name
    @dishes       = []
  end

  def closing_time(hours)
    (@opening_time.to_i + hours).to_s + ':00'
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    @opening_time <= '11:59'
  end

  def menu_dish_names
    cap_names = []
    @dishes.each do |dish|
      cap_names << dish.upcase
    end
    cap_names
  end

  def announce_closing_time(hours)
    close_time = closing_time(hours) + "AM"
    if closing_time(hours).to_i >= 12
      close_time = (closing_time(hours).to_i - 12).to_s +':00PM'
    end
    "#{@name} closes at #{@close_time}"
  end
end
