import { IdentityCreated } from "../types/BridgeIDModule/BridgeIDModule"
import { Identity } from "../types/schema"

export function handleIdentityCreated(event: IdentityCreated): void {
  let entity = new Identity(event.params.user.toHex())
  entity.address = event.params.user
  entity.username = event.params.username
  entity.domain = event.params.domain
  entity.verified = false
  entity.save()
}
