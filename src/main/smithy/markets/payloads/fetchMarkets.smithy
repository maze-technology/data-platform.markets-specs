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

    /// Zero-based contiguous page index within this provider's response stream.
    @required
    @range(min: 0)
    pageIndex: Integer

    /// True when this page is the last page for the provider (may arrive out of order).
    @required
    isLast: Boolean

    @required
    @range(min: 0)
    skipped: Long

    @required
    dataProvider: Document
}
