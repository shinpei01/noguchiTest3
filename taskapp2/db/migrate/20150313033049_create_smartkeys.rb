class CreateSmartkeys < ActiveRecord::Migration
  def change
    create_table :smartkeys do |t|
      t.string :head

      t.timestamps null: false
    end
  end
end
