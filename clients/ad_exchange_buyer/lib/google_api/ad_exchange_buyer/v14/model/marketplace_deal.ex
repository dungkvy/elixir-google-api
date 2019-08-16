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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.MarketplaceDeal do
  @moduledoc """
  A proposal can contain multiple deals. A deal contains the terms and targeting information that is used for serving.

  ## Attributes

  *   `buyerPrivateData` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.PrivateData.t`, *default:* `nil`) - Buyer private data (hidden from seller).
  *   `creationTimeMs` (*type:* `String.t`, *default:* `nil`) - The time (ms since epoch) of the deal creation. (readonly)
  *   `creativePreApprovalPolicy` (*type:* `String.t`, *default:* `nil`) - Specifies the creative pre-approval policy (buyer-readonly)
  *   `creativeSafeFrameCompatibility` (*type:* `String.t`, *default:* `nil`) - Specifies whether the creative is safeFrame compatible (buyer-readonly)
  *   `dealId` (*type:* `String.t`, *default:* `nil`) - A unique deal-id for the deal (readonly).
  *   `dealServingMetadata` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.DealServingMetadata.t`, *default:* `nil`) - Metadata about the serving status of this deal (readonly, writes via custom actions)
  *   `deliveryControl` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.DeliveryControl.t`, *default:* `nil`) - The set of fields around delivery control that are interesting for a buyer to see but are non-negotiable. These are set by the publisher. This message is assigned an id of 100 since some day we would want to model this as a protobuf extension.
  *   `externalDealId` (*type:* `String.t`, *default:* `nil`) - The external deal id assigned to this deal once the deal is finalized. This is the deal-id that shows up in serving/reporting etc. (readonly)
  *   `flightEndTimeMs` (*type:* `String.t`, *default:* `nil`) - Proposed flight end time of the deal (ms since epoch) This will generally be stored in a granularity of a second. (updatable)
  *   `flightStartTimeMs` (*type:* `String.t`, *default:* `nil`) - Proposed flight start time of the deal (ms since epoch) This will generally be stored in a granularity of a second. (updatable)
  *   `inventoryDescription` (*type:* `String.t`, *default:* `nil`) - Description for the deal terms. (buyer-readonly)
  *   `isRfpTemplate` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the current deal is a RFP template. RFP template is created by buyer and not based on seller created products.
  *   `isSetupComplete` (*type:* `boolean()`, *default:* `nil`) - True, if the buyside inventory setup is complete for this deal. (readonly, except via OrderSetupCompleted action)
  *   `kind` (*type:* `String.t`, *default:* `adexchangebuyer#marketplaceDeal`) - Identifies what kind of resource this is. Value: the fixed string "adexchangebuyer#marketplaceDeal".
  *   `lastUpdateTimeMs` (*type:* `String.t`, *default:* `nil`) - The time (ms since epoch) when the deal was last updated. (readonly)
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the deal. (updatable)
  *   `productId` (*type:* `String.t`, *default:* `nil`) - The product-id from which this deal was created. (readonly, except on create)
  *   `productRevisionNumber` (*type:* `String.t`, *default:* `nil`) - The revision number of the product that the deal was created from (readonly, except on create)
  *   `programmaticCreativeSource` (*type:* `String.t`, *default:* `nil`) - Specifies the creative source for programmatic deals, PUBLISHER means creative is provided by seller and ADVERTISR means creative is provided by buyer. (buyer-readonly)
  *   `proposalId` (*type:* `String.t`, *default:* `nil`) - 
  *   `sellerContacts` (*type:* `list(GoogleApi.AdExchangeBuyer.V14.Model.ContactInformation.t)`, *default:* `nil`) - Optional Seller contact information for the deal (buyer-readonly)
  *   `sharedTargetings` (*type:* `list(GoogleApi.AdExchangeBuyer.V14.Model.SharedTargeting.t)`, *default:* `nil`) - The shared targeting visible to buyers and sellers. Each shared targeting entity is AND'd together. (updatable)
  *   `syndicationProduct` (*type:* `String.t`, *default:* `nil`) - The syndication product associated with the deal. (readonly, except on create)
  *   `terms` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.DealTerms.t`, *default:* `nil`) - The negotiable terms of the deal. (updatable)
  *   `webPropertyCode` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buyerPrivateData => GoogleApi.AdExchangeBuyer.V14.Model.PrivateData.t(),
          :creationTimeMs => String.t(),
          :creativePreApprovalPolicy => String.t(),
          :creativeSafeFrameCompatibility => String.t(),
          :dealId => String.t(),
          :dealServingMetadata => GoogleApi.AdExchangeBuyer.V14.Model.DealServingMetadata.t(),
          :deliveryControl => GoogleApi.AdExchangeBuyer.V14.Model.DeliveryControl.t(),
          :externalDealId => String.t(),
          :flightEndTimeMs => String.t(),
          :flightStartTimeMs => String.t(),
          :inventoryDescription => String.t(),
          :isRfpTemplate => boolean(),
          :isSetupComplete => boolean(),
          :kind => String.t(),
          :lastUpdateTimeMs => String.t(),
          :name => String.t(),
          :productId => String.t(),
          :productRevisionNumber => String.t(),
          :programmaticCreativeSource => String.t(),
          :proposalId => String.t(),
          :sellerContacts => list(GoogleApi.AdExchangeBuyer.V14.Model.ContactInformation.t()),
          :sharedTargetings => list(GoogleApi.AdExchangeBuyer.V14.Model.SharedTargeting.t()),
          :syndicationProduct => String.t(),
          :terms => GoogleApi.AdExchangeBuyer.V14.Model.DealTerms.t(),
          :webPropertyCode => String.t()
        }

  field(:buyerPrivateData, as: GoogleApi.AdExchangeBuyer.V14.Model.PrivateData)
  field(:creationTimeMs)
  field(:creativePreApprovalPolicy)
  field(:creativeSafeFrameCompatibility)
  field(:dealId)
  field(:dealServingMetadata, as: GoogleApi.AdExchangeBuyer.V14.Model.DealServingMetadata)
  field(:deliveryControl, as: GoogleApi.AdExchangeBuyer.V14.Model.DeliveryControl)
  field(:externalDealId)
  field(:flightEndTimeMs)
  field(:flightStartTimeMs)
  field(:inventoryDescription)
  field(:isRfpTemplate)
  field(:isSetupComplete)
  field(:kind)
  field(:lastUpdateTimeMs)
  field(:name)
  field(:productId)
  field(:productRevisionNumber)
  field(:programmaticCreativeSource)
  field(:proposalId)
  field(:sellerContacts, as: GoogleApi.AdExchangeBuyer.V14.Model.ContactInformation, type: :list)
  field(:sharedTargetings, as: GoogleApi.AdExchangeBuyer.V14.Model.SharedTargeting, type: :list)
  field(:syndicationProduct)
  field(:terms, as: GoogleApi.AdExchangeBuyer.V14.Model.DealTerms)
  field(:webPropertyCode)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.MarketplaceDeal do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.MarketplaceDeal.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.MarketplaceDeal do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
