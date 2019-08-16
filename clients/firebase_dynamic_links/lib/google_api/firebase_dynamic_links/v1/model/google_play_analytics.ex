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

defmodule GoogleApi.FirebaseDynamicLinks.V1.Model.GooglePlayAnalytics do
  @moduledoc """
  Parameters for Google Play Campaign Measurements.
  [Learn
  more](https://developers.google.com/analytics/devguides/collection/android/v4/campaigns#campaign-params)

  ## Attributes

  *   `gclid` (*type:* `String.t`, *default:* `nil`) - [AdWords autotagging
      parameter](https://support.google.com/analytics/answer/1033981?hl=en); used
      to measure Google AdWords ads. This value is generated dynamically and
      should never be modified.
  *   `utmCampaign` (*type:* `String.t`, *default:* `nil`) - Campaign name; used for keyword analysis to identify a specific product
      promotion or strategic campaign.
  *   `utmContent` (*type:* `String.t`, *default:* `nil`) - Campaign content; used for A/B testing and content-targeted ads to
      differentiate ads or links that point to the same URL.
  *   `utmMedium` (*type:* `String.t`, *default:* `nil`) - Campaign medium; used to identify a medium such as email or cost-per-click.
  *   `utmSource` (*type:* `String.t`, *default:* `nil`) - Campaign source; used to identify a search engine, newsletter, or other
      source.
  *   `utmTerm` (*type:* `String.t`, *default:* `nil`) - Campaign term; used with paid search to supply the keywords for ads.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gclid => String.t(),
          :utmCampaign => String.t(),
          :utmContent => String.t(),
          :utmMedium => String.t(),
          :utmSource => String.t(),
          :utmTerm => String.t()
        }

  field(:gclid)
  field(:utmCampaign)
  field(:utmContent)
  field(:utmMedium)
  field(:utmSource)
  field(:utmTerm)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.GooglePlayAnalytics do
  def decode(value, options) do
    GoogleApi.FirebaseDynamicLinks.V1.Model.GooglePlayAnalytics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.GooglePlayAnalytics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
