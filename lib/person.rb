require "pry"
class Person
    attr_reader :name 
    attr_accessor :happiness, :hygiene
    attr_writer :bank_account
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8  
    end
    def bank_account
        @bank_account
    end
    def happiness=(num)
        @happiness = num 
        #binding.pry
        return  @happiness = 10 if @happiness > 10  
        return @happiness = 0 if @happiness < 1
    end 
    def hygiene=(num)
        @hygiene = num 
        #binding.pry
        return  @hygiene = 10 if @hygiene > 10  
        return @hygiene = 0 if @hygiene < 1
    end 
    def happy?
        return  @happiness > 7? true : false
    end
    def clean?
        return  @hygiene > 7? true : false
    end  
    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -=3
        self.happiness +=2
        return "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness +=3
        friend.happiness +=3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend,topic)
        if topic == "politics"
        friend.happiness -= 2
        self.happiness -= 2
        return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
        friend.happiness +=1
        self.happiness +=1 
        return "blah blah sun blah rain"  
        else
            return "blah blah blah blah blah" 
        end
    end
        
end

