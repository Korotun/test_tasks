require 'sinatra'

$action_clicked = nil

# http://localhost:4567/set_action?action=99
get '/set_action' do
  $action_clicked = params['action']
  "Put this in your pipe & smoke it! Action clicked: #{$action_clicked}"
end

# http://localhost:4567/get_action
get '/get_action' do
  response = $action_clicked.to_s
  $action_clicked = nil
  response
end
