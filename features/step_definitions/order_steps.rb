require "taas"

Given /^I visit the order merchant site$/ do
  #visit path_to('new order page')
  visit "http://localhost:3000"
end

When /^I place an order$/ do
   fill_in("customer_name", :with => "John")
   fill_in("quantity", :with => "2")
   fill_in("address", :with => "Pune")
   select('Refrigerator',:from =>"item_id")

   click_button("Place Order")
end

Then /^order should get placed successfully$/ do
  assert page.has_content?("New")
  assert page.has_content?("Order Placed Successfully! ")
end

When /^merchant delivers the order$/ do
  client = Client::TaaSClient.new("http://localhost:4567/contract",10000)
  client.execute_contract({:contract_name => "deliver_order", :order_id => Order.all.last.id})
  visit current_url
  assert page.has_content?("Delivered")
end