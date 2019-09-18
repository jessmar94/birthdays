class BirthdayList
# Initialize instance variable @list and declare as an empty array, as we'll push name and birthday as a hash into it
  def initialize
    @list = []
  end
# Pass name and birthday as an argument and push each name & birthday into a hash, into the list array. 
  def add(name, birthday)
    @list << {name: name, birthday: birthday}
  end
end
