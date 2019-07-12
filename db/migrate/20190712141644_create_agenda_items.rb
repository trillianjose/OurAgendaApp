class CreateAgendaItems < ActiveRecord::Migration[5.2]
  def change
    create_table :agenda_items do |t|
      t.string :title
      t.text :description
      t.integer :meeting_id
      t.integer :user_id

      t.timestamps
    end
    
    add_index :agenda_items, :meeting_id
    add_index :agenda_items, :user_id
  end
end
