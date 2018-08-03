class Window    #定義視窗界面,將字串傳入此類別

    class << self
        
    
        end

        def defaultWindow(*msg,topmsg)
            toppmsgSize=topmsg.size
            len=30

            print "一"*((len+4)/2-(toppmsgSize/2))+"#{topmsg}"
            puts "一"*((len+4)/2-(toppmsgSize/2))
            puts " "

            for mesg in msg
                puts "      #{mesg} "
            end

            puts " "
            puts "一"*(len+4)
            
        end

        def statusWatching(creature)        #屬性訊息界面
            msg0="血量=  #{creature.hp}  魔力=  #{creature.mp}"
            msg1="攻擊力=  #{creature.atk}  防禦力=  #{creature.defs}"
            len=0
            if msg0.size>msg1.size
                len=msg0.size
            else
                len=msg1.size
            end

            print "一"*((len+4)/2-1)+"狀態"
            puts "一"*((len+4)/2-1)
            puts " "
            puts "      #{msg0}"
            puts "      #{msg1}"
            puts " "
            puts "一"*(len+4)

        end
        

        
    end
end
