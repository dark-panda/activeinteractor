# frozen_string_literal: true

require 'rails/generators/active_interactor/base'

module ActiveInteractor
  module Generators
    class ApplicationInteractorGenerator < Base
      def create_application_interactor
        return if File.exist?(file_path)

        template 'application_interactor.rb', file_path
      end

      private

      def file_path
        "app/#{active_interactor_directory}/application_interactor.rb"
      end
    end
  end
end
