class CreateFilmeProdutors < ActiveRecord::Migration
  def change
    create_table :filme_produtors do |t|
      t.integer :filme_id
      t.integer :produtor_id

      t.timestamps
    end
  end
end
