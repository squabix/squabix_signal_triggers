# SQUABIX Signal Triggers

Nodes that react to a signal. No code needed.

## Classes

- `SignalTrigger`
- `SignalAnimationTrigger`
- `MeshFlashTrigger`

## Use

1. Add a trigger as a child of the node with the signal.
2. Set `signal_name`.
3. For `SignalAnimationTrigger`, set `anim_player` and `anim_name`.
4. For `MeshFlashTrigger`, set `mesh_root` and `flash_color`.

Set `custom_target` to listen to a different node.
Extend `SignalTrigger` and override `trigger()` to make your own.

## Demo

See it in the game: https://github.com/squabix/craftlander

## Needs

Godot 4.5 or newer.

## License

MIT. See `LICENSE`.
Icons are from another project. See `THIRD_PARTY.md`.
