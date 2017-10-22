module HelloModule

  Version = '1.0'

  def hello(name)
    puts "hello, #{name}."
    p self
  end

  module_function :hello

end

p HelloModule::Version
HelloModule::hello("Alice")

# includeすると以下のように使える
include HelloModule
p Version
hello("Alice")


