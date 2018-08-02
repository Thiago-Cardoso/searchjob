class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :location
      t.date :published_at
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
