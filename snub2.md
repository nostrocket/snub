# Snub
### I didn't choose the snub life; the snub life chose me.
Github did something recently which really annoyed me, and its become obvious that storing canonical git repositories on centralised third-party infrastructure is no longer a viable approach for open source projects.

This is especially true if you're working on freedom tech.

![](https://image.nostr.build/b87d253e485246c32a4e062d21db046994daba3617d8a4c9bf60ceb3de05adc5.jpg)

### Solution Requirements
* 100% compatible with existing git tooling
* origin (bare) repositories are referenced by event ID and not a URL (since URLs can change)
* users can create new origin repositories using their nostr keypair and without needing a password
* users can push to an origin that they own by using their nostr keypair and without needing a password
* repository owners can nominate maintainers who can merge pull requests
* pull requests are just events
* merging a pull request can be done using an event
* 