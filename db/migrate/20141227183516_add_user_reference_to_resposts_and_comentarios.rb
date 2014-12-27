class AddUserReferenceToRespostsAndComentarios < ActiveRecord::Migration
  def change
  	add_reference :resposts, :user, index: true
  	add_reference :comentarios, :user, index: true
  end
end
