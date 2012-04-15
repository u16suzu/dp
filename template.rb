# template pattern 親が流れをきめる。
# 具体的な処理は子で定義する。
# rubyではこんな感じ親で子が定義するメソッドを定義しなくてよい。

class Parent 
  # def method1 ; p "not dev"  end 
  # def method2 ; p "not dev"  end 
  # def method3 ; p "not dev"  end 

  def act
    method1 
    method2 
    method3 
  end
end

#Parent.new.act

class Child < Parent
  def method1 ; p "1st"  end 
  def method2 ; p "2nd"  end 
  def method3 ; p "3rd"  end 
  
end

Child.new.act
