bird = Bird.create!(name: "bird1")

5.times do |n|
  bird.records.create!(
    date: Date.new(2022, 1, 1) + n,
    meal_weight_g: 0,
    body_weight_g: 0,
    room_temperature_c: 0,
    weather: 0,
    note: ""
  )
end
