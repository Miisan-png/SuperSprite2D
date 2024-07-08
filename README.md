# SuperSprite2D Plugin for Godot 4

## Description

This plugin extends the functionality of Godot 4's AnimatedSprite2D node, 
allowing you to easily call functions on specific frames of animations. 
This enhanced version supports calling built-in functions, provides more flexible argument passing, and allows for function looping.

## Installation

1. Download the `Addon or Releases` folder.
2. Place it in your Godot project's `addons` folder. 
3. Enable the plugin in Project -> Project Settings -> Plugins.

## Usage

1. In your scene, add an SuperSprite2D node and set up your animations as usual.
2. In the Inspector for the SuperSprite2D, you'll see a "Function Calls" array.
3. Click the dropdown next to "Function Calls" and select "New AnimationFunction".
4. For each new AnimationFunction, set:
   - Animation Name: The name of the animation this function call is for.
   - Frame: The frame number to call the function on.
   - Function Name: The name of the function to call.
   - Arguments: An array of arguments to pass to the function.
   - Target Type: Choose between Parent, Self, or Scene.
   - Loop: Enable if you want the function to be called repeatedly.
   - Loop Interval: Set how often the looped function should be called (e.g., every 2 times, every 3 times, etc.).

## Use Cases and Examples

### 1. Playing Sound Effects

```gdscript
# In the parent node's script
func play_sound(sound_name: String):
    if sound_name == "footstep":
      $AudioPlayer.play(walk

# In SuperSprite2D Inspector:
# Set up an AnimationFunction:
# - Animation Name: "run"
# - Frame: 2
# - Function Name: "play_sound"
# - Arguments: ["footstep"]
# - Target Type: Parent
# - Loop: true
# - Loop Interval: 2
```
This will play a footstep sound every other time frame 2 of the "run" animation is reached.

### 2. Spawning Particles

```gdscript
func spawn_particles(particle_scene: PackedScene, offset: Vector2):
    var particles = particle_scene.instantiate()
    particles.position = position + offset
    get_parent().add_child(particles)

# In SuperSprite2D Inspector:
# Set up an AnimationFunction:
# - Animation Name: "attack"
# - Frame: 5
# - Function Name: "spawn_particles"
# - Arguments: [preload("res://particles/slash.tscn"), Vector2(50, 0)]
# - Target Type: Self
```
This will spawn slash particles at a specific point in the attack animation.

## Notes
- The plugin uses Godot's built-in types for arguments, so you can pass any type that Godot supports in normal function calls.
- Be cautious when using the Scene target type, as it might couple your animation logic tightly to the scene structure.
- When using loop functionality, be mindful of performance if you're calling complex functions frequently.

## License

This plugin is released under the MIT License. See the LICENSE file for more details.

## Support

If you encounter any issues or have questions, please file an issue on the plugin's GitHub repository.

