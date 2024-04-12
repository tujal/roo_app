class CreateApprovals < ActiveRecord::Migration[7.1]
  def change
    create_table :approvals do |t|
      t.string :s_no
      t.string :office_name
      t.string :application_number
      t.string :application_date
      t.string :registration_number
      t.string :owner_name
      t.string :class_type
      t.string :vehicle_class
      t.string :verification_string
      t.string :verification_by
      t.string :approval_date
      t.string :approved_by 
      t.string :hsrp_fitment_date
      t.string :data_pull_by_vendor_date
      t.string :data_available_for_printing
      t.string :kms_done_date
      t.string :rc_print_date
      t.string :dispatch_date
      t.string :dispatch_tracking_id
      t.string :receipt_no
      t.string :receipt_string
      t.string :payment_mode
      t.string :instrument_number
      t.string :fee 
      t.string :tax
      t.string :total

      t.timestamps
    end
  end
end