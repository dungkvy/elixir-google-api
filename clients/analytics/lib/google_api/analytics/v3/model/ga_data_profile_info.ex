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

defmodule GoogleApi.Analytics.V3.Model.GaDataProfileInfo do
  @moduledoc """
  Information for the view (profile), for which the Analytics data was requested.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID to which this view (profile) belongs.
  *   `internalWebPropertyId` (*type:* `String.t`, *default:* `nil`) - Internal ID for the web property to which this view (profile) belongs.
  *   `profileId` (*type:* `String.t`, *default:* `nil`) - View (Profile) ID.
  *   `profileName` (*type:* `String.t`, *default:* `nil`) - View (Profile) name.
  *   `tableId` (*type:* `String.t`, *default:* `nil`) - Table ID for view (profile).
  *   `webPropertyId` (*type:* `String.t`, *default:* `nil`) - Web Property ID to which this view (profile) belongs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :internalWebPropertyId => String.t(),
          :profileId => String.t(),
          :profileName => String.t(),
          :tableId => String.t(),
          :webPropertyId => String.t()
        }

  field(:accountId)
  field(:internalWebPropertyId)
  field(:profileId)
  field(:profileName)
  field(:tableId)
  field(:webPropertyId)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.GaDataProfileInfo do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.GaDataProfileInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.GaDataProfileInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
