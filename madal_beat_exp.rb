define :guitar_madal_beat do |root|
  play chord(root, :major), release:1.5
  sleep 0.4
  play chord(root, :major), release:1.2
  sleep 0.28
  play chord(root, :major), release:0.05
  sleep 0.25
  2.times do
    play chord(root, :major), release:1.2
    sleep 0.25
  end
end

live_loop :guit do
  use_synth :pluck
  with_fx :reverb, amp:3 do
    2.times do
      guitar_madal_beat :E
    end
    guitar_madal_beat :A
    guitar_madal_beat :B
  end
end



