

def generate_uuid
  arr = ('a'..'z').to_a + ('0'..'9').to_a

  uuid = ''
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += arr.sample}
    if index < 4
      uuid += '-' 
    else
      break
    end
  end
  uuid
end

p generate_uuid