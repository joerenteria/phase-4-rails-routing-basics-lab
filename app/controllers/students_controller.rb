class StudentsController < ApplicationController
  def index
    out = Student.all
    render json: out
  end

  def grades
    out = Student.all.sort_by do |x|
      -x[:grade]
    end
    render json: out

  end
end
