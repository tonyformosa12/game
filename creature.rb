class Creature    #所有生物之基礎
    
    attr_accessor :hp,:mp,:atk,:defs,:name,:myClass



    def initialize(hp=100,mp=100,atk=20,defs=20,name="伊那喔")    #定義基礎數值
        @hp=hp
        @mp=mp
        @atk=atk
        @defs=defs
        @name=name
        @myClass={"劍士"=>0,"魔法師"=>1,"牧師"=>2}
    end

    def injured(damage)     #定義受傷害及扣血,之後將增加判定死亡之method
        @hp-=damage
        return @hp
    end

    def attack(another=0)
        result=(@atk+another)
        return result.to_i
    end
    
    def defense(another=0)
        result=(@defs+another)
        return result.to_i
    end

    def turnHeal()
        heal=@hp*0.1
        @hp+=heal.to_i
    end

end

class Human < Creature  #萬惡的人類

    attr_accessor :claseName

    def classChoose()
        msg="請選擇您的職業 (1)劍士 (2)魔法師 (3)牧師"
        Window.defaultWindow(msg)
        classNum=gets.chomp
        classNum=classNum.to_i
        case classNum
        when 1
            @claseName="劍士";    @atk=20;    @defs=50;    @hp=400;     @mp=100
        when 2
            @claseName="魔法師";    @atk=50;    @defs=20;   @hp=200;    @mp=400
        when 3
            @claseName="牧師";    @atk=30;    @defs=20;    @hp=350;    @mp=400;
        end
    end

    def equipmentUsing(atk=0,defs=0,hp=0,mp=0)
        @atk+=atk;    @defs+=defs;    @hp+=hp;    @mp+=mp
    end
end

class Monster < Creature
    
    attr_accessor :career

    def initialize()
        @career
        @name=@name+" 職階: "+@career
    end

end





