require_relative 'pet'
require 'html_maker'

class Game
  def create_pet
    @pet = Pet.new
    puts 'Ваш вихованець народився'
    print 'Виберіть для нього назву: '
    @pet.name = gets.chomp.to_s
    puts "#{@pet.name.capitalize} подобається це ім'я! 💚"
    html
  end

  def start_game
    create_pet
    help
    MakeHtml.new.open_in_browser

    while @pet.health != 0
      print "\nChoose command (to show info press `9`, than `Enter`): "
      decision = gets.chomp
      break if decision == '11'

      case decision
      when '1'
        x = rand(1..5)
        @pet.play if x == 1
        @pet.feed if x == 2
        @pet.sleep if x == 3
        @pet.heal if x == 4
        html
      when '2'
        @pet.feed
        html
      when '3'
        @pet.sleep
        html
      when '4'
        @pet.heal
        html
      when '5'
        @pet.play
        html
      when '6'
        @pet.playyy
        html
      when '7'
        @pet.sleep
        html
      when '8'
        @pet.heal
        html
      when '9'
        help
      when '10'
        help
      when ''
        @pet.watch
        html
      else
        puts 'Wrong action'
      end
    end
  end

  def help
    puts "\nWhat would you like to do with #{@pet.name.capitalize}:
      1 - РАНДОМНИЙ СЛУЧАЙ
      2 - Їсти
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
<p>   Що б ви хотіли зробити <br>
      1 - РАНДОМНИЙ СЛУЧАЙ<br>
      2 - Їсти<br>
      3 - Спати <br>
      4 - Лікуватися<br>
      5 - Грати<br>
      6 - Працювати<br>
      7 - Пити<br>
      8 - Купатися<br>
      9 - help<br>
      11 - Exit game </p>
</div>

      <p>Здоров'я: #{@pet.health} %</p>
      <p>Щастя: #{@pet.happiness} %</p>
      <p>Повнота: #{@pet.fullness} %</p>
      <p>Діяльність: #{@pet.activity} %</p>
      <p>Ви посміхаєтеся на: #{@pet.smile} %</p>

</div>

    <div style='margin-left: 3em; font-size: 1.5em'>
      <p>#{@pet.reaction}</p>
    </div>

    <div style='margin-left: 2em; font-size: 4em'>
      <p >   </p>
    </div>"

    MakeHtml.new.make_html(content, true, filename)
  end
end

Game.new.start_game