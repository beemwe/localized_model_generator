module Rails
  module Generators
    class LocalizedActiveRecordGenerator < NamedBase
      desc 'This generator creates a model like the original, but adds corresponding locale files in /config/locale'
      
      source_root File.expand_path("../../../templates/rails/localized_active_record", __FILE__)

      argument :attributes, type: :array, :default => [], :banner => 'field[:type][:index] field[:type][:index]'
      class_option :locale, required: true, type: :array

      def call_original_model
        invoke('active_record:model', ARGV, {migration: true, timestamps: true})
      end

      def create_localization_file
        options[:locale].reject {|loc| loc == 'en'}
        options[:locale].insert(0, 'en')
        options[:locale].each do |loc|
          @locale = loc
          template 'localize.yml.erb', "config/locales/#{singular_name}.#{@locale}.yml"
        end
      end

    end
  end
end
