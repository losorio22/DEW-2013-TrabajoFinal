#ActiveAdmin.register Tweet do
#  config.filters = true

#  index do
#    column "User Tweeter", :user 
#    column "Estado Tweeter", :status
#   end

# index do
#   column :user
#   default_actions
# end
 
ActiveAdmin.register Tweet  do

    form do |f|
   # <%= form_for(@tweet, :url => "user") do |f| %>
      f.inputs "Usuario Tweeter" do
        f.input :user
        f.input :status, :label => "Comentario Tweer"
      end
      f.inputs "Comentario" do
        f.input :status
      end
      f.buttons
    end

  end



#ActiveAdmin.register Tweet do
#    show do
#      h3 Tweet.user
#      div do
#        simple_format Tweet.status
#      end
#    end
#  end
