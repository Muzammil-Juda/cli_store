require_relative "department"

class Store
  def initialize
    @departments = []
  end

  def run
    loop do
      puts ""
      puts "*************************"
      puts "Welcome to the CLI Store!"
      puts "*************************"
      puts ""
      puts "1. View all departments"
      puts "2. Exit"
      puts ""
      puts "Choose an option:"
      option = gets.chomp.to_i

      case option
      when 1
        department
      when 2
        exit
      else
        puts "Invalid option! Please try again."
      end
    end
  end

 

  private

  def department
    new_born = Department.new("New Born", "I1")
    girls = Department.new("Girls", "I2")
    boys = Department.new("Boys", "I3")
    women = Department.new("Women", "I4")
    men = Department.new("Men", "I5")
    home = Department.new("Home", "I6")

    @departments.push(new_born, girls, boys, women, men, home)

    @departments.each do|department|
      pp department
    end
  end

  def exit
    pp "Thank you for visiting!"
  end

end
