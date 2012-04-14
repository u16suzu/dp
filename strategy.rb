class Stage
end

class Stage1 < Stage
  def act 
    p "stage1"
  end
end

class Stage2 < Stage
  def act
    p "stage2"
  end
end


class Strategy
  def act( type )
    s = Stage.new
    case type
    when 1
      s = Stage1.new
    when 2
      s = Stage2.new
    end

    s.act
  end
end

Strategy.new.act 2

class RubyStrategy
  def act( type )
    eval( "Stage" + type.to_s + ".new.act" )
  end
end

RubyStrategy.new.act 1




