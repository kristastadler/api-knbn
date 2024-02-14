class CreateBoards < ActiveRecord::Migration[7.1]
  def change
    create_table :boards do |t|
      t.string :title
      t.text :description
      t.string :privacy

      t.timestamps
    end
  end
end
