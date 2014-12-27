class CreateFilmeEstudios < ActiveRecord::Migration
  def change
    create_table :filme_estudios do |t|
      t.integer :filme_id
      t.integer :estudio_id

      t.timestamps
    end
  end
end
