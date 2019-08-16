# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.DFAReporting.V33.Model.LandingPage do
  @moduledoc """
  Contains information about where a user's browser is taken after the user clicks an ad.

  ## Attributes

  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Advertiser ID of this landing page. This is a required field.
  *   `archived` (*type:* `boolean()`, *default:* `nil`) - Whether this landing page has been archived.
  *   `deepLinks` (*type:* `list(GoogleApi.DFAReporting.V33.Model.DeepLink.t)`, *default:* `nil`) - Links that will direct the user to a mobile app, if installed.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this landing page. This is a read-only, auto-generated field.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#landingPage`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#landingPage".
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this landing page. This is a required field. It must be less than 256 characters long.
  *   `url` (*type:* `String.t`, *default:* `nil`) - URL of this landing page. This is a required field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertiserId => String.t(),
          :archived => boolean(),
          :deepLinks => list(GoogleApi.DFAReporting.V33.Model.DeepLink.t()),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :url => String.t()
        }

  field(:advertiserId)
  field(:archived)
  field(:deepLinks, as: GoogleApi.DFAReporting.V33.Model.DeepLink, type: :list)
  field(:id)
  field(:kind)
  field(:name)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.LandingPage do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.LandingPage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.LandingPage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
