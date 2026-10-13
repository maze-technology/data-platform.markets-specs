$version: "2"

namespace tech.maze.dtos.markets.payloads

use alloy.proto#protoEnabled
use tech.maze.events#event

@protoEnabled
@event(type: "tech.maze.markets.sync.request")
structure SyncMarketsRequest {}

@protoEnabled
@event(type: "tech.maze.markets.sync.response")
structure SyncMarketsResponse {
    @required
    skipped: Long
}
