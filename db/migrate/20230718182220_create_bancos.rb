class CreateBancos < ActiveRecord::Migration[5.2]
  def change
    create_table :bancos do |t|
      t.string :nome, limit: 150
      t.string :localizacao, limit: 150
      t.integer :ano_fundacao
      t.integer :numero_agencias
      t.string :email, limit: 150
      t.text :obs

      t.timestamps
    end
  end
end
