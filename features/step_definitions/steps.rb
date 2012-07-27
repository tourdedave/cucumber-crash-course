Given /^I am on "([^"]*)"$/ do |arg1|
  visit(arg1)
end

When /^I search for "([^"]*)"$/ do |arg1|
  @search_phrase = arg1
  within("#gbqfqw") do
    fill_in 'q', :with => @search_phrase
  end
  find("#gbqfb").click
end

Then /^I should see results containing the phrase$/ do
  page.should have_content(@search_phrase)
end
