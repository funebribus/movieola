class CreateResposts < ActiveRecord::Migration
  def change
    create_table :resposts do |t|
      t.text :corpo
      t.integer :quantidadelikes

      t.timestamps
      add_foreign_key :resposts, :topicos
    end
  end
end
