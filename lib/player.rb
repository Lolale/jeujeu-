class Player
    attr_accessor :name, :life_points

    def initialize(name)
        @name = name
        @life_points = 10
    end

    #we show the health state of the player 
    def show_state
      puts "#{name} a #{life_points} points de vie!"
    end

    #how to make lose life point to the players
    def gets_damage(damage_onplayer)
        @life_points = @life_points - damage_onplayer

        if @life_points <= 0
        puts "#{self.name} is dead"
        else @life_points > 0
         puts "#{self.name} à #{life_points} points de vie"
        end
    end

    def attack(player_attack) 
        damage = compute_damage 
        puts "#{@name} inflige #{damage} de dégat a #{player_attack.name}"
       player_attack.gets_damage(damage)
    end

    def compute_damage
        return rand (1..6)
    end

end

Humanplayer < Player
attr_accessor :weapon_level

def initialize (name)
    @weapon_level = 1
    @life_points = 100