class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :done, default: false
      t.belongs_to :smartkey
      t.timestamps null: false
    end
  end
end
