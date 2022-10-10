if string.find(game.GetMap(), "rp_apex_industrial") == nil then return end

local sbgateson = {
	description = "Opens Shell Beach Gates (DvL+)",
	requiesAlive = true,
	onRun = function(ply, arg, rawText)
		if not ply:IsCPCommand() then
			ply:Notify("You are not authorized to use this command.")
			return
		end

		for v,k in pairs(ents.FindByName("nexus_globe_bulkhead_open_button")) do
			k:Fire("Use")
		end
		ply:Notify("You have opened shell beach gate.")
	end
}

local sbgatesoff = {
	description = "Closes Shell Beach Gates (DvL+)",
	requiesAlive = true,
	onRun = function(ply, arg, rawText)
		if not ply:IsCPCommand() then
			ply:Notify("You are not authorized to use this command.")
			return
		end

		for v,k in pairs(ents.FindByName("nexus_globe_bulkhead_close_button")) do
			k:Fire("Use")
		end
		ply:Notify("You have closed shell beach gate.")
	end
}

impulse.RegisterChatCommand("/sbclose", sbgatesoff)
impulse.RegisterChatCommand("/sbopen", sbgateson)