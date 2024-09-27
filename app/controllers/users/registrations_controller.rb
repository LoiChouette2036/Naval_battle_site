class Users::RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
    if resource.profile.nil?
      # Créez un profil pour l'utilisateur
      profile = resource.create_profile
      edit_profile_path(profile) # Redirige vers la page d'édition du profil
    else
      root_path # Sinon, redirige vers la page d'accueil
    end
  end
end
