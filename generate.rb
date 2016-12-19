def add
  `git add .`
end

def commit(msg)
  `git commit -m "#{msg}"`
end

def push
  `git push origin master`
end

def add_to_file(line, file)
  file.write(line)
  file.flush
end

def run(delay, input_filename, output_filename)
  output_file = File.open(output_filename, "w")
  input_file = File.read(input_filename)
  input_file.each_line do |line|
    add_to_file(line, output_file)
    add
    message = "Adds text: #{line[0..60]}"
    commit(message)
    push
    sleep delay
  end
end

delay = ARGV[0].to_i || 1
input_filename = '../commit-generator/source/the_tempest.txt'
output_filename = 'the_tempest.txt'

puts "Commiting #{input_filename} with a #{delay} second delay"
run(delay, input_filename, output_filename)
