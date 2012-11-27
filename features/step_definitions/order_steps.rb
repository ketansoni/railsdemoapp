Given /^I visit the website$/ do
  visit "http://limitless-ravine-8147.herokuapp.com"
end

When /^i place order$/ do
   fill_in("customer_name", :with => "John")
   fill_in("quantity", :with => "2")
   fill_in("address", :with => "Pune")
   select('Refrigerator',:from =>"item_id")   

    click_button("Place Order")
end

Then /^I should be redirected to the confirmation page of order and view status of order$/ do
  assert page.has_content?("New")
  assert page.has_content?("Order Placed Successfully!	")
end

