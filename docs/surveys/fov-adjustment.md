---
doc_id: HC-SURV-014
doc_owner: OneSurvey Support Team
---

# FoV Adjustment

## Overview
Use FoV (Field of View) Adjustment to control how each camera or directional element covers the floor plan.  
This is where you tune coverage direction, width, depth, and visibility styling so teams can review intent clearly.

<div class="os-screenshot">
  <div class="os-screenshot-card">
    <video controls preload="metadata" playsinline style="width: 100%; height: auto; display: block;" src="../../assets/videos/fov-adjustment.mp4">
      Your browser does not support the video tag.
    </video>
  </div>
  <p class="os-screenshot-caption">FoV panel walkthrough for direction, angle, depth, and multi-FoV configuration.</p>
</div>

## Open FoV Controls
1. Open a survey and select an element on the canvas.
2. In the [Element Sidebar](design.md), select **FoV**.
3. Use the Field of View panel to update coverage settings.

## What You Can Adjust
- **Direction**: rotate where the FoV points.
- **Angle**: widen or narrow the coverage cone.
- **Depth**: increase or reduce how far coverage extends.
- **Color**: set the FoV color (HEX) for clarity on busy plans.
- **Opacity**: control how transparent the coverage overlay appears.

## Multiple FoVs on One Element
One element can use multiple FoVs when you need separate viewing zones.

1. Open FoV controls for the selected element.
2. Use **Add FoV** to create another coverage zone.
3. Select each FoV in the list and adjust its direction, angle, depth, and color independently.
4. Remove extra FoVs you no longer need.

The current UI supports adding multiple FoVs (up to four per element). One FoV must remain.

## Recommended Workflow
1. Place the element on the [survey canvas](index.md#canvas-workspace-basics).
2. Set direction first, then tune angle and depth.
3. Adjust color/opacity so coverage remains readable with other elements.
4. Recheck placement with [Visibility Filters](visibility-filters.md) before final review.

## Related Pages
- [Element Sidebar](design.md)
- [Element Information](element-information.md)
- [Drag and Drop Elements](drag-and-drop.md)
- [Visibility Filters](visibility-filters.md)
