class AddUserReferenceToTopicos < ActiveRecord::Migration
  def change
  	add_reference :topicos, :user, index: true
  end
end
