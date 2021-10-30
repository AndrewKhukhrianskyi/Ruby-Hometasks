# File, which helps add all gems to the current file
require_relative 'spec_helper'

# Driver initialize (In which browser we do execution tests)
browser = Selenium::WebDriver.for(:chrome)




# Test execution process
RSpec.describe 'UI test on the main page' do
  main_pg = MainPage.new

  before(:all) do
    browser.get(MAIN_PAGE)
	browser.sleep(4000)
  end


  after(:all) { browser.close }
  context 'UI checking' do
	
    # Test
	it 'Verify that banner is displayed' do
		expect(main_pg.banner(browser).displayed?).to be(true)
	end
	
	it 'Verify that banner text is displayed' do
		expect(main_pg.banner_text(browser).displayed?).to be(true)
	end
	
	it 'Verify that banner subtext is displayed' do
		expect(main_pg.banner_subtext(browser).displayed?).to be(true)
	end
	
	it 'Verify that search field is displayed' do
		expect(main_pg.search_field(browser).displayed?).to be(true)
	end
	
	it 'Verify that submit search button is displayed' do
		expect(main_pg.submit_search(browser).displayed?).to be(true)
	end
	
	it 'Verify that posts bar is displayed' do
		expect(main_pg.posts(browser).displayed?).to be(true)
	end
	
	it 'Verify that comments bar is displayed' do
		expect(main_pg.comments(browser).displayed?).to be(true)
	end
	
	it 'Verify that archives bar is displayed' do
		expect(main_pg.archives(browser).displayed?).to be(true)
	end
	
	it 'Verify that categories bar is displayed' do
		expect(main_pg.categories(browser).displayed?).to be(true)
	end
	
	it 'Verify that meta bar is displayed' do
		expect(main_pg.meta(browser).displayed?).to be(true)
	end
	
	it 'Verify that comment date is displayed' do
		expect(main_pg.entry_meta(browser).displayed?).to be(true)
	end
	
	it 'Verify that comment title is displayed' do
		expect(main_pg.entry_title(browser).displayed?).to be(true)
	end
	
	it 'Verify that comment is displayed' do
		expect(main_pg.entry_data(browser).displayed?).to be(true)
	end
	
	it 'Verify that site info is on the bottom of the page is displayed' do
		expect(main_pg.footer(browser).displayed?).to be(true)
	end 
  end
end
