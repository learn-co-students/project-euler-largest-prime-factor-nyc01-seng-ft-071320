# Enter your procedural solution here!
def get_factors(num) 
    count = 1
    arr = []
    while count <= Math.sqrt(num)
        if num % count == 0
            arr<<count
        end
        count += 1
    end
    return arr
end

def largest_prime_factor(num) 
    arr = get_factors(num)
    answer = arr[0]
    arr.each do |v| 
        if get_factors(v) == [1]
            answer = v
        end
    end
    return answer
end

#find all factors
#if factor is prime, add it to primes array
#return last element of primes array