

require 'tty-prompt'

HEADER_LINE = "__________________________________________________"
HEADER_LENGTH = HEADER_LINE.length





def back_main_menu
    puts "Press any keys to return to the main menu"
    $stdin.getch
    clear
    puts HEADER_LINE
    puts "loading" .upcase.center(HEADER_LENGTH)
    puts HEADER_LINE
    puts


    puts string[0, i].center(HEADER_LENGTH)
    sleep(0.5)

   
end



# def welcome(uni_house)
#     puts
#     puts HEADER_LINE
#     puts "Welcome to ".center(HEADER_LENGTH)
#     puts "#{uni_house.name} #uni_house!.center(HEADER_LENGTH)"
#     puts HEADER_LINE
#     puts
# end


def new_booking_header
    clear
    puts
    puts HEADER_LINE
    puts "Please create a new booking".upcase.center(HEADER_LENGTH)
    puts HEADER_LINE
    puts
end


def view_rooms_header
    clear
    puts
    puts HEADER_LINE
    puts
end

def room_name_header
    clear
    puts
    puts HEADER_LINE
    puts "#{room_name Room .upcase(HEADER_LENGTH)}"
    puts HEADER_LINE

end