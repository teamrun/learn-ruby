class MegaGreeter
  def initialize(name="John due")
    @name = name
  end

  attr_accessor :name

  def sayHi
    # 是否为nil
    if @name.nil?
      puts "..."
    # 不判断类型
    # 此方法并不关心变量的实际类型，这依赖于它所支持的那些被称为“Duck Typing” 的方法
    # “如果它走路像鸭子，那么也一定像鸭子一样呷呷地叫，那么它必定是一只鸭子”
    elsif @name.respond_to?("each")
      @name.each do |name|
        puts "Hello, #{name}."
      end
    else
      puts "Hello, #{name}."
    end
  end

  def sayBye
    if @name.nil?
      puts '...'
    elsif @name.respond_to?("join")
      puts "Bye, #{name.join(', ')}. Night, night..."
    else
      puts "Bye, #{name}. Night, night..."
    end
  end

end


puts "这段代码的文件名是: #{__FILE__}"

# $0 相当于 node里的 process.argv( fileIndex )
if __FILE__ == $0

  mg = MegaGreeter.new( 'chenllos' )
  mg.sayHi
  mg.sayBye

  anonymous = nil
  mg2 = MegaGreeter.new( anonymous )
  mg2.sayHi
  mg2.sayBye

  mg3 = MegaGreeter.new( ['Alice', 'Bill', 'Cindy'] );
  mg3.sayHi
  mg3.sayBye

end