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
end
