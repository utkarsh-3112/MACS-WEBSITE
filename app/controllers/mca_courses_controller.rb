class McaCoursesController < ApplicationController
  def index
    @courses = Course.all
  end
end
