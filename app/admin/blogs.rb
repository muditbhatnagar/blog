ActiveAdmin.register Blog do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :list, :of, :attributes, :on, :title, :image, :categories_id, :user_id
#
# or
#
# permit_params do
# permitted = [:permitted, :attributes]
# permitted &lt;&lt; :other if params[:action] == 'create' &amp;&amp; current_user.admin?
# permitted
# end
	form do |form|
		form.inputs do
			form.input :title, :label => 'title'
			form.input :image, :label => 'image'
			form.input :categories_id, :label => 'Category', :as => :select, :collection => Category.all.map{|u| ["#{u.title}", u.id]} 
		end
		form.actions
	end
end