require 'erb'

@keys = {}
def question_to_answer(placeholder)
  # parse placeholder. the portion before the colon is the key.
  key, description = placeholder.split(":")
  # if the key exists, return the stored answer
  # else, ask from the user and store it
  if @keys.include?(key)
    return @keys.fetch(key)
  else
    object_name = (key || description).strip
    puts "Please enter #{object_name}:"
    answer = STDIN.gets.chomp
    @keys[key] = answer
    return answer
  end
end

# expected format ruby madlibs.rb format1.txt
unless ARGV.size == 1 && test(?e, ARGV[0])
  puts "Usage: #{$PROGRAM_NAME} MADLIB_FILE"
  exit
end

# load format file
file = ARGV[0]
lines = []
File.readlines(file).each do |line|
  # convert brackets to ERB tags
  line.gsub!(/\(\((.+?)\)\)/, '<%= question_to_answer("\1") %>')
  lines << line
end

# run ERB
lines.each do |l|
  ERB.new(l).run
end

