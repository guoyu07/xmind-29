module ApplicationHelper

  def active_status action
    action.to_s == action_name ? "active" : ""
  end

end
