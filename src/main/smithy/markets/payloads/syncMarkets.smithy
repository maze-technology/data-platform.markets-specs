$version: "2"

namespace tech.maze.dtos.markets.payloads

use alloy.proto#protoEnabled
use tech.maze.dtos.markets.enums#SyncStatus
use tech.maze.events#event

@protoEnabled
@event(type: "tech.maze.markets.sync.request")
structure SyncMarketsRequest {}

list IncompleteDataProviders {
    member: String
}

@protoEnabled
@event(type: "tech.maze.markets.sync.response")
structure SyncMarketsResponse {
    @required
    skipped: Long

    @required
    status: SyncStatus

    /// Providers that did not finish when status is TIMEOUT or PARTIAL.
    incompleteProviders: IncompleteDataProviders
}
