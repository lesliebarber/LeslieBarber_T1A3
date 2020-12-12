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
        menu.optionn('view price', 5)

        case selection
            

            #1 make a new booking
        when 1
            
        end
    end
end