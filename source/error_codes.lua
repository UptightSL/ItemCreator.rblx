err = {
    ["ERR_FTL"] = "0x7fffffffeae0"; --> Failed to Load
    ["ERR_PTCNU"] = "0x7fffffffeb00"; --> printTableContentsNotUseable
    ["ERR_MCSO"] = "0x7fffffffeb20"; --> MinCriticalStackOverlimit
    ["ERR_XCSO"] = "0x7fffffffeb40"; --> MaxCriticalStackOverlimit
    ["ERR_ICAL"] = "0x7fffffffeb60"; --> ItemCreatorAlreadyLoaded
}

codes = {
    ["failedtoload"] = "ItemCreator.rblx Failed to Load. " .. err.ERR_FTL;
    ["printTableContentsNotUseable"] = "printTableContents is not useable. " .. err.ERR_PTCNU;
    ["MinCriticalStackOverlimit"] = "";
}
