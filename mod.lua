function data()
return {
	info = {
		minorVersion = 0,
		severityAdd = "NONE",
		severityRemove = "WARNING",
		name = _("mod_name"),
		description = _("mod_desc"),
		params = {
			{
				key = "ks_signal_rgb_sbr",
				name = _("Signalbrückenausleger"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },
				defaultIndex = 1,
			},
			{
				key = "ks_signal_rgb_fm",
				name = _("Flachmast"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },
				defaultIndex = 1,
			},
			{
				key = "ks_signal_rgb_amhl",
				name = _("Langer Auslegermast"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },
				defaultIndex = 1,
			},
			{
				key = "ks_signal_rgb_side",
				name = _("Linkseitige Signale"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },
				defaultIndex = 1,
			},
			{
				key = "ks_signal_rgb_zs3_v",
				name = _("Zs3/Zs3v"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },
				defaultIndex = 0,
			},
			{
				key = "ks_signal_rgb_zs2_v",
				name = _("Zs2/Zs2v"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },
				defaultIndex = 0,
			},
			{
				key = "ks_signal_rgb_vkb",
				name = _("Verkürzter Bremswegabstand"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },
				defaultIndex = 0,
			},
			{
				key = "ks_signal_rgb_wie",
				name = _("Vorsignalwiederholer"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },
				defaultIndex = 0,
			},
			{
				key = "ks_signal_rgb_kl",
				name = _("Kennlicht"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },
				defaultIndex = 0,
			},
			{
				key = "ks_signal_rgb_shl",
				name = _("Sh 1"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },
				defaultIndex = 0,
			},
			{
				key = "ks_signal_rgb_zsOne",
				name = _("Zs 1"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },
				defaultIndex = 0,
			},
			{
				key = "ks_signal_rgb_zs6",
				name = _("Zs 6"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },
				defaultIndex = 0,
			},
			{
				key = "ks_signal_rgb_zs7",
				name = _("Zs 7"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },
				defaultIndex = 0,
			},
			{
				key = "ks_signal_rgb_zs13",
				name = _("Zs 13"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },
				defaultIndex = 0,
			},
			{
				key = "ks_signal_rgb_zp9",
				name = _("Zp 9"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },
				defaultIndex = 0,
			},
			{
				key = "ks_signal_rgb_dark",
				name = _("LZB Dunkelschaltung"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },
				defaultIndex = 0,
			},
			{
				key = "ks_signal_rgb_waypoint",
				name = _("Wegpunkte"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },
				defaultIndex = 0,
			},
		},
		modid = "modwerkstatt_ks_signale_rgb_1",
		authors = {
			{
				name = "ModWerkstatt",
				role = "CREATOR",
				text = "Modell, Mapping and Textures",
			},
		},
		url = "",
		steamId = 0,
		tags = { "Signal"},
		dependencies = {},
	},
	runFn = function (settings, modParams)

		local sbrFilter = function(fileName, data)
			if data.metadata.signal and data.metadata.ksSignalrgb and data.metadata.ksSignalrgb.signalPole == "sbr" then
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
				--return false
			end
			--return true
			return data
		end

		local fmFilter = function(fileName, data)
			if data.metadata.signal and data.metadata.ksSignalrgb and data.metadata.ksSignalrgb.signalPole == "fm" then
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end

		local amhlFilter = function(fileName, data)
			if data.metadata.signal and data.metadata.ksSignalrgb and data.metadata.ksSignalrgb.signalPole == "amhl" then
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end

		local sideFilter = function(fileName, data)
			if data.metadata.signal and data.metadata.ksSignalrgb and data.metadata.ksSignalrgb.side == "left" then
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end

		local zs3vFilter = function(fileName, data)
			if data.metadata.signal and data.metadata.ksSignalrgb and data.metadata.ksSignalrgb.zs3Zs3v == true then
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end

		local zs2vFilter = function(fileName, data)
			if data.metadata.signal and data.metadata.ksSignalrgb and data.metadata.ksSignalrgb.zs2Zs2v == true then
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end

		local vkbFilter = function(fileName, data)
			if data.metadata.signal and data.metadata.ksSignalrgb and data.metadata.ksSignalrgb.vkb == true then
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end

		local wieFilter = function(fileName, data)
			if data.metadata.signal and data.metadata.ksSignalrgb and data.metadata.ksSignalrgb.wied == true then
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end
		local klFilter = function(fileName, data)
			if data.metadata.signal and data.metadata.ksSignalrgb and data.metadata.ksSignalrgb.Kl == true then
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end
		local sh1Filter = function(fileName, data)
			if data.metadata.signal and data.metadata.ksSignalrgb and data.metadata.ksSignalrgb.Sh1 == true then
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end
		local zs1Filter = function(fileName, data)
			if data.metadata.signal and data.metadata.ksSignalrgb and data.metadata.ksSignalrgb.Zs1 == true then
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end
		local zs6Filter = function(fileName, data)
			if data.metadata.signal and data.metadata.ksSignalrgb and data.metadata.ksSignalrgb.Zs6 == true then
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end
		local zs7Filter = function(fileName, data)
			if data.metadata.signal and data.metadata.ksSignalrgb and data.metadata.ksSignalrgb.Zs7 == true then
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end
		local zp9Filter = function(fileName, data)
			if data.metadata.signal and data.metadata.ksSignalrgb and data.metadata.ksSignalrgb.Zp9 == true then
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end
		local zs13Filter = function(fileName, data)
			if data.metadata.signal and data.metadata.ksSignalrgb and data.metadata.ksSignalrgb.Zs13 == true then
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end
		local darkFilter = function(fileName, data)
			if data.metadata.signal and data.metadata.ksSignalrgb and data.metadata.ksSignalrgb.dunk == true then
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end
		local waypointFilter = function(fileName, data)
			if data.metadata.signal and data.metadata.ksSignalrgb and data.metadata.ksSignalrgb.waypoint == true then
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end

		if modParams[getCurrentModId()] ~= nil then
			local params = modParams[getCurrentModId()]
			if params["ks_signal_rgb_sbr"] == 0 then
				--addFileFilter("model/signal", sbrFilter)
				addModifier("loadModel", sbrFilter)
			end
			if params["ks_signal_rgb_fm"] == 0 then
				addModifier("loadModel", fmFilter)
			end
			if params["ks_signal_rgb_amhl"] == 0 then
				addModifier("loadModel", amhlFilter)
			end
			if params["ks_signal_rgb_side"] == 0 then
				addModifier("loadModel", sideFilter)
			end
			if params["ks_signal_rgb_zs3_v"] == 0 then
				addModifier("loadModel", zs3vFilter)
			end
			if params["ks_signal_rgb_zs2_v"] == 0 then
				addModifier("loadModel", zs2vFilter)
			end
			if params["ks_signal_rgb_vkb"] == 0 then
				addModifier("loadModel", vkbFilter)
			end
			if params["ks_signal_rgb_wie"] == 0 then
				addModifier("loadModel", wieFilter)
			end
			if params["ks_signal_rgb_kl"] == 0 then
				addModifier("loadModel", klFilter)
			end
			if params["ks_signal_rgb_shl"] == 0 then
				addModifier("loadModel", sh1Filter)
			end
			if params["ks_signal_rgb_zsOne"] == 0 then
				addModifier("loadModel", zs1Filter)
			end
			if params["ks_signal_rgb_zs6"] == 0 then
				addModifier("loadModel", zs6Filter)
			end
			if params["ks_signal_rgb_zs7"] == 0 then
				addModifier("loadModel", zs7Filter)
			end
			if params["ks_signal_rgb_zp9"] == 0 then
				addModifier("loadModel", zp9Filter)
			end
			if params["ks_signal_rgb_zs13"] == 0 then
				addModifier("loadModel", zs13Filter)
			end
			if params["ks_signal_rgb_dark"] == 0 then
				addModifier("loadModel", darkFilter)
			end
			if params["ks_signal_rgb_waypoint"] == 0 then
				addModifier("loadModel", waypointFilter)
			end

		else
			--addFileFilter("model/signal", sbrFilter)
			addModifier("loadModel", sideFilter)
			addModifier("loadModel", zs3vFilter)
			addModifier("loadModel", zs2vFilter)
			addModifier("loadModel", vkbFilter)
			addModifier("loadModel", wieFilter)
			addModifier("loadModel", klFilter)
			addModifier("loadModel", sh1Filter)
			addModifier("loadModel", zs1Filter)
			addModifier("loadModel", zs6Filter)
			addModifier("loadModel", zs7Filter)
			addModifier("loadModel", zp9Filter)
			addModifier("loadModel", zs13Filter)
			addModifier("loadModel", darkFilter)
			addModifier("loadModel", waypointFilter)
		end
	end
}
end
