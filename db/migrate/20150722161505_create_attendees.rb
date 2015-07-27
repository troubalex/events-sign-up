class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :name
      t.string :email
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
