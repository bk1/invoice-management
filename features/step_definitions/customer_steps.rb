Given(/^I am in the hompage$/) do
  visit root_path
end

Given(/^I create a new customer$/) do
   Customer.create
 end

 Then(/^I should have a new customer$/) do
  expect(Customer.count).to eq(1)
 end

Given(/^I create two customers with name "(.*?)"$/) do |arg1|
  @cust1 = Customer.create(long_name: arg1)
  @cust2 = Customer.new(long_name: arg1)
end

Then(/^I should get a validation error$/) do
  expect(@cust2).to be_invalid
end