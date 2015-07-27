class AddPresenterColumn < ActiveRecord::Migration
  def change
  	add_column :events, :presenter, :string
  end
end
