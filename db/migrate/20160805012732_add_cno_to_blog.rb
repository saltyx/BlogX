class AddCnoToBlog < ActiveRecord::Migration
  def change
    add_column :blogs ,:cno , :string
  end
end
