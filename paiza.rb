# 体力を取得
# 攻撃回数に応じた攻撃力を割り出すくり返しの条件式
def calculate_hp
  hp = gets.to_i
  # 攻撃回数
  n = 0
  # それぞれの攻撃を配列に入れる
  paiza_attack = []
  monster_attack = [] 
  while hp > 0 do
    n + 1
    if n < 3
      paiza_attack << 1
      monster_attack << 1
      hp - monster_attack[n]
    else
      paiza_attack   << monster_attack[n - 1] + monster_attack[n - 2]
      monster_attack << paiza_attack[n - 1] * 2 + paiza_attack[n - 2]
      hp - ( paiza_attack[n - 1] * 2 + paiza_attack[n - 2] )
    end
  end
  puts n if hp < 0
end
calculate_hp