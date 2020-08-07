require 'pry'
require_all 'models'
# require_relative 'models/instructor'
# require_relative 'models/student'
# require_relative 'models/boatingtest'



puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Kr.Krab")
kim = Instructor.new("Ms.Kim")
kevin = Instructor.new("Mr.Chang")
sylwia = Instructor.new("Ms.Sylwia")


spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
cooper = Student.new("Cooper")
leo = Student.new("Leo")
gq = Student.new("GQ")


no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)
breaking_on_time = cooper.add_boating_test("Breaking Saves Lives", "passed", kevin)
breaking_gently = leo.add_boating_test("Breaking Saves Lives Yes", "passed", kevin)
breaking_eventually = leo.add_boating_test("Breaking is Important", "failed", kim)
handling_the_wheel = gq.add_boating_test("Watch the Corner 101", "pending", sylwia)


allstudents = kevin.all_students()

binding.pry()
0
