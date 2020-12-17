require 'tty-prompt'

# this provides the information for the room.
class Room
    attr_reader :type, :price, :availability

    def initialize (type, price, availability)
        @type = type
        @price = price
        @availability = availability


    end

    #this will display the room and its price

    def display_room
        puts "Room Type: #{@type}"
        puts "Price: #{@price} per session"
    end

    #room availability
    def display_time_availablity
        puts
        puts "Time_Availablity:"
        @availability.each {|day,session, status| puts "     * #{day} #{session}: #{status}"}
    
    end

    # details of the booking taking into account the availability of the room
    def
        select_day
        days_ selected = []
        session_selected =[]
            select_days_selection(days_selected, session_selected)
            return days_selected

    end

    def select_day_menu(days_menu)
        @availability.each do |day_session|
            if day_session != "Available"
                days_menu.push({name: days_session.to_s, disabled: "Booked Out"})

            else
        day_session.push(name: day_session.to_s )


            end
        end
    end

#Giving the user opportunity to book their room taking into account if the room is available

def select__days_selection(days_selected, session_selected)
    TTY::Prompt.new.multi_select("Please select your day to book in:", days_session, cycle: true, marker: '>', echo: false, per_page: 7).each do |day|
        @availability[day.to_sym] = "Booked Out"
        days_selected.push(day)
    
    
        end
    end

end



