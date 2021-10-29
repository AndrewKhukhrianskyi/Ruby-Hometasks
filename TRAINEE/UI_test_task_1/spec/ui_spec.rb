# File, which helps add all gems to the current file
require_relative 'spec_helper'

# Driver initialize (In which browser we do execution tests)
browser = Selenium::WebDriver.for(:firefox)
wait = Selenium::WebDriver::Wait.new(:timeout => 10)



# Test execution process
RSpec.describe 'UI test on the main page' do
  main_pg = MainPage.new

  before(:all) do
    browser.get(MAIN_PAGE)
  end


  after(:all) { browser.close }
  context 'UI checking' do
    # list with all widgets
    list = [main_pg.banner(browser),
    main_pg.banner_text(browser),
    main_pg.banner_subtext(browser),
    main_pg.search_field(browser),
    main_pg.submit_search(browser),
    main_pg.posts(browser),
    main_pg.comments(browser),
    main_pg.archives(browser),
    main_pg.categories(browser),
    main_pg.meta(browser),
    main_pg.posts(browser),
    main_pg.entry_meta(browser),
    main_pg.entry_title(browser),
    main_pg.entry_data(browser),
    main_pg.footer(browser)]

    # Test
    xit 'verifies that all needed UI objects are displayed on the page' do
      list.each {|widget| widget.displayed? to be(true)}
    end
  end
end
