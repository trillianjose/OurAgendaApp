class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    create_table :meetings_users do |t|
      t.integer :meeting_id
      t.integer :user_id
    end

    add_index(:meetings_users, [:meeting_id, :user_id])
  end
end
