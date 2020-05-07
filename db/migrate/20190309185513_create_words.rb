class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :spelling, null:false
      t.string :category, null: false

      t.timestamps null: false
    end
  end
end
