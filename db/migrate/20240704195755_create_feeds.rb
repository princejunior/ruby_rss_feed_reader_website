class CreateFeeds < ActiveRecord::Migration[7.1]
  def change
    create_table :feeds do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
