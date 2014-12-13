class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.string :name
      t.string :link_url
      t.string :description
      t.belongs_to :pet

      t.timestamps null: false
    end
  end
end
