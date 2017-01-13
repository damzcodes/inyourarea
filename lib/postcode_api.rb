class PostcodeApi 
  def get_area_code_from_postcode(postcode)
    response = HTTPClient.new.get(URI.encode("https://id.38degrees.org.uk/api/area_zips/pcon_new?postcode=#{postcode}"))
    unless response.body.empty?
      JSON.parse(response.body, :symbolize_names => true)
    end
  end

  # def get_lat_lng_from_postcode(postcode)
  #   response = HTTPClient.new.get(URI.encode("https://id.38degrees.org.uk/api/area_zips/pcon_new/postcodes/postcode?postcode=#{postcode}"))
  #   unless response.body.empty?
  #     JSON.parse(response.body, :symbolize_names => true)
  #   end
  # end
end