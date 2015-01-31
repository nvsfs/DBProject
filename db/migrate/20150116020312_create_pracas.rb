class CreatePracas < ActiveRecord::Migration
  def change
    create_table :pracas do |t|
      t.string :nome_equip_urbano
      t.string :tipo_equip_urbano
      t.string :endereco_equip_urbano
      t.string :codigo_logradouro
      t.string :lei_equip_urbano
      t.string :nome_bairro
      t.string :codigo_bairro
      t.string :nome_oficial_equip_urbano
      t.string :area
      t.string :perimetro
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
