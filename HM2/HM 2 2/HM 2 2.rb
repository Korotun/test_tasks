class Dragon
    def initialize (name)
    @name = name
puts @name 
@happy = 6 #  настроение, радость 
@time =  6  #  жизни, время , запас еды
@eat = 6 #показатель голода, 
@asleep = 6 #показатель сна,
@water = 6 #показатель воды
@shit = 6 #показатель наполнения 
@clean = 6 #показатель чистоты
@c = Time.new
@z = 0
    puts 'Ленивец ' + @name + ' лениво родился.'
end

def workwork
@time = @time - ((@c / 40) * rand(2))
    @time =  @time + rand(3..5) + @z  #  жизни, время , запас еды
    @happy = @happy - 1
    @eat = @eat - 1
    @asleep = @asleep - 1 
    @water = @water - 1 
    @shit = @shit - 1
    @clean = @clean - 1
        puts 'Ленивец ' + @name + 'работает. запас еды:' + @time.to_s
        puts 'Ленивец  ' + @name + ' умер, потому что нет еды  ' if @time <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не кушал  ' if @eat <= 0 
        puts 'Ленивец  ' + @name + ' умер, от тоски  ' if @happy <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не спал  ' if @asleep <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не пил   ' if @water  <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не ходил в тоалет ' if @shit <= 0 
        puts 'Ленивец  ' + @name + ' умер, потомучто грязий    ' if @clean  <= 0 
        @c = Time.new
end
def feed # ест
        @eat = @eat - ((@c / 40) * rand(2))
    @time = @time - 1
    @happy = @happy - 1
    @eat = @eat + rand(3..5)
    @asleep = @asleep - 1 
    @water = @water - 1 
    @shit = @shit - 1
    @clean = @clean - 1
        puts 'Ленивец  ' + @name + ' ест, сытность:' + @eat.to_s
        puts 'Ленивец  ' + @name + ' умер, потому что нет еды  ' if @time <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не кушал  ' if @eat <= 0 
        puts 'Ленивец  ' + @name + ' умер, от тоски  ' if @happy <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не спал  ' if @asleep <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не пил   ' if @water  <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не ходил в тоалет ' if @shit <= 0 
        puts 'Ленивец  ' + @name + ' умер, потомучто грязий    ' if @clean  <= 0 
         @c = Time.new
end
def walk # гулять
        @happy = @happy - ((@c / 40) * rand(2))
    @time = @time - 1
    @happy = @happy + rand(3..5)
    @eat = @eat - 1
    @asleep = @asleep - 1 
    @water = @water - 1 
    @shit = @shit - 1
    @clean = @clean - 1
    puts 'Ленивец ' + @name + ' выгуливаете себя. радость: ' + @happy.to_s
        puts 'Ленивец  ' + @name + ' умер, потому что нет еды  ' if @time <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не кушал  ' if @eat <= 0 
        puts 'Ленивец  ' + @name + ' умер, от тоски  ' if @happy <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не спал  ' if @asleep <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не пил   ' if @water  <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не ходил в тоалет ' if @shit <= 0 
        puts 'Ленивец  ' + @name + ' умер, потомучто грязий    ' if @clean  <= 0 
         @c = Time.new
end
def sleep # спать
        @asleep = @asleep - ((@c / 40) * rand(2))
    @time = @time - 1
    @happy = @happy - 1
    @eat = @eat - 1
    @asleep = @asleep + rand(3..5)
    @water = @water - 1 
    @shit = @shit - 1
    @clean = @clean - 1
    puts 'Ленивец  ' + @name + ' спіт. показатель сна:' + @asleep.to_s + 'і радості:' + @happy.to_s   
        puts 'Ленивец  ' + @name + ' умер, потому что нет еды  ' if @time <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не кушал  ' if @eat <= 0 
        puts 'Ленивец  ' + @name + ' умер, от тоски  ' if @happy <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не спал  ' if @asleep <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не пил   ' if @water  <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не ходил в тоалет ' if @shit <= 0 
        puts 'Ленивец  ' + @name + ' умер, потомучто грязий    ' if @clean  <= 0 
 @c = Time.new
end
def drink # пьет
        @water = @water - ((@c / 40) * rand(2))
    @time = @time - 1
    @happy = @happy - 1
    @eat = @eat - 1
    @asleep = @asleep - 1 
    @water = @water + rand(3..5) 
    @shit = @shit - 1
    @clean = @clean - 1
        puts 'Ленивец  ' + @name + ' пьет, уровень воды:' + @water.to_s
        puts 'Ленивец  ' + @name + ' умер, потому что нет еды  ' if @time <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не кушал  ' if @eat <= 0 
        puts 'Ленивец  ' + @name + ' умер, от тоски  ' if @happy <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не спал  ' if @asleep <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не пил   ' if @water  <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не ходил в тоалет ' if @shit <= 0 
        puts 'Ленивец  ' + @name + ' умер, потомучто грязий    ' if @clean  <= 0 
         @c = Time.new
end
def shit # срет
        @shit = @shit - ((@c / 40) * rand(2))
    @time = @time - 1
    @happy = @happy - 1
    @eat = @eat - 1
    @asleep = @asleep - 1 
    @water = @water - 1 
    @shit = @shit + rand(3..5)
    @clean = @clean - 1
        puts 'Ленивец  ' + @name + ' в туалет, наполнения :' + @shit.to_s
        puts 'Ленивец  ' + @name + ' умер, потому что нет еды  ' if @time <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не кушал  ' if @eat <= 0 
        puts 'Ленивец  ' + @name + ' умер, от тоски  ' if @happy <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не спал  ' if @asleep <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не пил   ' if @water  <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не ходил в тоалет ' if @shit <= 0 
        puts 'Ленивец  ' + @name + ' умер, потомучто грязий    ' if @clean  <= 0 
         @c = Time.new
end
def clean # купатся
        @clean = @clean - ((@c / 40) * rand(2))
    @time = @time - 1
    @happy = @happy - 1
    @eat = @eat - 1
    @asleep = @asleep - 1 
    @water = @water - 1 
    @shit = @shit - 1
    @clean = @clean + rand(3..5)
        puts 'Ленивец  ' + @name + ' купаетя, показатель чистоты:' + @water.to_s
        puts 'Ленивец  ' + @name + ' умер, потому что нет еды  ' if @time <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не кушал  ' if @eat <= 0 
        puts 'Ленивец  ' + @name + ' умер, от тоски  ' if @happy <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не спал  ' if @asleep <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не пил   ' if @water  <= 0 
        puts 'Ленивец  ' + @name + ' умер, потому что не ходил в тоалет ' if @shit <= 0 
        puts 'Ленивец  ' + @name + ' умер, потомучто грязий    ' if @clean  <= 0 
         @c = Time.new
end
def help 
        puts 'запас еди:  '             + @time.to_s +          '  workwork'
        puts 'сит на:  '                + @eat.to_s   +         '  feed'
        puts 'рад на:  '                + @happy.to_s   +       '  walk'
        puts 'выспался на:  '           + @asleep.to_s   +      '  sleep'
        puts 'хочет пить на:  '         + @water.to_s   +       '  drink'
        puts 'хочет в тоалет на:  '     + @shit.to_s   +        '  shit'
        puts 'хочет купаться на:  '     + @clean.to_s   +       '  clean'
  end
end