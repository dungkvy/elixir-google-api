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

defmodule GoogleApi.DFAReporting.V33.Model.DefaultClickThroughEventTagProperties do
  @moduledoc """
  Properties of inheriting and overriding the default click-through event tag. A campaign may override the event tag defined at the advertiser level, and an ad may also override the campaign's setting further.

  ## Attributes

  *   `defaultClickThroughEventTagId` (*type:* `String.t`, *default:* `nil`) - ID of the click-through event tag to apply to all ads in this entity's scope.
  *   `overrideInheritedEventTag` (*type:* `boolean()`, *default:* `nil`) - Whether this entity should override the inherited default click-through event tag with its own defined value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultClickThroughEventTagId => String.t(),
          :overrideInheritedEventTag => boolean()
        }

  field(:defaultClickThroughEventTagId)
  field(:overrideInheritedEventTag)
end

defimpl Poison.Decoder,
  for: GoogleApi.DFAReporting.V33.Model.DefaultClickThroughEventTagProperties do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.DefaultClickThroughEventTagProperties.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DFAReporting.V33.Model.DefaultClickThroughEventTagProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
