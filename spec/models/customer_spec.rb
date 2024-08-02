require 'rails_helper'
RSpec.describe Customer, type: :model do
  subject { Customer.new(first_name: "Jack", last_name: "Smith", phone: "8889995678", email: "jsmith@sample.com" )}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a first_name" do
    subject.first_name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a last_name" do
    subject.last_name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a phone number"
  it "is not valid without an email"
  it "is not valid if the phone number is not 10 chars"
  it "is not valid if the phone number is not all digits"
  it "is not valid if the email address doesn't have a @"
  it "returns the correct full_name" do
    expect(subject.full_name).to eq("Jack Smith")
  end
end