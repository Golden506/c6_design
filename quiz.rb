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

#Depression Questions:

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

#Bipolar Questions

q8 = Question.new
q8.text("What are the symptoms of bipolar disorder?")
q8.ans("A: Extreme changes in mood over time","B: Paralysis","C: Seizures","D: Temporary blindness")
q8.cor(0)
a8 = q8.ask

q9 = Question.new
q9.text("Which of these is not a common treatment for bipolar disorder?")
q9.ans("A: Medication","B: Hospitalization","C: Hormone therapy","D: Counciling")
q9.cor(2)
a9 = q9.ask

q10 = Question.new
q10.text("Can bipolar disorder be cured permenantly?")
q10.ans("A: Yes","B: No")
q10.cor(1)
a10 = q10.ask

q11 = Question.new
q11.text("True or false: Individuals with bipolar disorder will rapidly switch between personalities.")
q11.ans("A: True","B: False")
q11.cor(1)
a11 = q11.ask

q12 = Question.new
q12.text("What could not be a cause of bipolar disorder?")
q12.ans("A: Genetic vulnerability","B: Biological traits","C: Perennial lobe trauma","D: Brain-chemical imbalance")
q12.cor(2)
a12 = q12.ask

#SAD questions

q13 = Question.new
q13.text("Which of these is suspected to be a cause of seasonal affective disorder?")
q13.ans("A: Reduced oxytocin levels","B: Damage to the frontal lobe","C: Reduced sunlight altering circadian rhythm","D: Reduced β-Endorphin levels")
q13.cor(2)
a13 = q13.ask

q14 = Question.new
q14.text("Which of these could be an effect of seasonal affective disorder?")
q14.ans("A: Social withdrawl","B: Increased productivity","C: Muscle atrophy","D: Seasonal allergies")
q14.cor(0)
a14 = q14.ask

q15 = Question.new
q15.text("How could seasonal affective disorder be treated?")
q15.ans("Vaccines","Light box","Staying in bed","Eating healthier")
q15.cor(1)
a15 = q15.ask

q16 = Question.new
q16.text("Are all people equally likely to be afflicted by seasonal affective disorder?")
q16.ans("A: Yes","B: No")
q16.cor(1)
a16 = q16.ask

q17 = Question.new
q17.text("Which of these factors is linked to the severity of seasonal affective disorder?")
q17.ans("Race","Hormonal index","Location")
q17.cor(2)
a17 = q17.ask
