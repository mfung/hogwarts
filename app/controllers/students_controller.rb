class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  def show
    @student = Student.find(params[:id])
  end
  def new
    @student = Student.new
    #student = Student.create
    #house << student
    #redirect to 'idnex'
  end
  def create
    @student = Student.new(params[:student])
    if @student.save
      redirect_to students_url
    else
      render :new
    end
  end
end