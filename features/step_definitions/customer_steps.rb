Given(/^I am in the hompage$/) do
  visit root_path
end

Given(/^I create a new customer$/) do
   Customer.create
 end

 Then(/^I should have a new customer$/) do
  expect(Customer.count).to eq(1)
 end