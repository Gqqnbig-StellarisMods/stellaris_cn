local cn_path = "../cn/localisation/english/"
local fr_path = "../cn/localisation/french/"

local function french(filename)
	local f = io.open(fr_path .. filename:gsub("_english", "_french") , "wb")
	local replace
	for line in io.lines(cn_path .. filename) do
		if not replace then
			local fr_line = line:gsub("l_english:", "l_french:")
			f:write(fr_line, "\n")
			replace = true
		else
			f:write(line, "\n")
		end
	end

	f:close()
end

local list = {
"achievements_l_english.yml",
"ai_crisis_l_english.yml",
"apocalypse_l_english.yml",
"dip_messages_l_english.yml",
"event_chains_l_english.yml",
"events_2_l_english.yml",
"events_3_l_english.yml",
"events_4_l_english.yml",
"events_5_l_english.yml",
"events_l_english.yml",
"gamepad_indicator_text_l_english.yml",
"guardian_l_english.yml",
"horizonsignal_l_english.yml",
"l_english.yml",
"mandates_l_english.yml",
"marauder_l_english.yml",
"messages_l_english.yml",
"modifiers_2_l_english.yml",
"modifiers_3_l_english.yml",
"modifiers_l_english.yml",
"modifiers_utopia_l_english.yml",
"musicplayer_l_english.yml",
"name_lists_l_english.yml",
"pop_factions_l_english.yml",
"prescripted_l_english.yml",
"projects_2_l_english.yml",
"projects_3_l_english.yml",
"projects_4_l_english.yml",
"projects_5_l_english.yml",
"projects_l_english.yml",
"scripted_loc_l_english.yml",
"ship_sections_l_english.yml",
"standalone_l_english.yml",
"synthetic_dawn_events_l_english.yml",
"technology_l_english.yml",
"traditions_l_english.yml",
"triggers_effects_l_english.yml",
"tutorial_l_english.yml",
"unrest_l_english.yml",
"utopia_ascension_l_english.yml",
"utopia_l_english.yml",
"utopia_megastructures_l_english.yml",
}

for _,file in ipairs(list) do
	french(file)
end
