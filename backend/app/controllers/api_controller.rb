class ApiController < ActionController::API
  include Pundit

  before_action :authenticate_user!

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from Pundit::NotAuthorizedError, with: :render_unauthorized

  def render_unprocessable_entity(exception)
    render json: { error_message: exception.message }, status: :unprocessable_entity
  end

  def render_unauthorized(message = 'Unauthorized')
    render json: { error_message: message }, status: :unauthorized
  end
end
