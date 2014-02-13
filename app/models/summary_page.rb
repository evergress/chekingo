class SummaryPage < ActiveRecord::Base
  # attr_accessible :title, :body
  scope :soy, where(soy: true)
  scope :peanuts, where(peanuts: true)
  scope :milk, where(milk: true)
  scope :wheat, where(wheat: true)
  scope :nuts, where(nuts: true)
  scope :eggs, where(eggs: true)
  scope :asthma, where(asthma: true)

  def self.allergies(allergy)
  	allergy.attributes.each do |key, value|
  		@allergies = []
	  		if value == true
	  			@allergies << key
	  		else
	  			next
	  		end
  	end
  end


end
