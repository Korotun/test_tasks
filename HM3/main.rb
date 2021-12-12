require 'uri'
require 'net/http'

require_relative 'pet'
require 'html_maker'

class Game
  attr_reader :html_reload_timeout

  def initialize(html_reload_timeout = 2000)
    @html_reload_timeout = html_reload_timeout
  end

  def create_pet
    @pet = Pet.new
    puts 'Ваш вихованець народився'
    print 'Виберіть для нього імя: '
    @pet.name = gets.chomp.to_s
    puts "#{@pet.name.capitalize} подобається це ім'я! 💚"
    html
  end

  def fetch_web_action
    action_url = 'http://localhost:4567/get_action'
    uri = URI(action_url)
    res = Net::HTTP.get_response(uri)

    if res.is_a?(Net::HTTPSuccess)
      puts "\n Action id: #{res.body}" unless res.body.empty?
      res.body
    else
      puts "\n Connection not established for Sinatra web server: #{res.inspect}"
      nil
    end
  end

  def start_game
    puts "INFO: To EXIT press CTRL+C"
    create_pet
    help
    MakeHtml.new.open_in_browser

    while @pet.health != 0
      print "\n check state ..."
      decision = fetch_web_action
      # print "\nChoose command (to show info press `10`, than `Enter`): "
      # decision = gets.chomp
      break if decision == '11'

      case decision
      when '1'
        x = rand(1..8)
        @pet.play if x == 1
        @pet.feed if x == 2
        @pet.sleep if x == 3
        @pet.heal if x == 4
        @pet.playyy if x == 5
        @pet.aaclean if x == 6
        @pet.aaaclean if x == 7
        html
      when '2'
        @pet.workwork
        html
      when '3'
        @pet.play
        html
      when '4'
        @pet.feed
        html
      when '5'
        @pet.sleep
        html
      when '6'
        @pet.heal
        html
      when '7'
        @pet.playyy
        html
      when '8'
        @pet.aaclean
        html
      when '9'
        @pet.aaaclean
        html
      when '10'
        help
      when ''
        @pet.watch
        html
      else
        puts 'Неправильна дія'
      end

      sleep(0.5)
    end
  end

  def help
    puts "\nWhat would you like to do with #{@pet.name.capitalize}:
      1 - РАНДОМНИЙ СЛУЧАЙ
      2 - Працювати
      3 - Спати
      4 - Лікуватися
      5 - Грати
      6 - Працювати
      7 - Пити
      8 - Купатися
      9 - help
      11 - Exit game
      Press `Enter` to do nothing"
  end

  private

  def html(filename = 'index.html')
    content = "
    <div style='margin-left: 1em; font-size: xx-large'>
    <div style='margin-left: 3em; font-size: 0.5em'>
<p>   ЗАДАЧА ПРОЖИТИ БІЛЬШЕ 5 ДНІВ <br>
      Що б ви хотіли зробити <br>
      1 - РАНДОМНИЙ ВИПАДОК<br>
      2 - Працювати <br>
      3 - Грати <br>
      4 - Їсти <br>
      5 - Спати<br>
      6 - Лікуватися<br>
      7 - Пити<br>
      8 - Купатися<br>
      9 - Зробити недобре<br>
      10 - help<br>
      11 - Exit game </p>
</div>

<div style='display: flex; margin: 10px 0; padding: 10px 0;width: 150px; border: solid gold; justify-content: center;
    background-color: antiquewhite; border-radius: 17px;'>
  <button id='actionButton' onclick='onClick()' style='cursor: pointer;'>RANDOM action</button>
</div>

</div>
    <div style='margin-left: 3em; font-size: 1.2em'>
      <p>
показники:<br>
      2 запас їжі: #{@pet.health} %<br>
      3 настрій: #{@pet.happiness} %<br>
      4 голоду: #{@pet.eat} %<br>
      5 сну: #{@pet.asleep} %<br>
      6 здаров'я: #{@pet.activity} %<br>
      7 води: #{@pet.water} %<br>
      8 чистоти: #{@pet.clean} %<br>
      9 потреби: #{@pet.fullness} %<br>
</p>
</div>


    <div style='margin-left: 3em; font-size: 1.5em'>
      <p>#{@pet.reaction}</p>
    </div>

    <div style='margin-left: 2em; font-size: 3em'>
      <p >#{@pet.smile}</p>
    </div>"

    MakeHtml.new.make_html(content, true, filename, html_reload_timeout)
  end
end

Game.new(1900).start_game
