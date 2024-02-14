class CreateCards < ActiveRecord::Migration[7.1]
  def change
    create_table :cards do |t|
      t.string :title
      t.belongs_to(:container, foreign_key: true)

      t.timestamps
    end
  end
end
