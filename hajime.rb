=begin
2018年八月三日開始製作,作者為agSan
此類有遊戲開始時的各項流程
=end



class Hajime

    class << self
        def infoSan()
            puts "我是說明君"
        end

        def startToTatakae()
            puts "那麼,開始戰鬥吧"
        end

    end




    def defineName()
        count=0
        loop do
            puts "現在，請決定您的姓名: "
            @playerName=gets.chomp
            puts "您確定要使用這個名字嗎？\n(y)是\n(n)否"
            tf=gets.chomp
            if tf=='y'
                puts "="*10
                break
            end
            
            puts "您目前修改了#{count}次名字"
            count+=1
            puts "="*10
        end
    end
end
