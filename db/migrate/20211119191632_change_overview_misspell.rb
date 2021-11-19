class ChangeOverviewMisspell < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :overwiew, :overview
  end
end
