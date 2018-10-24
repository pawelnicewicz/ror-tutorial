class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :content
      t.datetime :start_date
      t.datetime :end_date
      t.string :place

      t.timestamps
    end
  end
end
