class AddScoresToLinks < ActiveRecord::Migration
  def change
    add_column :links, :scores, :integer, default: 0, null: false
  end
end
