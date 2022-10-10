if string.find(game.GetMap(), "rp_apex_industrial") == nil then return end

local IsOpened = false

local sbgatecmd = {
	description = "Toggle Shell Beach Gates (DvL+)",
	requiesAlive = true,
	onRun = function(ply, arg, rawText)
		if not ply:IsCPCommand() then
			ply:Notify("You are not authorized to use this command.")
			return
		end
		if IsOpened == false then
			for v,k in pairs(ents.FindByName("nexus_globe_bulkhead_open_button")) do
				k:Fire("Use")
			end
			ply:Notify("You have opened shell beach gate.")
			IsOpened = true
		elseif IsOpened == true then
			for v,k in pairs(ents.FindByName("nexus_globe_bulkhead_close_button")) do
				k:Fire("Use")
			end
			ply:Notify("You have closed shell beach gate.")
			IsOpened = false
		end	
	end
}

impulse.RegisterChatCommand("/togglesbgate", sbgatecmd)
