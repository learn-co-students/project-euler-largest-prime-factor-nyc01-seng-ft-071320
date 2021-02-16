# Enter your object-oriented solution here!
class LargestPrimeFactor

    def initialize(num)
        @num = num
    end

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

    def number 
        arr = self.get_factors(@num)
        answer = arr[0]
        arr.each do |v| 
            if self.get_factors(v) == [1]
                answer = v
            end
        end
        return answer
    end
end