class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :activate]

  def index
    @students = Student.all
  end

  def show
  end


  def activate
      @student.active = !@student.active
         @student.save
         redirect_to student_path(@student)
  end

  private

    def find_student
      @student = Student.find(params[:id])
    end
end
