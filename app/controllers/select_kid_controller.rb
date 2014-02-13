class SelectKidController < ApplicationController
  def index
  	@kids = Child.all
  	@count = @kids.count
  	@classes = ['Nursery', 'Children Church', 'Youth']
  end
end
