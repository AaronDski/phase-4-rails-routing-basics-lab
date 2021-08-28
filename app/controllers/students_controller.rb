class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        grade = Student.order(grade: :desc)
        render json: grade
    end

    def highest_grade
        high = Student.order(grade: :desc).first
        render json: high
    end
end
