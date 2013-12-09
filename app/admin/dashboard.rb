ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do

    h2 "All Entries"

    # Entry list
     columns do
       column do
         panel "Posts" do
           ul do
             table do
                   tr do
                      th "Photo"
                      th "Title"
                      th "Name"
                      th "Short Description"
                      th "Email"
                   end
                   Post.all.map do |post|
                   tr do
                      td image_tag post.photo.url(:thumb)
                      td post.title
                      td post.name
                      td post.s_desc
                      td post.email
                      td link_to 'Show', post
                      td link_to 'Edit', edit_post_path(post)
                      td link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }
                   end
                 end
             end
           end
         end
       end
     end 
  end # content
end
