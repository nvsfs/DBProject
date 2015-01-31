class Praca < ActiveRecord::Base

	def self.search(query)
  		where("nome_equip_urbano like ? OR tipo_equip_urbano like ? OR nome_bairro like ?", "%#{query}%", "%#{query}%", "%#{query}%") 
	end

	def self.searchparque(query)
  		where("tipo_equip_urbano like ?", "%#{query}%") 
	end
	
end
