class System < ApplicationRecord
  belongs_to :empire
  has_and_belongs_to_many :improvements

  # response = HTTParty.get('https://www.edsm.net/api-v1/cube-systems?systemName=Sol')
  # puts response.length
end
