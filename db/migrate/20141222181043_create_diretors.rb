class CreateDiretors < ActiveRecord::Migration
  def change
    create_table :diretors do |t|
      t.string :diretor

      t.timestamps
    end
  end
end
