require 'httparty'
#require 'faker'
require 'ffaker'
require 'pry'
require 'rspec'

$servidores = YAML.load_file('./features/environments/environments.yml')[ENV['ENV']]