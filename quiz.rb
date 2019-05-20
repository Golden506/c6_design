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

puts "The Health Knowledge Diagnostic (HKD) is an exam created to combat the health education problem in America. The test consists of multiple choice and yes/no questions. At its current status, the HKDT focuses on the topic of depression and mood disorders. Input either A, B, C, or D, depending on which options are available and which options you think are correct.\n"
puts ""
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

q8 = Question.new
q8.text("Can depression be treated?")
q8.ans("A: Yes", "B: No")
q8.cor(0)
a8 = q8.ask

#Bipolar Questions
=begin
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
=end

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
q15.ans("A: Vaccines","B: Light box","C: Staying in bed","D: Eating healthier")
q15.cor(1)
a15 = q15.ask

q16 = Question.new
q16.text("Are all people equally likely to be afflicted by seasonal affective disorder?")
q16.ans("A: Yes","B: No")
q16.cor(1)
a16 = q16.ask

q17 = Question.new
q17.text("Which of these factors is linked to the severity of seasonal affective disorder?")
q17.ans("A: Race","B: Hormonal index","C: Location")
q17.cor(2)
a17 = q17.ask

File.open("results.md", "w+") do |file|
    file.puts("## What **you** need to know.")
    file.puts("This article has been automatically generated and tailored to your needs based off of the results of the HKD you just took.")
    depression = [a1, a2, a3, a4, a5, a6, a7, a8]
    temp = depression.count(true)
    unless temp > 7
        file.puts("### Depression")
        unless a1
            file.puts("[Studies](https://www.healio.com/psychiatry/depression/news/online/%7B133607cf-45bc-40a2-89af-80a80a4d29e3%7D/family-history-of-depression-doubles-risk-for-depression) have shown that the biological family of an individual affects that individual’s risk of being afflicted by depression - children and grandchildren of people with depression are more likely to be afflicted by it.(One [study](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3693404/#bib5) found the heritability rate to be around 40%, and [another](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3919201/) estimated it at 37%.)")
        end
        unless a2 && a7
            file.puts("\nDepression can have many different symptoms, the degree of which will vary on a case-by-case basis. However, there are many [common symptoms](https://www.webmd.com/depression/guide/depression-symptoms-causes#1) nearly everyone afflicted by major depressive disorder will have. Lethargy(tiredness and excessive fatigue.) is very common, as is anxiety, feeling worthless or guilty, suicidal thoughts, insomnia, weight change, and a loss of interest in previously enjoyed activities. While substance abuse or other issues may arise as a consequence of these symptoms, they are not typically considered symptoms of depression.")
        end
        unless a3
            file.puts("\nIt is a common myth that only women are affected by depression. Everyone can be affected, women are just [more likely to be](https://www.mayoclinic.org/diseases-conditions/depression/in-depth/depression/art-20047725). Differences in both the hormones and cultural expectations between men and women are believed to be a cause for this.")
        end
        unless a4
            file.puts("\nWhile the line between everyday sadness and clinical depression is blurry to be sure, it is generally agreed that there is a difference between the two. Feelings of sadness, worthlessness, or hopelessness lasting longer than two weeks may be a sign of depression. When you are just sad, you may be able to still find joy in some moments, but clinical depression usually affects every aspect of one’s life. The [DSM-5 Criteria](https://www.psycom.net/depression-definition-dsm-5-diagnostic-criteria/) can be used to help detect and diagnose depression.")
        end
        unless a5 && a6
            file.puts("\nDepression is caused by a myriad of factors both environmental and genetic. [Environmental causes](https://www.mentalhelp.net/articles/lifestyle-factors-and-environmental-causes-of-major-depression/) will vary greatly, but substance abuse, social isolation, grief or bereavement, lack of sleep, lack of exercise, and lack of a good diet are often cited causes.")
        end
        unless a8
            file.puts("\nDepression can be treated. There is a wide selection of treatment options, medication and talking with a therapist are the most effective. These two forms of treatment are accessible through a doctor and diagnosis. A common misconception about anti-depressants is that it turns you into an emotionless, braindead corpse. [You will see a change in depression, not your actual self.](https://www.webmd.com/depression/features/coping-with-side-effects-of-depression-treatment#1) Although the treatment process may take time, depending on the severity of the patient’s depression. ")
        end
    end
    sads = [a13, a14, a15, a16, a7]
    temp = sads.count(true)
    unless temp > 4
        file.puts("### Seasonal Affective Disorder")
        unless a13
            file.puts("\nThere are many [suspected reasons](https://www.mayoclinic.org/diseases-conditions/seasonal-affective-disorder/symptoms-causes/syc-20364651) why the change of the seasons brings on seasonal depression for some people. Unhealthy changes in one’s circadian rhythm due to the change in light levels is one such reason, as is a deficit in vitamin D. Changes in the body’s level of serotonin and melatonin may also be a cause.")
        end
        unless a14
           file.puts("\nThe [symptoms](https://www.mayoclinic.org/diseases-conditions/seasonal-affective-disorder/symptoms-causes/syc-20364651) of SAD are similar to that of major depressive disorder, with lethargy, loss of interest in previously enjoyed activities, insomnia, weight change and hopeless feelings being very common.")
        end
        unless a15
            file.puts("\nThere are many different [treatments](https://www.mayoclinic.org/diseases-conditions/seasonal-affective-disorder/diagnosis-treatment/drc-20364722) for seasonal depression. Using a light box every morning for 20 minutes or more can be markedly effective(without requiring any sort of prescription), as can brightening your living space and making an effort to get more sunlight each day. Medication, such as [vitamin D supplements](http://www.jlgh.org/Past-Issues/Volume-1---Issue-3/Vitamin-D-And-Mood-Disorders.aspx) or antidepressants may also help. Therapy, or simply connecting with friends and family, can provide some relief from symptoms.")
        end
        unless a16
           file.puts("\nSimilarly to major depressive disorder, women are [more likely to be affected](https://www.nimh.nih.gov/health/topics/seasonal-affective-disorder/index.shtml#part_152432) by SAD than men, although men can still be affected. ")
        end
        unless a17
            file.puts("\nThe experience of individuals with SAD will [vary based off of their location](https://online.regiscollege.edu/blog/seasonal-affective-disorder/) due to differences in temperature, available light, and weather. Those with winter depression are generally happier living close to the equator, and those with summer depression will be typically happier living far from it. Other factors based off of location(such as amount of precipitation) can also affect the severity of seasonal depression.")
        end
    end
end


=begin


puts "After analyzing the results of the test, we have several insights into areas which your knowledge is incomplete. Please read through the following facts, and consider checking the linked resources if you would like to learn more: "
puts "\n"

#Depression grading
if !a6 && !a1 && !a3
  puts "There are a lot of different things that go into why a given person is depressed. Enviornmental and genetic conditions are a large factor, and women are more likely to suffer from depression than men. Read more here: \nhttps://www.health.harvard.edu/mind-and-mood/what-causes-depression\nhttps://www.mentalhelp.net/articles/lifestyle-factors-and-environmental-causes-of-major-depression/"
  puts ""
elsif !a3
  puts "You should know that women are much more likely to be depressed than women. Read more here: \nhttps://www.mayoclinic.org/diseases-conditions/depression/in-depth/depression/art-20047725"
  puts ""
elsif !a1 || !a6
  puts "There are many factors that go into why someone could be depressed. Having close family diagnosed with depression raises the chances, although an individual still might not be afflicted."
  puts ""
end

unless a5
  "It's a common myth that depression is caused by either entirely genetic or entirely enviornmental factors, however depression can be caused by both. Read more on the enviormental causes of depression here: \nhttps://www.mentalhelp.net/articles/lifestyle-factors-and-environmental-causes-of-major-depression/"
  puts ""
end

unless a2 || a7
  puts "Depression can cause many negative effects. Lethargy, loss of interest, weight gain or loss, social isolation, and trouble sleeping are all common effects. Read more here: \nhttps://www.mentalhelp.net/articles/lifestyle-factors-and-environmental-causes-of-major-depression/"
  puts ""
end

#SAD grading
unless a17 || a16
    unless a13
        puts "There are a lot of different factors going into who gets SAD and why. These resources will walk you through the causes and risks of SAD: \nhttps://www.nimh.nih.gov/health/topics/seasonal-affective-disorder/index.shtml \nhttps://www.medicalnewstoday.com/articles/10306.php"
        puts ""
    else
        puts "You should know that different people are more or less likely to be affected by SAD, and will be affected in different ways. Women are four times more likely to be diagnosed with SAD than men, and there is significant variation in the severity of SAD based off of location. Individuals that live in places with little sunlight will likely have more severe symptoms, and will benefit even greater from a light box. The following URL has lots of information about the risk factors of SAD: \nhttps://www.nimh.nih.gov/health/topics/seasonal-affective-disorder/index.shtml"
        puts ""
    end
else
    unless a13
        puts "While scientists are not entirely sure what the precise cause of SAD is, it is suspected that the reduced sunlight levels can affect one's circadian rhythm, causing SAD. Altered serotonin and melatonin levels are also suspected to be a cause. Learn more here: \nhttps://www.mayoclinic.org/diseases-conditions/seasonal-affective-disorder/diagnosis-treatment/drc-20364722"
        puts ""
    end
end

unless a14
    puts "The effects of SAD usually manifest in the feelings and behavior of afflicted individuals, and not often in physical changes. Social withdrawl, alongside lethargy, persistent feelings of sadness, as well as weight change and difficulty concentrating are common effects of SAD. Learn more here: \nhttps://www.nimh.nih.gov/health/topics/seasonal-affective-disorder/index.shtml"
    puts ""
end
unless a15
    puts "While getting lots of sleep and eating healthily may bring some relief from symptoms, the use of a light box(which can simply be purchased with no prescription required) is a common treatment for the condition. Learn more about getting treatment here: \nhttps://www.mayoclinic.org/diseases-conditions/seasonal-affective-disorder/diagnosis-treatment/drc-20364722"
    puts ""
end

#Insights
puts ""

causes = [a1, a3, a5, a6, a13, a16, a17]
temp = causes.count(true)
unless temp > 4
    puts "We've noticed that you aren't very familiar with the causes of and the circumstances in which certain mood disorders develop.\n"
end

effects = [a2, a7, a14]
temp = effects.count(true)
unless temp > 1
    puts "We've noticed that you aren't very familar with the effects and symptoms of mood disorders.\n"
end

treatments = [a8, a15]
temp = treatments.count(true)
unless temp > 0
    puts "We've noticed that you aren't very familar with the treatment of mood disorders."
end

=end
