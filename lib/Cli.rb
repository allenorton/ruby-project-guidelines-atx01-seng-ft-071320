require 'pry'
require 'tty-prompt'
class Cli

    attr_reader :journal_user

    def ascii_welcome
        File.readlines("ascii_welcome.txt") do |line|
          puts line
        end
    end

    def welcome_message
        puts "Welcome to Emoticreate!" 
        puts "Please tell me your name."
        user = gets.chomp

        find_name = User.find{|user| user.user_name.upcase == user.upcase}
        @journal_user = User.find_or_create_by(name: user)

        if find_name == true
            puts "\nWelcome back #{user}! Let's take some time to reflect on our day."
            puts "Let's do a breathing exercise."
                sleep (2.seconds)
            puts "Breathe in..."
                sleep(4.seconds)
            puts "Hold..."
                sleep(8.seconds)
            puts "Breathe out..."
                sleep(6.seconds)
        else
            puts "\nWelcome to Emoticreate, #{user}!"
            puts "Let's do a breathing exercise."
                sleep (2.seconds)
            puts "Breathe in..."
                sleep(4.seconds)
            puts "Hold..."
                sleep(8.seconds)
            puts "Breathe out..."
                sleep(6.seconds)
        end
binding.pry
    end
end