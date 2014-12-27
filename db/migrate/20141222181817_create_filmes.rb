class CreateFilmes < ActiveRecord::Migration
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.date :datalancamento
      t.string :imagemdecapa
      t.text :sinopse
      t.string :duracao
      t.text :tags
      t.integer :nota

      t.timestamps
    end
  end
end
