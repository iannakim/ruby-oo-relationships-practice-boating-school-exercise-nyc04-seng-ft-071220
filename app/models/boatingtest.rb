require 'pry'

class BoatingTest

    @@all = []
    attr_accessor :student, :instructor, :test_name, :test_status


    def initialize(student, est_name, test_status, instructor)
        @student = student
        @test_name = test_name
        @test_status = test_status
        @instructor = instructor
        @@all << self
    end

    def self.all
        @@all
    end

end

# **NOTE**: Test status has three options only ("passed", "failed" and "pending")
