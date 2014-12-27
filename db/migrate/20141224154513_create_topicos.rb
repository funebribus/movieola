class CreateTopicos < ActiveRecord::Migration
  def change
    create_table :topicos do |t|
      t.text :corpo
      t.string :titulo
      t.integer :quantidade_likes
      t.text :tags
      t.integer :quantidade_visualizacoes

      t.timestamps
    end
      add_foreign_key :topicos, :filmes
  end
end
