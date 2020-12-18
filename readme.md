
# LeslieBarber_T1A3

# References
 the references that where used in the app’s development are for the gem that is included in the app https://ttytoolkit.org/https://github.com/piotrmurach/tty-prompt#ttyprompt- the first was used to get information about the gem and how to install it as a bundle. The second was used as a source to see what was possible to do with the gem in my code to make the app.# Link to Source Control repository https://github.com/lesliebarber/LeslieBarber_T1A3Above link for the source code on github.
 # Software Development plan 
 The app I have designed for a user is for University house which is a private members’ club in Melbourne University It is a booking app for 4 of the rooms that are available there.
 # Purpose 
 the purpose of the app is to provide a service that gives the opportunity to book the room for your enjoyment. It would provide a quick way for the user to give their details, including their name and a contact number so that they can see if they can book their group into one of the rooms. This would take pressure off the staff at University house because they could see the booking rather than always taking phone calls. The app will welcome the user to UniHouse give them options of which room they would like to book takes them through the process and then gives them the information before wishing them well and saying goodbye see you soon.Because University house can get quiet busy with events. This will help the staff to control the booking system. Currently, there can be some issues with bookings that haven’t been entered into a system causing conflict. With clients that turn up thinking they have a booking, but they have entered none into the system.The target audience the app is for is the office staff and the front of house staff at University house. And the clients who will see if they can book the rooms that are available.The target audience will use the app by entering their name, contact number, and then making a new booking by selecting one room it will then show the cost and their details with the booking. Then the user will be wished well and hope to see you soon and then exit out of the app after a period of 0.5 to give them a chance to see the exit message.
 # List of features
  The features in the app are rooms, cost and availability. These are all required for the user to book the rooms that they will occupy for their booking. As not every user will like the cost, and maybe the availability may not suit them. Loops for the app I used was a while loop so that while the statement is true, then we can proceed to the next step. If it is not, then there is an error message. Example when the user is entering their information for the booking, they have 4 opportunities to enter the correct information or they are told that they haven’t entered enough detail for a booking and returned to the start. So while the information is correct and true, the process will proceed. If no, then there is an error and we ask the user to start again.The variables used in the App Are the rooms Kara, Celadon, Regency and Victoria as regardless how they are booked they stay the same.All the values entered for the user @name @contact @booking are instance variables that are initialized and called on to provide information. There is also @room which is used for providing the room information and in the do loop. We also have local variables used for scope with our class, modules, and def. These are used as a declaration it is active until it reaches the intended outcome of the scope.
 # Develop an outline of the user interaction and experience for the application.
 # Your outline must include:
 - how the user will find out how to interact with / use each feature
 - how the user will interact with / use each feature
 - how errors will be handled by the application and displayed to the user The user will be provided with is readme document as well the members of the club will be provided the details of the app and help file so they can easily access the app to use it.The user will use all the features easily because of the menu provided giving them options at their fingertips. And an easy to follow step through the app to make the boking and then exit.The app provides support for the user if they don’t put in correct details for a booking. It returns them to the start again. This supports the user error because it stops them from entering nothing or incorrect information.
 # Help Documentations for the app
 For the user to be able to us the app They will need to acquire the gem TTY-Prompt if they don’t already have it installed.They can get the app through https://rubygems.org/gems/tty-prompt is ruby gems. If you wish to gain all the content us bundle in terminal to access the needed gem file.If you only want to use the prompt use the following command in terminal gem install tty-prompt. This will get the gem you need for the app.For more information on this gem for its use the author has all of this on git hub the link is as foolows.https://github.com/piotrmurach/tty-prompt#ttyprompt-# TestingFor testing, there were two tests done to see how the application runs.
 # The first 
 was after I wrote the initial loop in index.rb to see if it ran or there were errors.Because this is the loop that connects all the features, it was important to see if it was functional. I did before this added the classes and methods required to the app what it is now.
 # The second test. 
 The second test where run once the classes method was added. In hindsight, this was a mistake as it caused a blowout of error fixing. I have performed more test early to pick up errors as I wrote the app.The second text was again using Ruby Index.rb then seeing if the menu worked or failed.the app failed because of a few errors being Undefined method ‘display booking’ for [] array.view_room undefined local variable or method ‘rooms’ for main object undefined method availability for nil nil class (no method error)However after some help from Daniel and tracing back to the source the features of the app now function as they should.












