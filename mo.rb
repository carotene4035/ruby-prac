module MyModule
  def hello
    puts 'hello'
  end
end

include MyModule
hello
# hello #=> undefined local variable or method `hello' for main:Object (NameError)
