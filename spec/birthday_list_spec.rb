require 'birthday_list'

describe BirthdayList do
  it { is_expected.to respond_to :add }

# Add a friend's birthday
  it "adds a birthday" do
    expect(subject.add("Jess", "9th May 1994")).to eq [{name: "Jess", birthday: "9th May 1994"}]
  end

# Add two birthdays to list
  it "adds two birthdays" do
    subject.add("Jess", "9th May 1994")
    expect(subject.add("James", "13th Sept 1991")).to eq [{name: "Jess", birthday: "9th May 1994"}, {name: "James", birthday: "13th Sept 1991"}]
  end

  it "show all names and birthdays from list" do
    subject.add("Jess", "9th May 1994")
    subject.add("James", "13th Sept 1991")
    expect{subject.show}.to output("Jess: 9th May 1994\nJames: 13th Sept 1991\n").to_stdout
  end

  it "checks if today is someone's birthday" do
    subject.add("Jess", "9th May 1994")
    subject.add("James", "18th Sept 2019")
    expect{subject.check}.to output("Today is James' birthday.\n").to_stdout
  end
end
