class CreateFilmeAtors < ActiveRecord::Migration
  def change
    create_table :filme_ators do |t|
	  t.integer :filme_id
      t.integer :ator_id
      
      t.timestamps
    end
  end
end
