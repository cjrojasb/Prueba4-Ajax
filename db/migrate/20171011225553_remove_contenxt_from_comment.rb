class RemoveContenxtFromComment < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :contenxt, :text
  end
end
