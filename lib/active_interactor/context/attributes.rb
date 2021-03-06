# frozen_string_literal: true

module ActiveInteractor
  module Context
    # Context attribute methods. Because {Attributes} is a module classes should include {Attributes} rather than
    # inherit from it.
    #
    # @author Aaron Allen <hello@aaronmallen.me>
    # @since 0.1.4
    module Attributes
      # Context attribute class methods. Because {ClassMethods} is a module classes should extend {ClassMethods} rather
      # than inherit from it.
      #
      # @author Aaron Allen <hello@aaronmallen.me>
      # @since 0.1.4
      module ClassMethods
        # Get or set attributes on a {Base context} class
        #
        # @example Set attributes on a {Base context} class
        #   class MyContext < ActiveInteractor::Context::Base
        #     attributes :first_name, :last_name
        #   end
        #
        # @example Get attributes defined on a {Base context} class
        #   MyContext.attributes
        #   #=> [:first_name, :last_name]
        #
        # @return [Array<Symbol>] the defined attributes
        def attributes(*attributes)
          return __attributes if attributes.empty?

          @__attributes = __attributes.concat(attributes.map(&:to_sym)).compact.uniq.sort
        end

        private

        def __attributes
          @__attributes ||= []
        end
      end

      # Initialize a new instance of {Base}
      #
      # @param context [Hash, Base, Class] attributes to assign to the {Base context}
      # @return [Base] a new instance of {Base}
      def initialize(context = {})
        merge_errors!(context.errors) if context.respond_to?(:errors)
        copy_flags!(context)
        copy_called!(context)
        super
      end

      # Get values defined on the instance of {Base context} whose keys are defined on the {Base context} class'
      # {ClassMethods#attributes .attributes}
      #
      # @example Get attributes defined on an instance of {Base context}
      #   class MyContext < ActiveInteractor::Context::Base
      #     attributes :first_name, :last_name
      #   end
      #
      #   context = MyContext.new(first_name: 'Aaron', last_name: 'Allen', occupation: 'Ruby Nerd')
      #   #=> <#MyContext first_name='Aaron' last_name='Allen' occupation='Ruby Nerd')
      #
      #   context.attributes
      #   #=> { first_name: 'Aaron', last_name: 'Allen' }
      #
      #   context.occupation
      #   #=> 'Ruby Nerd'
      #
      # @return [Hash{Symbol => *}] the defined attributes and values
      def attributes
        self.class.attributes.each_with_object({}) do |attribute, hash|
          hash[attribute] = self[attribute] if self[attribute]
        end
      end

      # Merge an instance of {Base context} into the calling {Base context} instance
      #
      # @since 1.0.0
      #
      # @example
      #   context = MyContext.new(first_name: 'Aaron', last_name: 'Allen')
      #   other_context = MyContext.new(last_name: 'Awesome')
      #   context.merge!(other_context)
      #   #=> <#MyContext first_name='Aaron' last_name='Awesome'>
      #
      # @param context [Class] a {Base context} instance to be merged
      # @return [self] the {Base context} instance
      def merge!(context)
        merge_errors!(context.errors) if context.respond_to?(:errors)
        copy_flags!(context)
        context.each_pair do |key, value|
          self[key] = value unless value.nil?
        end
        self
      end

      private

      def merge_errors!(errors)
        if errors.is_a? String
          self.errors.add(:context, errors)
        else
          self.errors.merge!(errors)
        end
      end
    end
  end
end
