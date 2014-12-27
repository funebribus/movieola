class DropPerfils < ActiveRecord::Migration
  def change
  	drop_table :perfils
  end
end
