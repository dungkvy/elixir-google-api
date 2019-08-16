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

defmodule GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4ArgsRects do
  @moduledoc """


  ## Attributes

  *   `height` (*type:* `integer()`, *default:* `nil`) - 
  *   `left` (*type:* `integer()`, *default:* `nil`) - 
  *   `top` (*type:* `integer()`, *default:* `nil`) - 
  *   `width` (*type:* `integer()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :height => integer(),
          :left => integer(),
          :top => integer(),
          :width => integer()
        }

  field(:height)
  field(:left)
  field(:top)
  field(:width)
end

defimpl Poison.Decoder,
  for: GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4ArgsRects do
  def decode(value, options) do
    GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4ArgsRects.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4ArgsRects do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
