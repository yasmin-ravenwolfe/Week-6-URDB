class AddHeadshotUrlToStars < ActiveRecord::Migration
  def change
    add_column :stars, :headshot_url, :string
  end
end
