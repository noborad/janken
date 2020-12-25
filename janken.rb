def janken
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"

    janken_menu = ["グー", "チョキ", "パー", "戦わない"]

    janken = gets.to_i
    enemy = rand(0..2)

    puts "ホイ!"

    puts "-------------------------"
    puts "あなた:#{janken_menu[janken]}を出しました"
    puts "相手:#{janken_menu[enemy]}を出しました"

    if janken == 3
        puts "またね！"

    elsif janken == enemy
        puts "-------------------------"
        puts "あいこで"
        return true

    elsif (janken == 0 && enemy == 1) || (janken == 1 && enemy == 2) || (janken == 2 && enemy == 0)
        vektor = ["上", "右", "下", "左"]
        puts "-------------------------"
        puts "あっち向いて〜"
        puts "0(上) 1(右) 2(下) 3(左)"
        hoi = gets.to_i
        enemy_hoi = rand(0..3)

        puts "-------------------------"
        puts "あなた:#{vektor[hoi]}"
        puts "相手:#{vektor[enemy_hoi]}"
        puts "ホイ！"

        if hoi == enemy_hoi
            puts "==============================="
            puts "お見事！あなたの勝ちです！"
            return false
        else
            return true
        end

    else
        vektor = ["上", "右", "下", "左"]
        puts "-------------------------"
        puts "あっち向いて〜"
        puts "0(上) 1(右) 2(下) 3(左)"
        hoi = gets.to_i
        enemy_hoi = rand(0..3)

        puts "-------------------------"
        puts "あなた:#{vektor[hoi]}"
        puts "相手:#{vektor[enemy_hoi]}"
        puts "ホイ！"

        if hoi == enemy_hoi
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts "残念！あなたの負けです！"
            return false
        else
            return true
        end
        
    end
end

next_game = true

while next_game
    next_game = janken
end