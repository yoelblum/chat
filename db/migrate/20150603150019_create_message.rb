class CreateMessage < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string "text"
      t.integer "user_id"
    end
  end
end
