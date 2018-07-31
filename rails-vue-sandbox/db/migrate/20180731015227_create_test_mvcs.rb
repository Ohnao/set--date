class CreateTestMvcs < ActiveRecord::Migration[5.2]
  def change
    create_table :test_mvcs do |t|
      t.string :content
      t.string :text

      t.timestamps
    end
  end
end
