class CreateAtors < ActiveRecord::Migration
  def change
    create_table :ators do |t|
      t.string :ator

      t.timestamps
    end
  end
end
