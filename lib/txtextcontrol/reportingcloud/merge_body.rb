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

require "txtextcontrol/reportingcloud/merge_settings"

module TXTextControl
  module ReportingCloud
  
    # Passes data to the {ReportingCloud.merge_document} method.
    # @attr merge_data [Array<Hash>] The merge data. Must be an array of hashes.
    # @attr template [String] Base64 encoded template document.
    #   Supported formats are RTF, DOC, DOCX and TX. 
    # @attr merge_settings [MergeSettings] Merge settings to specify 
    #   merge properties and document properties such as title and 
    #   author.
    # @author Thorsten Kummerow (@thomerow)
    class MergeBody
      attr_accessor :template
      attr_accessor :merge_settings
      
      # The constructor.
      # @param merge_data [Array<Hash>] The merge data. Must be an array of hashes.
      # @param template [String] Base64 encoded template document.
      #   Supported formats are RTF, DOC, DOCX and TX.
      # @param merge_settings [MergeSettings] Merge settings to specify 
      #   merge properties and document properties such as title and 
      #   author.
      def initialize(merge_data, merge_settings = nil, template = nil)
        self.merge_data = merge_data
        @template = template
        @merge_settings = merge_settings
      end      
      
      def merge_data=(val)
        unless val.kind_of?(Array) && !val.empty? && val[0].kind_of?(Hash)
          raise ArgumentError, "Merge data must be a non empty array of hashes."
        end        
        @merge_data = val
      end
      
      def merge_data
        @merge_data
      end
      
      # Converts a MergeBody instance to a hash while converting the attribute names
      # from snake case to camel case.
      # @return [Hash] A hash representing the MergeBody instance.
      def to_camelized_hash
        return {
          "mergeData" => @merge_data,
          "template" => @template,
          "mergeSettings" => @merge_settings.nil? ? nil : @merge_settings.to_camelized_hash
        }
      end
    end
  end 
end
