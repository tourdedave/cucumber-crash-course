Capybara.default_driver = :selenium
if Capybara.current_driver == :selenium
  require 'headless'
  headless = Headless.new
  headless.start
end
