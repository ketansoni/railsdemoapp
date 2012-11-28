Given /^I visit the order merchant site$/ do
  visit "http://limitless-ravine-8147.herokuapp.com"
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