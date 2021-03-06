# ReportingCloud Ruby SDK
#
# Official Ruby SDK for the ReportingCloud Web API. Authored, maintained and fully supported 
# by Text Control GmbH. (http://www.textcontrol.com).
#
# Go to http://www.reporting.cloud to learn more about ReportingCloud
# Go to https://github.com/TextControl/txtextcontrol-reportingcloud-ruby for the 
# canonical source repository.
#
# License: https://raw.githubusercontent.com/TextControl/txtextcontrol-reportingcloud-ruby/master/LICENSE.md
#
# Copyright: © 2019 Text Control GmbH

module TXTextControl
  module ReportingCloud
  
    # Internal method parameter validator class.
    # @author Thorsten Kummerow (@thomerow)
    class TemplateDataValidator
    
      # Checks if a given value is a String, is not nil and not empty.
      # @param template_data [String] The string to validate.
      # @return [Boolean]
      def self.validate(template_data)
        raise ArgumentError, "Template data must be a Base64 encoded string." if !template_data.kind_of? String
        raise ArgumentError, "No template data given." if template_data.to_s.empty?
      end
    end
  end
end