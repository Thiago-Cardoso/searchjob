class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.text :job_description
      t.date :published_at
      t.string :company_name
      t.string :locale

      t.timestamps
    end
  end
end
