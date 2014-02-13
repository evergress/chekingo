
class SummaryPageController < ApplicationController

  def index
  	@kids = AddKid.all

  	@selected_kids = Selected.all
  end

end
