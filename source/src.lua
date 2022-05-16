_G.debug = true
local error = function(text) error("[ItemSorter]: " .. text); end;

local function addToTable(tab, key, value)
    tab[key] = value;
end;

local function printTableContents(tab)
    if _G.debug == true then
        print("------------------------")
        for k,v in pairs(tab) do
            print("Key:     " .. k);
            print("Value:   " .. v);
            print("------------------------")
        end;
    else
        error("printTableContents not usable. errorcode: [COMPILE_LATER]")
        return;
    end;
end;

function getItemInfo(t, item)
    if item.name then
        addToTable(t, "name", item.name);
    end;

    if item.itemtype then
        addToTable(t, "itemtype", item.itemtype);
    end;

    if item.material then
        addToTable(t, "material", item.material);
    end;

    if item.damage then
        if item.damage.max then
            addToTable(t, "max_damage", item.damage.max);
        end;

        if item.damage.Min then
            addToTable(t, "min_damage", item.damage.Min);
        end;

        if item.damage.max_critical then
            addToTable(t, "max_critical", item.damage.max_critical);
        end;

        if (item.damage.min_critical and item.damage.min_critical > 100) then
            addToTable(t, "min_critical", item.damage.min_critical);
        elseif item.damage.min_critical > 100 then
            error("Min Critical Stack Damaged")
            return;
        end;

        if item.damage.critical_chance then
            addToTable(t, "critical_chance", item.damage.critical_chance);
        end;
    end;

    --> Max Enchants: normal == 3, debug == 5.
    if item.enchants then
        if item.enchants.base then
            addToTable(t, "enchant_base", item.enchants.base);
        end;

        if item.enchants.second then
            addToTable(t, "enchant_second", item.enchants.secondary);
        end;

        if item.enchants.third then
            addToTable(t, "enchant_third", item.enchants.third);
        end;

        if (item.enchants.fourth and _G.debug == true) then
            addToTable(t, "enchant_fourth", item.enchants.fourth);
        elseif (item.enchants.fourth and _G.debug == false) then
            error("Fourth Enchant Found. Value: " .. item.enchants.fourth);
            return;
        end;

        if (item.enchants.fifth and _G.debug == true) then
            addToTable(t, "enchant_fifth");
        elseif (item.enchants.fifth and _G.debug == false) then
            error("Fifth Enchant Found. Value: " .. item.enchants.fifth);
            return;
        end;
    end;

    if item.attributes then
        if item.attributes.isOwned then
            addToTable(t, "isOwned", item.attributes.isOwned);
        end;

        if item.attributes.isMarked then
            addToTable(t, "isMarked", item.attributes.isMarked);
        end;

        if item.attributes.isDeveloperItem then
            addToTable(t, "isDeveloperItem", item.attributes.isDeveloperItem);
        end;
    end;
end;
