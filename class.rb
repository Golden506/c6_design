class Question
    def text(s)
        @@question = s
    end
    def ans(a, b, c = nil, d = nil)
        @@answers = [a, b, c, d,]
    end
    def cor(x)
        #Note: This method takes a number. That number is the index of the correct answer.
        @@correct_answer = x
    end
    def ask
        while true do
            puts"#{@@question}"
            puts"#{@@answers}"
            input = gets.chomp
            input.downcase!
            @@poss = ["a","b","c","d"]
                if input == @@poss[@@correct_answer]
                    return true
                    break
                elsif input == "a" || input == "b" || input == "c" || input == "d"
                    return false
                    break
                else
                    puts "Unrecognized input."
                end
        end
    end
end

q1 = Question.new
q1.text("What is the answer to this test question?")
q1.ans("A: This one", "B: No, this one", "B: Wrong! This one.", "D: Not this one.")
q1.cor(0)
a1 = q1.ask
puts a1
