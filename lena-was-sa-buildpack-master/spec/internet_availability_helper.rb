# frozen_string_literal: true

# Cloud Foundry Java Buildpack
# Copyright 2013-2019 the original author or authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'spec_helper'
require 'logging_helper'
require 'java_buildpack/util/cache/internet_availability'

shared_context 'with internet availability help' do
  include_context 'with logging help'

  # Re-initialize internet availability
  before do |example|
    JavaBuildpack::Util::Cache::InternetAvailability.instance.send :initialize
    JavaBuildpack::Util::Cache::InternetAvailability.instance.available false if example.metadata[:disable_internet]
  end

end
