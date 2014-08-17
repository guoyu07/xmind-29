module ApplicationHelper

  def controller_action_name
    "#{controller_name}##{action_name}"
  end

  def display_active controller_action
    controller_action == controller_action_name ? "active" : ""
  end

end
