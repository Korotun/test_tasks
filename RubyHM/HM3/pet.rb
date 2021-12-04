class Pet
  attr_accessor  :health, :happiness, :fullness, :activity, :smile, :name, :reaction

  def initialize(health = 100, happiness = 99.9, fullness = 100, activity = 100, smile = 100, name = "ленівец", reaction = '')
    @health = health
    @happiness = happiness
    @fullness = fullness
    @activity = activity
    @name = name
    @reaction = reaction
    @smile = smile

  end

  def play
    @reaction = 'Смішно!) Це так смішно'
    @happiness.between?(0, 90) ? @happiness += rand(5..10) : @happiness = 100
    decrease_stat
    time_passed
  end

  def feed
    @reaction = 'ОмНомНом, так смачно'
    @fullness.between?(0, 90) ? @fullness += rand(5..10) : @fullness = 100
    increase_stat
    time_passed
  end

  def sleep
    @reaction = "ZZZZZZZ ... #{@name} прокидається і позіхає"
    @fullness > 10 ? @fullness -= rand(5..10) : @fullness = 0
    increase_stat
    time_passed
  end

  def heal
    @health = 100
    @happiness = 99.8
    @reaction = "#{@name} щасливий і здоровий знову, тож ви можете грати з ним"
    time_passed
  end

  def playyy
    @reaction = ' Смішно!) Це так смішно xa xa'
    @happiness += rand(5..10)
    decrease_stat
    time_passed
  end

  def watch
    time_passed
  end

  private

  def hungry?
    @fullness < 30
  end

  def happy?
    @happiness > 60
  end

  def healthy?
    @health > 50
  end

  def died?
    @health == 0
  end

  def wants_to_sleep?
    @activity < 30
  end

  def angry?
    @fullness < 30 && @happiness < 40
  end

  def wants_to_poop?
    @fullness >= 90
  end

  def decrease_stat
    @fullness > 20 ? @fullness -= rand(10..20) : @fullness = 0
    @activity > 20 ? @activity -= rand(10..20) : @activity = 0
    @health > 20 ? @health -= rand(10..20) : @health = 0
    @happiness > 20 ? @happiness -= rand(5..10) : @happiness = 10
  end

  def increase_stat
    @activity.between?(0, 90) ? @activity += rand(5..10) : @activity = 100
    @happiness.between?(0, 90) ? @happiness += rand(5..10) : @happiness = 1.1
    @health.between?(0, 90) ? @health += rand(5..10) : @health = 100
  end

  def time_passed
    @smile = rand(1..100)
    @reaction = 'Погане самопочуття, відвідайте лікаря' unless healthy?
    @reaction = 'Ваш вихованець какає на підлогу' if wants_to_poop?
    @reaction = 'Домашня тварина хоче спати!' if wants_to_sleep?
    @reaction = "#{@name.capitalize} умер" if died?
   end
end