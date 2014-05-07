name = 'chenllos'
# puts 会有默认的换行
puts name


# 定义function
def adder(a,b)
  puts a+b
end


adder(2, 4)
# 20minutes.rb:7:in `+':
# String can't be coerced into Fixnum (TypeError)
# adder(2, 'foo')


# Math函数库
# 9.0 not 9, float number
puts Math.sqrt(81)
square = 4**2
puts square


# double quotation will regard #{var} as "get value"
# single quotation won't
def greet(name)
  puts "Hello, #{name}"
end
greet('chenllos')
# 20minutes.rb:24:in `greet':
# wrong number of arguments (0 for 1) (ArgumentError)
# greet()


# default arguments
def greet2( name="john due" )
  puts "Hello, #{name.capitalize}"
end
greet2()


# string method, capitalize first letter
puts "china".capitalize
country = "china"
puts country.capitalize


# define class
class Greeter
  def initialize(name="john due")
    # 私有变量? 仅供内部方法访问
    @name = name
  end

  def sayHi
    puts "Hello, #{@name.capitalize}"
  end
  def sayBye
    puts "Bye, #{@name.capitalize}. Night~"
  end
end

gt = Greeter.new('Chenllos')
gt.sayHi()

# anonymous=nil
gt2 = Greeter.new()
gt2.sayBye()


# just like hasOwnProperty
puts Greeter.instance_methods(false)
# instance varible has property/method or not
puts gt.respond_to?("name")
puts gt.respond_to?("sayHi")
puts gt.respond_to?("sayBye")
puts gt.respond_to?("to_s")
# 此方法将对象转换为字符串，是任何对象都必备的默认方法
# 很像Java中的toString方法
# puts gt.to_s()


# access Class's property, re declear class main extend this class
# modify EXITS class!
class Greeter
  attr_accessor :name
end
# new instance after modify can have new method and property
gtt = Greeter.new('Aby')
puts gtt.respond_to?("name")
puts gtt.respond_to?("name=")
puts gtt.name = "Bill"