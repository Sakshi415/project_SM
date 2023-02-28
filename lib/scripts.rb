module Scripts
    def script_method
        package = Axlsx::Package.new
        post_spread_sheet = package.workbook
        sheet = post_spread_sheet.add_worksheet(name: "Worksheet1")
        sheet.add_row ["Id","content","posted_by"]
        posts = Post.all
        posts.each do |post|
            user = post.user
            sheet.add_row [post.id, post.content, user.name]
        end
        filename = "post_report.xlsx"
        filepath = "#{Rails.root.join("tmp")}/#{filename}"
        package.serialize(filepath)
        
        UserMailer.report(filepath, filename).deliver
    end
end