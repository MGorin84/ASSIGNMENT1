require "colorize"
require "artii"
require "tty-prompt"
prompt = TTY::Prompt.new

puts "Welcome to Build-a-Fluffy-Friend!".colorize(:red)
puts "Would you like to start with choosing a fluffy friend?"
prompt.select(" Please choose one you like most!", %w(Bear Bunny Unicorn))

a = Artii::Base.new
puts a.asciify('Art!')
