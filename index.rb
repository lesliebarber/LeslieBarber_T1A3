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


# create a venue with rooms to hire
Unihouse = unihouse.new.add_room(kara.new).add_room(regency.new).add_room(celadon.new).add_room(victoria.new).add_room(leather.new)

# Welcome message

welcome(Unihouse)

# Enter the users details

puts "please enter your name:"

# creating a user info loop to make sure the user adds input. Gives the user oppportunity to enter input 4 times will exit the loop if nothing is added

user_name_count = 0
while user_name_count < 4
    user_name = gets.chomp.capitalize

    if user_name !=""
        clear
        break

    else
        user_name_count +=1
        if user_name_count == 6
            clear
            puts "\n\n You must enter your name...."
            user_name = "No name for the booking"

        else
            puts "Please enter your name to make a booking"


        end
    end

end



# creating details for a new user

user = user.new(user_name)
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
                clear
                welcome(Unihouse)
                puts "\n\n You already have a booking. \n\n"

                #no booking as of yet
            else
                new_booking
                room = Unihouse.select_room
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
                user.booking = booking.new(room,booking day,booking time)

                # display the new booking for the user to review
                clear
                puts "Thank you for making a booking at Unihouse"
                user.booking.display_booking(user,Unihouse)
                back_main_menu
            end


            # existing booking
        when 2

            if user.booking

                clear
                user.booking.display_booking(user, unihouse)
                back_main_menu

            else
                #no booking
                clear
                welcome(Unihouse)
                puts "\n\n I'm sorry you don't have a booking yet"
            end

            # view different rooms
        when 3
            view_rooms
            room = Unihouse.select_room

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
                clear
                puts "Thank you #{user_name} "
                puts " We are looking forward to seeing you at Unihouse soon"
                puts "Have a great day"
                return
            end
        end
    end
    



           







        end
    end
end