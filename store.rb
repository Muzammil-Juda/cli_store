require_relative "department"

class Store < Department
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
      puts "Visit any department:"
      puts "1. Newborn"
      puts "2. Girls"
      puts "3. Boys"
      puts "4. Women"
      puts "5. Men"
      puts "6. Home"
      puts "7. Exit"
      puts ""
      puts "Enter the number of your desired Department:"
      option = gets.chomp.to_i

      case option
      when 1
        new_born
      when 2
        girls
      when 3
        boys
      when 4
        women
      when 5
        men
      when 6
        home
      when 7
        exit
      else
        puts "Invalid option! Please try again."
      end
    end
  end

  private

  def new_born
    n_b = Store.new
    n_b.name = "Newborn"
    n_b.aisle = "I1"
    puts n_b.to_s
  end

  def girls
    grl = Store.new
    grl.name = "Girls"
    grl.aisle = "I2"
    puts grl.to_s
  end

  def boys
    boy = Store.new
    boy.name = "Boys"
    boy.aisle = "I3"
    puts boy.to_s
  end

  def women
    wmn = Store.new
    wmn.name = "Women"
    wmn.aisle = "I4"
    puts wmn.to_s
  end

  def men
    mn = Store.new
    mn.name = "Men"
    mn.aisle = "I5"
    puts mn.to_s
  end
  
  def home
    hme = Store.new
    hme.name = "Home"
    hme.aisle = "I6"
    puts hme.to_s
  end

  def exit
    pp "Thank you for visiting!"
  end

end
