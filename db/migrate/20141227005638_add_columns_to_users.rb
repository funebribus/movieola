class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nome, :string
    add_column :users, :sobrenome, :string
    add_column :users, :foto, :string
    add_column :users, :data_de_nascimento, :date
    add_column :users, :link, :string
    add_column :users, :descricao, :text
    add_column :users, :sexo, :string
    add_column :users, :categoria, :string
    add_column :users, :endereco, :string
  end
end
