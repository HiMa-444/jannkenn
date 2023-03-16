hund = ["グー","チョキ","パー"]
finger = ["上","右","下","左"]
loops = "on"
while loops == "on" do
puts "1:グー、2:チョキ、3:パー"
em_hunds = []
m_hund = "a"
while m_hund != 0 and m_hund != 1 and m_hund != 2 do
  m_hund = gets.to_i-1
end
em_hunds << m_hund
e_hund = rand(0..2)
em_hunds << e_hund
puts "自分:#{hund[m_hund]},相手: #{hund[e_hund]}"
if em_hunds == [0,1] or em_hunds == [1,2] or em_hunds == [2,0]
  puts "指の向きを指定"
  puts "1:上、2:右、3:下、4:左"
  m_finger = "a"
  while m_finger != 0 and m_finger != 1 and m_finger != 2 and m_finger != 3 do
    m_finger = gets.to_i-1
  end
  e_finger = rand(0..3)
  puts "自分:#{finger[m_finger]},相手:#{finger[e_finger]}"
  if m_finger == e_finger
    puts "勝ち"
    loops = "off"
  else
    puts "残念"
  end
elsif em_hunds ==[0,2] or em_hunds == [1,0] or em_hunds == [2,1]
  puts "顔の向きを指定"
  puts "1:上、2:右、3:下、4:左"
  m_finger = gets.to_i-1
  e_finger = rand(0..3)
  puts "自分:#{finger[m_finger]},相手:#{finger[e_finger]}"
  if m_finger == e_finger
    puts "負け"
  else
    puts "セーフ"
  end
else
  puts "引き分け"
end
end