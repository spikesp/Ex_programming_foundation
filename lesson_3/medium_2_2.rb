munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, detail|
  puts "#{name} is a #{detail["age"]} year old #{detail["gender"]}."
end

munsters.each_pair do |name, details|
  puts "#{name} is a #{details['age']} year old #{details['gender']}"
end