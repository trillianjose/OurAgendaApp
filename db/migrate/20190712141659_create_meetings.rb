class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.datetime :starts_on
      t.datetime :ends_on
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
