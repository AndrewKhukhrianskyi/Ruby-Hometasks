require_relative 'spec_helper'

browser = Selenium::WebDriver.for(:firefox)

RSpec.describe 'Active page elements' do
  main_pg = MainPage.new

  before(:all) do
    browser.get(MAIN_PAGE)
    main_pg.scroll_down(browser).click
  end


  after(:all) { browser.close }

  # Positive testing

  it 'verify that can not find unexisted info' do
    main_pg.enter_data(browser, INVALID_DATA)
    main_pg.submit_search(browser).click
    expect(main_pg.posts(browser).text) == 'Nothing Found'
  end

  it 'verify that can find existed info' do
    main_pg.search_field(browser).clear
    main_pg.enter_data(browser, VALID_DATA)
    main_pg.submit_search(browser).click
    expect(main_pg.posts(browser).text) == 'Search Results for: ' + VALID_DATA
  end

  it 'verify that user can read existed data' do
    main_pg.posts(browser).click
    expect(main_pg.url_include?(browser, VALID_DATA))
  end

  

end
