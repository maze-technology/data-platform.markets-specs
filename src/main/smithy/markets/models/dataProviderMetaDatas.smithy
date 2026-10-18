$version: "2"

namespace tech.maze.dtos.markets.models

use alloy.proto#protoEnabled
use smithy.api#Document
use tech.maze.dtos.markets.enums#Type

map MarketMetaDatasExtraDatasMap {
    key: String
    value: String
}

map MarketMetaDatasToolBoxMap {
    key: String
    value: String
}

@protoEnabled
structure MarketMetaDatas {
    @required
    dataProviderId: Document

    @required
    market: MarketMetaDatasMarket

    @required
    extraDatas: MarketMetaDatasExtraDatasMap

    @required
    toolBox: MarketMetaDatasToolBoxMap
}

@protoEnabled
structure MarketMetaDatasMarket {
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
}
