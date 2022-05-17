_G.debug = true
local error = function(text) error("[ItemCreator.rblx]: " .. text); end;
local HttpService = game:GetService("HttpService");
local ec = loadstring(HttpService:GetAsync("https://github.com/UptightSL/ItemCreator.rblx/blob/main/source/error_codes.lua"))().codes;

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
        error()
        return;
    end;
end;

function getItemInfo(t, item)
    if (item.name and type(item.name) == "string") then
        addToTable(t, "name", item.name);
    elseif (item.name and type(item.name) ~= "string") then
        error(ec.itemNameNotString);
        return;
    end;

    if (item.itemtype and type(item.itemtype) == "string") then
        addToTable(t, "itemtype", item.itemtype);
    elseif (item.itemtype and type(item.itemtype) ~= "string") then
        error(ec.itemTypeNotString);
        return;
    end;

    if (item.material and type(item.material) == "string") then
        addToTable(t, "material", item.material);
    elseif (item.material and type(item.material) ~= "string") then
        error(ec.itemMaterialNotString);
        return;
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

        if item.damage.min_critical then
            addToTable(t, "min_critical", item.damage.min_critical);
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

        if item.enchants.fourth then
            addToTable(t, "enchant_fourth", item.enchants.fourth);
        end;

        if item.enchants.fifth then
            addToTable(t, "enchant_fifth");
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
        
        if item.attributes.isTradeable then
            addToTable(t, "isTradeable", item.attributes.isTradeable);
        end;
    end;
end;
