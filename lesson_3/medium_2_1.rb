munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

male_age = 0
munsters.each do |name, detail|
  if detail["gender"] == 'male'
    male_age += detail["age"]
  end
end

p male_age
