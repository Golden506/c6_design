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
            @@answers.each do |x|
              @@answers.delete(x) if x == nil
            end
            puts"#{@@answers}"
            input = gets.chomp
            input.downcase!
            @@poss = ["a","b","c","d"]
                if input == @@poss[@@correct_answer]
                    return true
                elsif input == "a" || input == "b" || input == "c" || input == "d"
                    return false
                else
                    puts "Unrecognized input."
                end
        end
    end
end
=begin
TEMPLATE:

q_ = Question.new
q_.text("_")
q_.ans("_","_","_","_")
q_.cor(_)
a_ = q_.ask

=end

q1 = Question.new
q1.text("If an individual's close family was diagnosed with clinical depression, would they be at greater risk of depression?")
q1.ans("A: No, their risk would be similar to everyone else.", "B: Yes, they would almost certainly be afflicted.", "C: Yes, but they might not be afflicted.", "D: No, they could not be affected.")
q1.cor(2)
a1 = q1.ask

q2 = Question.new
q2.text("Which of the following answers is the most common effect of depression?")
q2.ans("A: Inability to think clearly", "B: Lethargy and loss of interest", "C: Distrust of friends and family", "D: Habitual substance abuse")
q2.cor(1)
a2 = q2.ask

q3 = Question.new
q3.text("True or false: Men are more likely to be depressed than women.")
q3.ans("A: True","B: False")
q3.cor(1)
a3 = q3.ask

q4 = Question.new
q4.text("Is short term sadness/grief considered clinical depression?")
q4.ans("A: Yes","B: No")
q4.cor(1)
a4 = q4.ask

q5 = Question.new
q5.text("Can depression be influenced by environmental conditions?")
q5.ans("A: Yes","B: No")
q5.cor(0)
a5 = q5.ask

q6 = Question.new
q6.text("Which of these is not a possible cause of depression?")
q6.ans("A: Excess Vitamin D and/or vitamin E","B: Faulty mood regulation by the brain","C: Unhealthy diet")
q6.cor(0)
a6 = q6.ask

q7 = Question.new
q7.text("Which of these is not a common effect of depression?")
q7.ans("A: Excessive tiredness or insomnia","B: Suicidal thoughts","C: Weight gain/loss","D: Difficulty empathizing")
q7.cor(3)
a7 = q7.ask
