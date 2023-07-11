("ENGINE.CGO"
 ("types-h.o"
  "vu1-macros.o"

  ;; the "math" section
  "math.o"
  "vector-h.o"
  "gravity-h.o"
  "bounding-box-h.o"
  "matrix-h.o"
  "quaternion-h.o"
  "euler-h.o"
  "transform-h.o"
  "geometry-h.o"
  "trigonometry-h.o"
  "transformq-h.o"
  "bounding-box.o"
  "matrix.o"
  "transform.o"
  "quaternion.o"
  "euler.o"
  "geometry.o"
  "trigonometry.o"


  "gsound-h.o"
  "timer-h.o"
  "timer.o"
  "vif-h.o"
  "dma-h.o"
  "video-h.o"
  "vu1-user-h.o"
  "dma.o"
  "dma-buffer.o"
  "dma-bucket.o"
  "dma-disasm.o"
  "pckernel-h.o" ;; added
  "pckernel-impl.o" ;; added
  "pc-debug-common.o" ;; added
  "pc-debug-methods.o" ;; added
  "pad.o"
  "gs.o"
  "display-h.o"
  "vector.o"
  "file-io.o"
  "loader-h.o"
  "texture-h.o"
  "level-h.o"
  "math-camera-h.o"
  "math-camera.o"
  "font-h.o"
  "decomp-h.o"
  "display.o"
  "connect.o"
  "text-h.o"
  "settings-h.o"
  "knuth-rand.o" ;; added
  "capture.o"
  "memory-usage-h.o"
  "texture.o"
  "main-h.o"
  "mspace-h.o"
  "drawable-h.o"
  "drawable-group-h.o"
  "drawable-inline-array-h.o"
  "draw-node-h.o"
  "drawable-tree-h.o"
  "drawable-actor-h.o"
  "drawable-ambient-h.o"
  "game-task-h.o"
  "hint-control-h.o"
  "generic-h.o"
  "lights-h.o"
  "ocean-h.o"
  "ocean-trans-tables.o"
  "ocean-tables.o"
  "ocean-frames.o"
  "sky-h.o"
  "mood-h.o"
  "time-of-day-h.o"
  "art-h.o"
  "generic-vu1-h.o"
  "merc-h.o"
  "generic-merc-h.o"
  "generic-tie-h.o"
  "generic-work-h.o"
  "shadow-cpu-h.o"
  "shadow-vu1-h.o"
  "memcard-h.o"
  "game-info-h.o"
  "wind-h.o"
  "prototype-h.o"
  "joint-h.o"
  "bones-h.o"
  "engines.o"
  "res-h.o"
  "res.o"
  "lights.o"
  "dynamics-h.o"
  "surface-h.o"
  "pat-h.o"
  "fact-h.o"
  "aligner-h.o"
  "game-h.o"
  "generic-obs-h.o"
  "pov-camera-h.o"
  "sync-info-h.o"
  "smush-control-h.o"
  "trajectory-h.o"
  "debug-h.o"
  "joint-mod-h.o"
  "collide-func-h.o"
  "collide-mesh-h.o"
  "collide-shape-h.o"
  "collide-target-h.o"
  "collide-touch-h.o"
  "collide-edge-grab-h.o"
  "process-drawable-h.o"
  "effect-control-h.o"
  "collide-frag-h.o"
  "projectiles-h.o"
  "target-h.o"
  "depth-cue-h.o"
  "stats-h.o"
  "bsp-h.o"
  "collide-cache-h.o"
  "collide-h.o"
  "shrubbery-h.o"
  "tie-h.o"
  "tfrag-h.o"
  "background-h.o"
  "subdivide-h.o"
  "entity-h.o"
  "sprite-h.o"
  "shadow-h.o"
  "eye-h.o"
  "sparticle-launcher-h.o"
  "sparticle-h.o"
  "actor-link-h.o"
  "camera-h.o"
  "cam-debug-h.o"
  "cam-interface-h.o"
  "cam-update-h.o"
  "assert-h.o"
  "hud-h.o"
  "progress-h.o"
  "rpc-h.o"
  "path-h.o"
  "navigate-h.o"
  "load-dgo.o"
  "ramdisk.o"
  "gsound.o"
  "transformq.o"
  "collide-func.o"
  "joint.o"
  "cylinder.o"
  "wind.o"
  "bsp.o"
  "subdivide.o"
  "sprite.o"
  "sprite-distort.o"
  "debug-sphere.o"
  "debug.o"
  "merc-vu1.o"
  "merc-blend-shape.o"
  "merc.o"
  "ripple.o"
  "bones.o"
  "generic-vu0.o"
  "generic.o"
  "generic-vu1.o"
  "generic-effect.o"
  "generic-merc.o"
  "generic-tie.o"
  "shadow-cpu.o"
  "shadow-vu1.o"
  "depth-cue.o"
  "font.o"
  "decomp.o"
  "background.o"
  "draw-node.o"
  "shrubbery.o"
  "shrub-work.o"
  "tfrag-near.o"
  "tfrag.o"
  "tfrag-methods.o"
  "tfrag-work.o"
  "tie.o"
  "tie-near.o"
  "tie-work.o"
  "tie-methods.o"
  "sync-info.o"
  "trajectory.o"
  "sparticle-launcher.o"
  "sparticle.o"
  "entity-table.o"
  "loader.o"
  "task-control-h.o"
  "speedruns-h.o" ;; added
  "game-info.o"
  "game-save.o"
  "settings.o"
  "pc-anim-util.o" ;; added
  "autosplit-h.o" ;; added
  "autosplit.o" ;; added
  "speedruns.o" ;; added
  "pckernel-common.o" ;; added
  "pckernel.o" ;; added
  "buttontext2.o" ;;added
  "vectoredit.o" ;;added
  "mood-tables.o"
  "mood.o"
  "weather-part.o"
  "time-of-day.o"
  "sky-utils.o"
  "sky.o"
  "sky-tng.o"
  "load-boundary-h.o"
  "load-boundary.o"
  "load-boundary-data.o"
  "level-info.o"
  "level.o"
  "text.o"
  "collide-probe.o"
  "collide-frag.o"
  "collide-mesh.o"
  "collide-touch.o"
  "collide-edge-grab.o"
  "collide-shape.o"
  "collide-shape-rider.o"
  "collide.o"
  ;;  "collide-planes.o"
  "merc-death.o"
  "water-h.o"
  "camera.o"
  "cam-interface.o"
  "cam-master.o"
  "cam-states.o"
  "cam-states-dbg.o"
  "cam-combiner.o"
  "cam-update.o"
  "vol-h.o"
  "cam-layout.o"
  "cam-debug.o"
  "cam-start.o"
  "process-drawable.o"
  "hint-control.o"
  "ambient.o"
  "assert.o"
  "generic-obs.o"
  "target-util.o"
  "target-part.o"
  "collide-reaction-target.o"
  "logic-target.o"
  "sidekick.o"
  "voicebox.o"
  "target-handler.o"
  "target.o"
  "target2.o"
  "target-death.o"
  "menu.o"
  "drawable.o"
  "drawable-group.o"
  "drawable-inline-array.o"
  "drawable-tree.o"
  "prototype.o"
  "main-collide.o"
  "video.o"
  "main.o"
  "collide-cache.o"
  "relocate.o"
  "memory-usage.o"
  "entity.o"
  "path.o"
  "vol.o"
  "navigate.o"
  "aligner.o"
  "effect-control.o"
  "water.o"
  "collectables-part.o"
  "collectables.o"
  "task-control.o"
  "process-taskable.o"
  "pov-camera.o"
  "powerups.o"
  "crates.o"
  "hud.o"
  "hud-classes.o"
  "progress-static.o"
  "progress-part.o"
  "progress-draw.o"
  "progress.o"
  "progress-pc.o" ;; added
  "credits.o"
  "projectiles.o"
  "ocean.o"
  "ocean-vu0.o"
  "ocean-texture.o"
  "ocean-mid.o"
  "ocean-transition.o"
  "ocean-near.o"
  "shadow.o"
  "eye.o"
  "glist-h.o"
  "glist.o"
  "anim-tester.o"
  "viewer.o"
  "part-tester.o"
  "default-menu.o"
  "anim-tester-x.o" ;; added
  "entity-debug.o" ;; added
  "subtitle.o" ;; added
  "default-menu-pc.o" ;; added
 ))

