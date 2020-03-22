class Ind1 < ApplicationRecord
require 'csv'

def self.checkpre(name)
if(!Ind1.find_by(name: name))
	return 0
else
	return (Ind1.find_by(name: name).tcci+Ind1.find_by(name: name).tccf)
end
end

def self.dataextract(name)
return [["Indian National Confirmed Cases",Ind1.find_by(name: name).tcci],["Foreign National Confirmed Cases",Ind1.find_by(name: name).tccf],["Cured",Ind1.find_by(name: name).cured],["Deaths",Ind1.find_by(name: name).death]]
end
end
