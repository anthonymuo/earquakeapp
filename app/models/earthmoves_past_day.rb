class EarthmovesPastDay < ApplicationRecord
	
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			EarthmovesPastDay.create! row.to_hash
		end

	end 
end
