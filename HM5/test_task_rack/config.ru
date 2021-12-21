require './pet'
require 'erb'
require 'pry'

ACTIONS = %i[play feed sleep heal playyy aaclean aaaclean]

use Rack::Auth::Basic, 'Password required' do |_username, password|
  'secret' == password
end

# Create Pet
$pet = Pet.new
puts 'Ваш вихованець народився'
print 'Виберіть для нього імя: '
$pet.name = gets.chomp.to_s
puts "#{$pet.name.capitalize} подобається це ім'я! 💚"

# Initialize Rack application
class Application
  def call(env)
    action = env['REQUEST_PATH'] ? env['REQUEST_PATH'][1..-1].to_sym : nil

    if ACTIONS.include? action
      $pet.send(action)
    end

    status  = 200
    headers = { 'Content-Type' => 'text/html' }
    template = ERB.new(File.read('./template.html.erb'))
    body = [template.result(binding)]

    [status, headers, body]
  end
end

run Application.new
