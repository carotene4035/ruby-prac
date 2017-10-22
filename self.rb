module Hoge
  def hello
    puts 'hello'
  end
end

class Fuga
  include Hoge
  def call_mod_method
    hello
  end
end

fuga = Fuga.new
fuga.call_mod_method

# Fuga.call_mod_method

