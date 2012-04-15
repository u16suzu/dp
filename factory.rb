# ファクトリパタン オブジェクトを生成する。


class Factory
  def create(type)
    case type
    when "String"
      return String.new
    when "Array"
      return Array.new
    when "Hash"
      return Hash.new
    else
      return nul
    end
  end
end

p Factory.new.create "String"
p Factory.new.create "Hash"
