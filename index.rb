#-----------------------------------------------------------------
#
#                       University House Room Bookings
#                           TERMINAL APP
#
#                       Crafted for you by Leslie Barber
#
#
# 12 December 2020
#-----------------------------------------------------------------

require 'tty-prompt'
require_relative './Unihouse'
require_relative './room'
require_relative './user'
require_relative './bookings'
require_relative './methods'



# create a venue with rooms to hire
UNI_HOUSE = Unihouse.new
UNI_HOUSE.add_room(Kara.new())
UNI_HOUSE.add_room(Regency.new())
UNI_HOUSE.add_room(Celadon.new())
UNI_HOUSE.add_room(Victoria.new())

# Welcome message
system "clear"
welcome(UNI_HOUSE)

# Enter the users details

puts "please enter your name:"

# creating a user info loop to make sure the user adds input. Gives the user oppportunity to enter input 4 times will exit the loop if nothing is added

user_name_count = 0
while user_name_count < 4
    user_name = gets.chomp.capitalize

    if user_name !=""
        system "clear"
        break

    else
        user_name_count +=1
        if user_name_count == 4
            system "clear"
            puts "\n\n You must enter your name...."
            user_name = "No name for the booking"

        else
            puts "Please enter your name to make a booking"


        end
    end

end



# creating details for a new user
puts "please enter your contact number"
contact_number = gets.chomp
user = User.new(user_name, contact_number)
puts "\n\n Hello #{user.name} "

# main menu options as a while loop
while true

    welcome (Unihouse)

    selection = TTY::Prompt.new.select("Greeting how can we help you today? Please choose from the following options:", cycle: true, marker: '>', echo: false) do |menu|
        menu.option('Make a new booking' , 1)
        menu.option('View an existing booking', 2)
        menu.option('view rooms' , 3)
        menu.option('view available times', 4)
        menu.option('exit' , 5)
       
        case selection
            

            #1 make a new booking

        when 1

            if user.booking
                system "clear"
                welcome(UNI_HOUSE)
                puts "\n\n You already have a booking. \n\n"

                #no booking as of yet
            else
                new_booking
                room = UNI_HOUSE.select_room
                # will display details of rooms, availablity giving options for the user to select date, time of day.


                new_booking
                room.show_room
                room.show_time
                booking_day = room.select_day

                while booking_day. length ==0
                    new_booking
                    puts"\n\n No selection has been made \n\n"
                    booking_day = room.select_day 
                end

                # create the booking
                user.booking = booking.new(name, contact_number,room,booking_day,booking_time)

                # display the new booking for the user to review
                system "clear"
                puts "Thank you for making a booking at Unihouse"
                user.booking.display_booking(user,UNI_HOUSE)
                back_main_menu
            end


            # existing booking
        when 2

            if user.booking

                system "clear"
                user.booking.display_booking(user, UNI_HOUSE)
                back_main_menu

            else
                #no booking
                system "clear"
                welcome(UNI_HOUSE)
                puts "\n\n I'm sorry you don't have a booking yet"
            end

            # view different rooms
        when 3
            view_rooms
            room = UNI_HOUSE.select_room

            #Show the different room selected
            room_name(room.type)
            room.display_room
            room.display_capacity
            back_maim_menu

        when 4

            #Show the time of day available
            room_name(room.availability)
            room.display_day_availabilty
            room.display_time_availablity
            room.display_price
            back_main_menu
            
        
        #quit
        
        when 5
            if user.booking
                system "clear"
                puts "Thank you #{user_name}"
                puts "We are looking forward to seeing"
                puts "Have a great day"
                return
            end
        end
    end
end





               
    
        
    







