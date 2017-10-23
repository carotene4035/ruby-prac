module Edition
  def edition(n)
    p self
    "#{self} 第#{n}版"
  end

end

str = 'たのしいruby'

# moduleで定義された全てのmethodを得意methodとして利用する
# 使い所がいまいちわからんぞ
str.extend(Edition)

p str.edition(1);
