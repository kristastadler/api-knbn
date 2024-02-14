class CreateContainers < ActiveRecord::Migration[7.1]
  def change
    create_table :containers do |t|
      t.string :title
      t.belongs_to(:board, foreign_key: true)

      t.timestamps
    end
  end
end
