class CreateEstudios < ActiveRecord::Migration
  def change
    create_table :estudios do |t|
      t.string :estudio

      t.timestamps
    end
  end
end
