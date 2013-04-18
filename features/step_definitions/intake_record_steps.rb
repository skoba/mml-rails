Given(/^Daily intake data for person:$/) do |table|
  
end

When(/^I visit index page$/) do
  visit '/intakes'
end

Then(/^I get a view of intakes list$/) do
  page.should have_selector 'table'
end
