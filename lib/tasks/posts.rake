namespace :posts do
  task :import => "environment" do
    sheet = Roo::Spreadsheet.open('/home/ls/Downloads/users .xlsx')
 
    (2..sheet.last_row).each do |row|
      record = sheet.row(row)
      post = Post.create(title: record[0], body: record[1], author: record[2])
      puts post.title
      puts post.body
      puts post.author
    end
  end
 
 end


 #xlsx = Roo::Excelx.new("path/to/file.xlsx")
 #csv = xlsx.to_csv