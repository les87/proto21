module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Proto"

      def resource_name
        :user
      end

      def resource
        @resource ||= User.new
      end

      def devise_mapping
        @devise_mapping ||= Devise.mappings[:user]

      end
    end
  end
end

