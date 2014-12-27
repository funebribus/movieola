class AddColumnRespostIdToComentarios < ActiveRecord::Migration
  def change
    add_column :comentarios, :respost_id, :integer
  end
end
