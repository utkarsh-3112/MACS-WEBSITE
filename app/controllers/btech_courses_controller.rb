class BtechCoursesController < ApplicationController
  def index
    @courses = Course.all
  end
end
