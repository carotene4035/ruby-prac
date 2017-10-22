class Hoge
  public
  def pub_hello
    puts 'pub_hello'
  end

  private
  def pri_hello
    puts 'pri_hello'
  end

  protected
  def pro_hello
    puts 'pro_hello'
  end
end

class HogeExtend < Hoge
  public
  def ex_pub_hello
    pub_hello
    pri_hello
  end
end

# hoge = Hoge.new
# hoge.pub_hello
# hoge.pri_hello
# => NoMethodError
# hoge.pro_hello
# => NoMethodError

hogeex = HogeExtend.new
hogeex.ex_pub_hello
# hogeex.pri_hello
# => NoMethodError
# hogeex.pro_hello
# => NoMethodError

# クラス外から呼び出せるのは、
# publicメソッド
