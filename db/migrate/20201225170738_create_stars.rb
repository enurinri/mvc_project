class CreateStars < ActiveRecord::Migration[6.1]
  def change
    create_table :stars do |t|
      t.text :name
      t.integer :age
      t.text :mail

      t.timestamps
    end
  end
end
