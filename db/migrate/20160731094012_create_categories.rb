class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :cno
      t.string :cname

      t.timestamps null: false
    end
  end
end
