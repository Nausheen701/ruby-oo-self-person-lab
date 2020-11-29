# your code goes here
class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name_arg)
        @name = name_arg
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8
    end   

    def happiness
       # if @happiness > 10 
       #    @happiness = 10
       # elsif @happiness < 0
       #     @happiness = 0
      #  else
           # @happiness      
            @happiness = 0 if @happiness < 0
            @happiness = 10 if @happiness > 10
            @happiness   
    end

    def hygiene
        @hygiene = 0 if @hygiene  < 0
        @hygiene = 10 if @hygiene > 10
        @hygiene    
    end

    
    def happy?
        if @happiness > 7
            true
        else 
            false  
        end
    end

    def clean?
        if @hygiene > 7
            true
        else 
            false  
        end
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end
   

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
   
    def manage_happiness(friend, operator, num)
        [self, friend].each{|person| person.happiness = person.happiness.send(operator.to_sym, num)}
    end
    def call_friend(friend)
        manage_happiness(friend, "+", 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend,topic)
        if topic == "politics"
            manage_happiness(friend, "-", 2)
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            manage_happiness(friend, "+", 1)
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end

end