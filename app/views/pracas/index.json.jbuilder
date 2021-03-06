json.array!(@pracas) do |praca|
  json.extract! praca, :id, :nome_equip_urbano, :tipo_equip_urbano, :endereco_equip_urbano, :codigo_logradouro, :lei_equip_urbano, :nome_bairro, :codigo_bairro, :nome_oficial_equip_urbano, :area, :perimetro, :latitude, :longitude
  json.url praca_url(praca, format: :json)
end
