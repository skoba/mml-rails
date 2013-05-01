Given(/^Daily intake data for person:$/) do |intakes|
  intakes.hashes.each do |intake|
    Fabricate(:intake, intake)
  end
end

When(/^I visit index page$/) do
  visit '/intakes'
end

Then(/^I get a view of intakes list$/) do
  page.should have_content 'breakfast'
end
