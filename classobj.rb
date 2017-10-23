module ClassMethods
  def cmethod
    "class method"
  end
end

module InstanceMethod
  def imethod
    "instance method"
  end
end

class MyClass
  extend ClassMethods # クラスmethodを追加
  include InstanceMethod #インスタンスmethodを追加.これは納得
end

p MyClass.cmethod
p MyClass.new.imethod

