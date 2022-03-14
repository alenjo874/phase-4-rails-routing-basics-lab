class StudentsController < ApplicationController
    def index
        all_students = Student.all
        render json: all_students
    end

    def grades
        highest_grades =Student.all.order(:grade).reverse
        render json: highest_grades
    end

    def highest_grade
        best = Student.all.order(:grade).last
        render json: best
    end
end
