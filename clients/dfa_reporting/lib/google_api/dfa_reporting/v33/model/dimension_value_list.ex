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

defmodule GoogleApi.DFAReporting.V33.Model.DimensionValueList do
  @moduledoc """
  Represents the list of DimensionValue resources.

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - The eTag of this response for caching purposes.
  *   `items` (*type:* `list(GoogleApi.DFAReporting.V33.Model.DimensionValue.t)`, *default:* `nil`) - The dimension values returned in this response.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#dimensionValueList`) - The kind of list this is, in this case dfareporting#dimensionValueList.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Continuation token used to page through dimension values. To retrieve the next page of results, set the next request's "pageToken" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :items => list(GoogleApi.DFAReporting.V33.Model.DimensionValue.t()),
          :kind => String.t(),
          :nextPageToken => String.t()
        }

  field(:etag)
  field(:items, as: GoogleApi.DFAReporting.V33.Model.DimensionValue, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.DimensionValueList do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.DimensionValueList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.DimensionValueList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
