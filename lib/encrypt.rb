require './lib/enigma'
require './lib/key'
require './lib/encryptionable'
require './lib/offset'

handle = File.open(ARGV[0], "r")
incoming_text = handle.read
handle.close

enigma = Enigma.new
encrypted_message = enigma.encrypt(incoming_text.strip)
puts "Created '#{ARGV[1]}' with the key #{encrypted_message[:key]} and date #{
encrypted_message[:date]}"

writer = File.open(ARGV[1], "w")
writer.write(encrypted_message)
writer.close

# enigma = Enigma.new
# file = File.open(ARGV[0], "r")
# message = file.read
#
# result = enigma.encrypt(message)
# new_file = File.open(ARGV[1], "w")
# new_file.write(result[:encryption])
# new_file.close
# puts "Created '#{ARGV[1]}' with the key #{result[:key]} and date #{result[:date]}"
