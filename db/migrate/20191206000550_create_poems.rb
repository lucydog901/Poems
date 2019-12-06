class CreatePoems < ActiveRecord::Migration[5.2]
  def change
    create_table :poems do |t|
      t.string :title
      t.string :body
      t.string :author
      t.timestamps
    end
  end
end
