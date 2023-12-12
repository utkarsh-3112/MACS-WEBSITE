class MtechCoursesController < ApplicationController
  def index
    @courses = Course.all
  end
end
