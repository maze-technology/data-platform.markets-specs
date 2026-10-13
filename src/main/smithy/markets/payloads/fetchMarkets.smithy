$version: "2"

namespace tech.maze.dtos.markets.payloads

use alloy.proto#protoEnabled
use smithy.api#Document
use tech.maze.dtos.markets.models#MarketMetaDatas
use tech.maze.events#event

@protoEnabled
@event(type: "tech.maze.markets.fetch.request")
structure FetchMarketsRequest {}

@protoEnabled
@event(type: "tech.maze.markets.fetch.response")
structure FetchMarketsResponse {
    @required
    sourceRequest: FetchMarketsRequest

    @required
    marketMetaDatas: MarketMetaDatas

    @required
    isLast: Boolean

    @required
    @range(min: 0)
    skipped: Long

    @required
    dataProvider: Document
}
