class CreateSalesReports < ActiveRecord::Migration
  def change
    create_table :sales_reports do |t|
      t.integer :deal_id,         :null => false                # ���k���ID
      t.date    :activity_date,   :null => false                # �c�Ɠ�
      t.string  :activity_method, :null => true,  :limit => 40  # �c�ƕ��@
      t.string  :main_staff,      :null => false, :limit => 20  # �Ή���
      t.text    :fellow_staff,    :null => true                 # ���s��
      t.string  :destination,     :null => false, :limit => 40  # �K���
      t.text    :reports,         :null => false                # �񍐓��e
      t.text    :responses,       :null => true                 # �ڋq����
      t.integer :reliability_cd,  :null => false                # �󒍊m�x�R�[�h
      t.text    :summary,         :null => true                 # �񍐂ɑ΂��鑍��

      t.timestamps
    end
  end
end
