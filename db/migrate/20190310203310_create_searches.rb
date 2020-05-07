class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :name

      t.belongs_to :user, null: false
      t.timestamps null: false
    end
  end
end
