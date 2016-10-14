def sign_in_and_play
  visit "/"
  fill_in "p1_name", :with => 'Mike'
  fill_in "p2_name", :with => 'Julio'
  click_button 'Enter Battle!!'
  visit "/play"
end

def attack_to_kill
  click_button("Attack!")
  click_button("RETURN TO THE FIGHT!")
end

def kill_player
  18.times do attack_to_kill end
  click_button("Attack!")
end
