module M
  def meth
    'meth'
  end
end


class C
  include M
end

c = C.new
p c.meth

# includeされたmoduleは仮想的なスーパークラスとして機能する

p C.ancestors
# 継承関連のあるクラスの一覧が見れる
# => [C, M, Object, Kernel, BasicObject]
p C.superclass
# => Object

