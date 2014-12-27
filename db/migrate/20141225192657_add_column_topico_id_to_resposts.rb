class AddColumnTopicoIdToResposts < ActiveRecord::Migration
  def change
    add_column :resposts, :topico_id, :integer
  end
end
