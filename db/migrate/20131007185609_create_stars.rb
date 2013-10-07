class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.string :name
      t.references :role, index: true

      t.timestamps
    end
  end
end
