class AddNationToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :nation, :string
  end
end
