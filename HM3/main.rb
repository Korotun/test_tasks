require_relative 'pet'
require 'html_maker'

class Game
  def create_pet
    @pet = Pet.new
    puts 'Ваш вихованець народився'
    print 'Виберіть для нього імя: '
    @pet.name = gets.chomp.to_s
    puts "#{@pet.name.capitalize} подобається це ім'я! 💚"
    html
  end

  def start_game
    create_pet
    help
    MakeHtml.new.open_in_browser

    while @pet.health != 0
      print "\nChoose command (to show info press `10`, than `Enter`): "
      decision = gets.chomp
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

    MakeHtml.new.make_html(content, true, filename)
  end
end

Game.new.start_game
