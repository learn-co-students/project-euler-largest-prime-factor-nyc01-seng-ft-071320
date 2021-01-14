# Enter your procedural solution here!
def is_prime?(number)
    list = (2..(Math.sqrt(number))).to_a
    list.each do |i|
      return false if number % i == 0 
    end 
    true 
  end 

def largest_prime_factor(number)
    list = (2..((number))).to_a
  divisors = list.select{|i| is_prime?(i)}
  divisors.select{|i| number % i == 0 }.max
end