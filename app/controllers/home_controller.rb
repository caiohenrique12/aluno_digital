class HomeController < ApplicationController
  def index
    @schools = School.return_info_school
  end
end
