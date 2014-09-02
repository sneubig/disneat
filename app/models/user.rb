class User < ActiveRecord::Base
  def food_recommendations
  	Restaurant.all
  	if self.age > 20
  		Restaurant.all
  	else 
  		Restaurant.where(:serves_alcohol => false)
  	end
  end
end