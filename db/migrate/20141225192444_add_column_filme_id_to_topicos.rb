class AddColumnFilmeIdToTopicos < ActiveRecord::Migration
  def change
    add_column :topicos, :filme_id, :integer
  end
end
