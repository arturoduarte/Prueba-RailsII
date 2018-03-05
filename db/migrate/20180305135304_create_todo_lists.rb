class CreateTodoLists < ActiveRecord::Migration[5.1]
  def change
    create_table :todo_lists do |t|
      t.boolean :completed
      t.references :todo, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
