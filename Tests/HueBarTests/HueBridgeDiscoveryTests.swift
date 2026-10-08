import Network
import Testing

@testable import HueBar

struct HueBridgeDiscoveryTests {
    @Test func resolutionParametersForceIPv4() throws {
        let parameters = HueBridgeDiscovery.resolutionParameters()
        let ipOptions = try #require(
            parameters.defaultProtocolStack.internetProtocol as? NWProtocolIP.Options
        )
        #expect(ipOptions.version == .v4)
    }
}
