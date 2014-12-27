class CreateProdutors < ActiveRecord::Migration
  def change
    create_table :produtors do |t|
      t.string :produtor

      t.timestamps
    end
  end
end
