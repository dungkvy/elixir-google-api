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

defmodule GoogleApi.Webmaster.V3.Model.WmxSitemap do
  @moduledoc """
  Contains detailed information about a specific URL submitted as a sitemap.

  ## Attributes

  *   `contents` (*type:* `list(GoogleApi.Webmaster.V3.Model.WmxSitemapContent.t)`, *default:* `nil`) - The various content types in the sitemap.
  *   `errors` (*type:* `String.t`, *default:* `nil`) - Number of errors in the sitemap. These are issues with the sitemap itself that need to be fixed before it can be processed correctly.
  *   `isPending` (*type:* `boolean()`, *default:* `nil`) - If true, the sitemap has not been processed.
  *   `isSitemapsIndex` (*type:* `boolean()`, *default:* `nil`) - If true, the sitemap is a collection of sitemaps.
  *   `lastDownloaded` (*type:* `DateTime.t`, *default:* `nil`) - Date & time in which this sitemap was last downloaded. Date format is in RFC 3339 format (yyyy-mm-dd).
  *   `lastSubmitted` (*type:* `DateTime.t`, *default:* `nil`) - Date & time in which this sitemap was submitted. Date format is in RFC 3339 format (yyyy-mm-dd).
  *   `path` (*type:* `String.t`, *default:* `nil`) - The url of the sitemap.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the sitemap. For example: rssFeed.
  *   `warnings` (*type:* `String.t`, *default:* `nil`) - Number of warnings for the sitemap. These are generally non-critical issues with URLs in the sitemaps.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contents => list(GoogleApi.Webmaster.V3.Model.WmxSitemapContent.t()),
          :errors => String.t(),
          :isPending => boolean(),
          :isSitemapsIndex => boolean(),
          :lastDownloaded => DateTime.t(),
          :lastSubmitted => DateTime.t(),
          :path => String.t(),
          :type => String.t(),
          :warnings => String.t()
        }

  field(:contents, as: GoogleApi.Webmaster.V3.Model.WmxSitemapContent, type: :list)
  field(:errors)
  field(:isPending)
  field(:isSitemapsIndex)
  field(:lastDownloaded, as: DateTime)
  field(:lastSubmitted, as: DateTime)
  field(:path)
  field(:type)
  field(:warnings)
end

defimpl Poison.Decoder, for: GoogleApi.Webmaster.V3.Model.WmxSitemap do
  def decode(value, options) do
    GoogleApi.Webmaster.V3.Model.WmxSitemap.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Webmaster.V3.Model.WmxSitemap do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
