class CreateTestScaffs < ActiveRecord::Migration
  def change
    create_table :test_scaffs do |t|

      t.timestamps
    end
  end
end
