class BirthdayList
  DATE_FORMAT = '%m-%d'
# Initialize instance variable @list and declare as an empty array, as we'll push name and birthday as a hash into it
  def initialize
    @list = []
  end
# Pass name and birthday as an argument and push each name & birthday into a hash, into the list array.
  def add(name, birthday)
    @list << {name: name, birthday: birthday}
  end

  def show
    @list.each do |bday|
      puts "#{bday[:name]}: #{bday[:birthday]}"
    end
  end

  def check
    @list.each do |bday|
# Need to create today?(bday) method
      puts "Today is #{[:name]}'s birthday." if today?(bday)
    end
  end

# Method to see if their birthday matches with today's date.
  def today?(bday)
    birthday_date(bday) == today
  end

# Define the birthday date into a readable date format, to be called in the today? method.
  def birthday_date(bday)
# Date.parse creates date object
# .strftime formats dates according to format given in DATE_FORMAT (see top)
    Date.parse(bday[:birthday]).strftime(DATE_FORMAT)
    # *****NEED TO REQUIRE DATE FROM ANOTHER FILE**** 
  end

# Define today's date in a method - need to know today's date for today? method.
  def today
    Time.now.strftime(DATE_FORMAT)
  end

end
