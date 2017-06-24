class Admin::Dealings::TimelineMessagesController < ApplicationController
  def post
    order = Order.find(params[:id])
    order.timeline_messages.new(
        :message => params[:timeline][:message],
        :user_id => current_user.id,
        :posted_at => DateTime.now
    )
    order.save
    redirect_to :controller => 'admin/dealings/orders', :action => 'edit'
  end
end
