module Api
	module V1
		class HomeController < ApplicationController
	skip_before_action :verify_authenticity_token
	def sendcitydata
		city_name=Ind1.find_by(name:params[:name])
		puts params[:name]
		data=[
			name:city_name.name,
			tcci: city_name.tcci,
			tccf: city_name.tccf,
			cured: city_name.cured,
			death: city_name.death
		]
return render json: data
	end
		end
	end
end