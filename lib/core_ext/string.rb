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

# Extensions to class String.
# @author Thorsten Kummerow (@thomerow)
class String

  # Removes the first and last characters from a string and returns the 
  # manipulated string.
  # @return [String] The string without its first and last characters.
  def remove_first_and_last 
    if self.length == 0 then return '' end
    result = self.dup
    result[0] = ''
    if result.length > 0 then result[result.length - 1] = '' end
    return result
  end
end
