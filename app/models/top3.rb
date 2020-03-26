class Top3 < ApplicationRecord
		require 'byebug'
	require 'pry'
	def self.initdat
t3=Content.limit(3).select(:id)
t3.each do |t|
Top3.create(post_id: t.id)
	end
	end


end
