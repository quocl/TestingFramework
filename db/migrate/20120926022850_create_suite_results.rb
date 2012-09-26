class CreateSuiteResults < ActiveRecord::Migration
  def change
    create_table :suite_results do |t|
      t.integer :test_suite_id
      t.integer :run_id
      t.integer :status

      t.timestamps
    end
  end
end
