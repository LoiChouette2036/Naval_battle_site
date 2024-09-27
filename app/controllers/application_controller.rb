class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def after_sign_in_path_for(resource)
    if resource.profile.nil?
      edit_profile_path  # Redirect to the profile edit page if profile is not present
    else
      root_path  # Otherwise, redirect to the home page
    end
  end
end
