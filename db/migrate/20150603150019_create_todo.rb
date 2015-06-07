class CreateTodo < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string "text"
    end
  end
end
