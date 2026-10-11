$version: "2"

namespace tech.maze.dtos.markets.models

use alloy.proto#protoEnabled
use smithy.api#Document
use smithy.api#Timestamp
use tech.maze.dtos.markets.enums#Type

list MarketDataProvidersMetaDatasList {
    member: MarketMetaDatas
}

@protoEnabled
structure Market {
    @required
    id: Document

    @required
    type: Type

    @required
    exchangeId: Document

    @required
    baseId: Document

    @required
    quoteId: Document

    /// Custom properties for a specific market type (e.g. options).
    specificData: Document

    @required
    dataProvidersMetaDatas: MarketDataProvidersMetaDatasList

    @required
    createdAt: Timestamp
}

@protoEnabled
structure MarketType {
    @required
    id: Document

    @required
    enum: Type
}
