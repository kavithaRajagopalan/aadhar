class LimitAadharNumberLength < ActiveRecord::Migration
  def change
    change_column :people, :aadharNum, :text, limit: 11
  end
end
