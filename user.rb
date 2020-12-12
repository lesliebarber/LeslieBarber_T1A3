

# the user is the main class object which we need information from to enter into our bookings.

class User
    attr_accessor :booking, :name,
    attr_reader :contact,

    def initialize(name)
        @name = name
        @contact = contact
        @booking = nil
    end
end