class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :bno
      t.string :title
      t.string :author
      t.string :time

      t.timestamps null: false
    end
  end
end
