class ChangeNameToMail < ActiveRecord::Migration[5.0]
  def change
    rename_column :restaurants, :mail, :name
  end
end
