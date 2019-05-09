class User
  attr_accessor :first_name, :last_name, :email

  def initialize(attributes = {})
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @email = attributes[:email]
  end

  def full_name
    @full_name = "#{@first_name} #{@last_name}"
  end

  def formatted_email
    puts "#{@full_name} <#{@email}>"
  end

  def alphabetical_name
    @alphabetical_name = "#{@last_name}, #{@first_name}"
  end
end
