class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.string :address
      t.text :description

      t.timestamps null: false
    end
  end
end
