class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :corpo
      t.integer :quantidadelikes

      t.timestamps
    end
  end
end
