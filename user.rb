

# the user is the main class object which we need information from to enter into our bookings.

class User
    attr_accessor :booking, :name,
    attr_reader :contact_number,

    def initialize(name)
        @name = name
        @contact_number = contact_number
        @booking = nil
    end
end