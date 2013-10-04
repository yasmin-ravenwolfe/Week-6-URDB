class CreateShowings < ActiveRecord::Migration
  def change
    create_table :showings do |t|
      t.references      :movie
      t.string          :location
      t.datetime        :time

      t.timestamps
    end
  end
end
