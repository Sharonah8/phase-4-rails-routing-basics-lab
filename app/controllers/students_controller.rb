class StudentsController < ApplicationController

    def index
        students = Student.all 
        render JSON: students
    end

    def grades 
        students_grades = Student.order(grade: :desc)
        render JSON: students_grades
    end

    def highest 
        first_student = Student.order(grade: :desc).first
        render JSON: first_student
    end
end
