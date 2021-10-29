class MainPage
  def banner(browser)
    browser.find_element(class: 'site-header')
  end

  def banner_text(browser)
    browser.find_element(class: 'site-title')
  end

  def banner_subtext(browser)
    browser.find_element(class: 'site-description')
  end

  def search_field(browser)
    browser.find_element(class: 'search-field')
  end

  def submit_search(browser)
    browser.find_element(class: 'search-submit')
  end

  def posts(browser)
    browser.find_element(id: 'recent-posts-2')
  end

  def comments(browser)
    browser.find_element(id: 'recent-comments-2')
  end

  def archives(browser)
    browser.find_element(id: 'archives-2')
  end

  def categories(browser)
    browser.find_element(id: 'categories-2')
  end

  def meta(browser)
    browser.find_element(id: 'meta-2')
  end

  def posts(browser)
    browser.find_element(class: 'page-title')
  end

  def entry_meta(browser)
    browser.find_element(class: 'entry-meta')
  end

  def entry_title(browser)
    browser.find_element(class: 'entry-title')
  end

  def entry_data(browser)
    browser.find_element(class: 'entry-content')
  end

  def footer(browser)
    browser.find_element(class: 'site-info')
  end

end
