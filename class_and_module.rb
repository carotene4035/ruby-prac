# 配列インスタンスの生成
ary = Array.new
p ary # => []


# オブジェクトがどのクラスに所属しているのか
# .class
ary = []
str = 'hello world'
p ary.class #=> Array
p str.class #=> String


# あるオブジェクトがあるクラスのインスタンスかどうか
# .instance_of?
ary = []
str = 'hello world'
p ary.instance_of?(Array)  #=> true
p str.instance_of?(String) #=> true
p ary.instance_of?(String) #=> false
p str.instance_of?(Array)  #=> false


# 継承関係をさかのぼってクラスに属するかどうか
# .is_a?
str = '1';
p str.is_a?(String) #=> true
p str.is_a?(Object) #=> true


# アクセスメソッドの定義
attr_reader :name # 参照のみ可能
attr_writer :name # 変更のみ可能
attr_accessor :name # 参照と変更両方可能


# インスタンスメソッドの中でsetterを呼び出す時、
# name = 'ruby'
# では普通にローカル変数定義になる
# なので、self.nameを使用する
class Test
  attr_accessor :name
  def test_name
    name = 'ruby' # ローカル変数への代入
    self.name     # name= メソッドの呼び出し
  end
end


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

# 注意：Rubyではサブクラスからスーパークラスのprivate methodを呼び出せる
#


# 特異クラス
# 　そのオブジェクトだけで利用できるメソッド
# （特異メソッド）を追加できる
str1 = 'ruby'
str2 = 'ruby'

class << str1
  def hello
    puts 'hello'
  end
end

str1.hello #=> hello
str2.hello #=> NoMethodError


# モジュール
#　インスタンスを持つことが出来ない
#　継承できない
