require 'rails_helper'

RSpec.describe Order, type: :model do
  subject { Order.new( product_name: "gears", product_count: 7, customer: FactoryBot.create(:customer))}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a product name" do
    subject.product_name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a product count" do
    subject.product_count=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without customer" do
    subject.customer = nil
    expect(subject).to_not be_valid
  end
  it "is not valid if the product count is not digits" do
    subject.product_count = "12r"
    expect(subject).to_not be_valid
  end
  it "is not valid if the product count is more then 1000" do
    subject.product_count= "1001" 
    expect(subject).to_not be_valid
  end
  it "is not valid if the product count is less then 1" do
    subject.product_count= "0" 
    expect(subject).to_not be_valid
  end
end
