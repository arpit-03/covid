class Ind1 < ApplicationRecord


def self.checkpre(name)
if(!Ind1.find_by(name: name))
	return 0
else
	return (Ind1.find_by(name: name).tcci)
end
end

def self.dataextract(name)
return [["Indian National Confirmed Cases",Ind1.find_by(name: name).tcci],["Cured",Ind1.find_by(name: name).cured],["Deaths",Ind1.find_by(name: name).death]]
end
end
