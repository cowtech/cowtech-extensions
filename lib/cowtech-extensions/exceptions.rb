# encoding: utf-8
#
# This file is part of the cowtech-extensions gem. Copyright (C) 2011 and above Shogun <shogun_panda@me.com>.
# Licensed under the MIT license, which can be found at http://www.opensource.org/licenses/mit-license.php.
#

module Cowtech
  module Extensions
    # Exceptions for cowtech-extensions.
    module Exceptions
      # This exception is raised from {Object#debug_dump} when `must_raise` is `true`.
      class Dump < ::RuntimeError
      end
    end
  end
end
