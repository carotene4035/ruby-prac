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




