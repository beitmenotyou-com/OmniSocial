import { PostCreated } from "../types/PostModule/PostModule"
import { Post } from "../types/schema"

export function handlePostCreated(event: PostCreated): void {
  let entity = new Post(event.params.id.toString())
  entity.id = event.params.id.toString()
  entity.author = event.params.author
  entity.content = event.params.content
  entity.timestamp = event.block.timestamp
  entity.save()
}
