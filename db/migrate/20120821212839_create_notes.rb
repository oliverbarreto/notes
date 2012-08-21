class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.string :text
      t.string :color, :default => 'yellow'

      t.timestamps
    end
  end
end
