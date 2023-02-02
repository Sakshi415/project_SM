module ApplicationHelper
    def post_comments_path(post)
        "#{post_path(post)}/comments"
      end
end
