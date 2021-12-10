class Pet
  attr_accessor :health, :happiness, :fullness, :activity, :asleep, :eat, :clean, :water, :smile, :name, :reaction

  def initialize(health = 100, happiness = 100, fullness = 100, activity = 100, asleep = 100, eat = 100, clean = 100, water = 100, smile = '🐣🇺🇦', name = 'ленівец', reaction = 'Ваш вихованець народився. Виберіть для нього назву:')
    @health = health #  жизни, время , запас еды
    @happiness = happiness #  настроение, радость
    @fullness = fullness # показатель нужди
    @activity = activity # показатель здаровье
    @asleep = asleep # показатель сна,
    @eat = eat # показатель голода,
    @clean = clean # показатель чистоты
    @water = water # показатель воды
    @name = name
    @reaction = reaction
    @smile = smile
  end

  def workwork
    @reaction = 'Тяко'
    @smile = '🦥'
    @health += 60
    decrease_stat
    time_passed
  end

  def play
    @reaction = 'Смішно!) Це так смішно'
    @smile = '👅'
    @happiness += 60
    decrease_stat
    time_passed
  end

  def feed
    @reaction = 'ОмНомНом, так смачно'
    @smile = '💪'
    @eat += 60
    decrease_stat
    time_passed
  end

  def sleep
    @reaction = "ZZZZZZZ ... #{@name} прокидається і позіхає"
    @smile = '🦉'
    @asleep += 60
    decrease_stat
    time_passed
  end

  def heal
    @reaction = "#{@name} щасливий і здоровий знову, тож ви можете грати з ним"
    @smile = '🍺'
    @activity += 60
    decrease_stat
    time_passed
  end

  def playyy
    @reaction = ' Хльоб Хльоб'
    @smile = '🍼'
    @water += 60
    decrease_stat
    time_passed
  end

  def aaclean
    @reaction = ' Хльоб Хльоб'
    @smile = '⛲'
    @clean += 60
    decrease_stat
    time_passed
  end

  def aaaclean
    @reaction = ' наделал'
    @smile = '🌋'
    @fullness += 60
    decrease_stat
    time_passed
  end

  def watch
    time_passed
    @smile = '👀'
  end

  private

  def died?
    @health <= 0 || @happiness <= 0 || @fullness <= 0 ||
      @activity <= 0 ||
      @asleep <= 0 ||
      @eat <= 0 ||
      @clean <= 0 ||
      @water <= 0
  end

  def decrease_stat
    @health -= 10
    @happiness -= 10
    @fullness -= 10
    @activity -= 10
    @asleep -= 10
    @eat -= 10
    @clean -= 10
    @water -= 10
  end

  def time_passed
    @reaction = "#{@name.capitalize} 🍗 🍳 ☠ умер" if died?
    @smile = '🍗 🍳 ☠' if died?
  end
end
