# Adding all gems to the main file
require 'rspec'
require 'pry'
require 'selenium-webdriver'

require_relative '../env/common_variables'
require_relative '../pages/main_page'

Dir[File.join(Dir.pwd, 'pages/**/*.rb')].each { |f| require f }
