require 'tty-prompt'
# frozen_string_literal: true

# this provides the information for the room.
class Room
    attr_reader :type, :price, :availability

    def initialize(type, name, price, availability)
        @type = type
        @name = name
        @price = price
        @availability = availability

   end

    # this will display the room and its price

    def display_room
        puts "Room Type: #{@type}"
        puts "Price: #{@price} per session"
    end

    # room availability
    def display_time_availablity
        puts
        puts 'Time_Availablity:'
        @availability.each { |day, session, status| puts "     * #{day} #{session}: #{status}" }
    
    end

    # details of the booking taking into account the availability of the room
    def
        select_day
        days_selected = []
        session_selected = []
        select_days_selection(days_selected, session_selected)
        return days_selected
    end

    def select_day_menu(days_menu)
        @availability.each do |day_session|
            if day_session != 'Available'
                days_menu.push({name: days_session.to_s, disabled: 'Booked Out'})

            else
        day_session.push(name: day_session.to_s)


            end
        end
    end

# Giving the user opportunity to book their room taking into account if the room is available

    def select__days_selection(days_selected, session_selected)
    TTY::Prompt.new.multi_select("Please select your day to book in:", days_session, cycle: true, marker: '>', echo: false, per_page: 7).each do |day|
        @availability[day.to_sym] = "Booked Out"
        days_selected.push(day)
    
    
        end
    end

end

class Kara < Room
    def initialize
        super("Executive Dining", ["Bigger group fine dining", "Drinks and canape", "Max 20 peoples"], 500,{Monday: "Available",Tuesday: "Available", Wednesday: "Available", Thursday: "Available",
            Friday: "Available", Saturday: "Booked Out", Sunday: "Booked Out"})

    end
end

class Regency < Room
    def initialize
        super("Perfect meeting room",["High tea", "intimate canapes and drinks", "business meeting", "Max 5 people"], 200,{Monday: "Available",Tuesday: "Available", Wednesday: "Available", Thursday: "Available", Friday: "Available", Saturday: "Booked Out", Sunday: "Booked Out"})

    end
end

class Celadon < Room
    def initialize
        super("Cosy", ["Perfect for intimate dining", "Private dining experience", "Drinks and canapes", "Max 6 people"], 200, {Monday:"Available",Tuesday:"Available", Wednesday:"Available", Thursday:"Available", Friday:"Available", Saturday:"Booked Out", Sunday: "Booked Out"})
    end
end

class Victoria < Room
    def initialize
        super("Cosy", ["Perfect for intimate dining", "Private dining experience", "Drinks and canapes", "Max 6 people"], 250, {Monday:"Available",Tuesday:"Available", Wednesday: "Available", Thursday: "Available" , Friday:"Available", Saturday:"Booked Out", Sunday: "Booked Out"})

    end
end


