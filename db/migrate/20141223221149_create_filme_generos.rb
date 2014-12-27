class CreateFilmeGeneros < ActiveRecord::Migration
  def change
    create_table :filme_generos do |t|
      t.integer :filme_id
      t.integer :genero_id

      t.timestamps
    end
  end
end
