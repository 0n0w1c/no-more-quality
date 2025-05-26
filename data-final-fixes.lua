if not mods["quality"] then return end
if mods["crushing-industry"] and settings.startup["crushing-industry-space-crusher"].value == true then return end

for key, value in pairs(data.raw.quality) do
    if key == "normal" or key == "quality-unknown" then
        value.hidden = true
        value.next = nil
    else
        data.raw.quality[key].hidden = true
    end
end

for _, value in pairs(data.raw.module) do
    if value.effect then
        value.effect.quality = nil
    end
end

if data.raw.module["quality-module"] then data.raw.module["quality-module"].hidden = true end
if data.raw.module["quality-module-2"] then data.raw.module["quality-module-2"].hidden = true end
if data.raw.module["quality-module-3"] then data.raw.module["quality-module-3"].hidden = true end

if data.raw.recipe["quality-module"] then data.raw.recipe["quality-module"] = nil end
if data.raw.recipe["quality-module-2"] then data.raw.recipe["quality-module-2"] = nil end
if data.raw.recipe["quality-module-3"] then data.raw.recipe["quality-module-3"] = nil end
if data.raw.recipe["quality-module-recycling"] then data.raw.recipe["quality-module-recycling"] = nil end
if data.raw.recipe["quality-module-2-recycling"] then data.raw.recipe["quality-module-2-recycling"] = nil end
if data.raw.recipe["quality-module-3-recycling"] then data.raw.recipe["quality-module-3-recycling"] = nil end

if data.raw.technology["quality-module"] then data.raw.technology["quality-module"] = nil end
if data.raw.technology["quality-module-2"] then data.raw.technology["quality-module-2"] = nil end
if data.raw.technology["quality-module-3"] then data.raw.technology["quality-module-3"] = nil end
if data.raw.technology["epic-quality"] then data.raw.technology["epic-quality"] = nil end
if data.raw.technology["legendary-quality"] then data.raw.technology["legendary-quality"] = nil end

if data.raw.technology["modules"] then data.raw.technology["modules"].icon = "__base__/graphics/technology/module.png" end

if data.raw["tips-and-tricks-item"]["quality"] then data.raw["tips-and-tricks-item"]["quality"] = nil end
if data.raw["tips-and-tricks-item"]["quality-modules"] then data.raw["tips-and-tricks-item"]["quality-modules"] = nil end
if data.raw["tips-and-tricks-item"]["quality-factoriopedia"] then data.raw["tips-and-tricks-item"]["quality-factoriopedia"] = nil end
if data.raw["tips-and-tricks-item"]["quality-probabilities"] then data.raw["tips-and-tricks-item"]["quality-probabilities"] = nil end

if data.raw["produce-achievement"]["crafting-with-quality"] then data.raw["produce-achievement"]["crafting-with-quality"] = nil end
if data.raw["produce-achievement"]["my-modules-are-legendary"] then data.raw["produce-achievement"]["my-modules-are-legendary"] = nil end

if data.raw["virtual-signal"]["signal-any-quality"] then data.raw["virtual-signal"]["signal-any-quality"] = nil end

if data.raw.sprite["quality_info"] then
    data.raw.sprite["quality_info"].filename = "__no-more-quality__/graphics/icons/faux-quality-info-blue.png"
end

if mods["space-age"] then
    if data.raw["equip-armor-achievement"]["look-at-my-shiny-rare-armor"] then data.raw["equip-armor-achievement"]["look-at-my-shiny-rare-armor"] = nil end
    if data.raw["module-transfer-achievement"]["make-it-better"] then data.raw["module-transfer-achievement"]["make-it-better"] = nil end
    if data.raw["place-equipment-achievement"]["no-room-for-more"] then data.raw["place-equipment-achievement"]["no-room-for-more"] = nil end
    if data.raw["use-item-achievement"]["todays-fish-is-trout-a-la-creme"] then data.raw["use-item-achievement"]["todays-fish-is-trout-a-la-creme"] = nil end
end
