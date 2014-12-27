class CreateFilmeDiretors < ActiveRecord::Migration
  def change
    create_table :filme_diretors do |t|
      t.integer :filme_id
      t.integer :diretor_id

      t.timestamps
    end
  end
end
