class ApprovalsController < ApplicationController

    def index
        @approvals = Approval.all.page(params[:page])
    end

     def new
        # Render your upload form here
      end
    
      def create
        file = params[:file]
        if file.present? && File.extname(file.original_filename) == ".xlsx"
          import_excel(file)
          redirect_to root_path, notice: "Excel file imported successfully."
        else
          redirect_to root_path, alert: "Please upload a valid Excel file."
        end
      end


      private

      def import_excel(file)
        sheet = Roo::Excelx.new(file.path)
        (2..sheet.last_row).each do |row|
           record = sheet.row(row)
          approval = Approval.create(s_no: record[0], office_name: record[1], application_number: record[2],
                                      application_date: record[3],registration_number: record[4], owner_name: record[5],
                                      class_type: record[6],vehicle_class: record[7] , verification_string: record[8], 
                                      verification_by: record[9], approval_date: record[10], approved_by: record[11],
                                      hsrp_fitment_date: record[12], data_pull_by_vendor_date: record[13],data_available_for_printing: record[14],  
                                      kms_done_date: record[15], rc_print_date: record[16], dispatch_date: record[17],
                                      dispatch_tracking_id: record[18],receipt_no: record[19],receipt_string: record[20], payment_mode: record[21],  
                                      instrument_number: record[22], fee: record[23], tax: record[24], total: record[25]  )
        #   puts "Record Import SuccessFully "
        end
    
      end
    
end
