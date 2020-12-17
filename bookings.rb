requires_relative 'methods/headers'

# This is for the booking information
# frozen_string_literal: true
class Bookings
    attr_reader :days, :session

    def initialize(room, days, session)
        @room = room
        @days = days
        @session = session
    
    end

    # for the booking
    def display_bookings(user, unihouse)
        puts
        puts $HEADER_LINE
        puts "#{user.name.upcase} 'BOOKING".center($HEADER_LENGTH)
        puts $HEADER_LINE
        puts
        puts Unihouse.namw
        puts
        puts $HEADER_LINE
        puts
        puts "Room Type: #{@room.type}"
        @room.display_Room_type
        puts
        puts"Booking Days:"
        @days.each{|day| puts "     * #{day}"}
        puts
        @session.each{|time| puts "    * #{session}"}
        puts
        puts $HEADER_LINE

    end

    #booking cost
    def bookings_price 
        return @room.price.to_f @days.length
    
        end
    
    
    end




