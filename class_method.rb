# クラスメソッドの定義

# あとから定義
# その１ class << クラス名 ~ end
class HelloWorld
end

class << HelloWorld
  def hello(name)
    puts "#{name} said hello."
  end
end

HelloWorld.hello('john')
HelloWorld::hello('john')


# あとから定義
# その２ class << クラス名 ~ end
class HelloWorld
end

def HelloWorld.hello(name)
  puts '#{name} said hello.'
end

HelloWorld.hello('john')
HelloWorld::hello('john')


# まとめて定義
# その１ class << self ~ end
class HelloWorld
  class << self
    def hello(name)
      puts '#{name} said hello.'
    end
  end
end

HelloWorld.hello('john')
HelloWorld::hello('john')


# よくある定義
# self.method
class HelloWorld
  def self.hello(name)
    puts '#{name} said hello.'
  end
end

HelloWorld.hello('john')
HelloWorld::hello('john')


# クラス変数
# @@variable
# インスタンスで共有できる値


# アクセス修飾子
# public
#   メソッドをインスタンスメソッドとして使えるようにする
# private
#   メソッドをレシーバを指定して呼び出せないようにする
#   サブクラスからの呼び出しが可能（！）
#  (レシーバを省略した形式でしか呼べないため、インスタンスの外側から利用できなくなる）
# protected
#   メソッドを同一のクラスであれば、インスタンスメソッドとして使えるようにする
