Hooks:PostHook(BlackMarketTweakData, "_init_characters", "post_init_tie_states", function(self, tweak_data)
	local characters_to_update = {"dragon", "jimmy", "bodhi", "jacket"}

	for _, character in ipairs(characters_to_update) do
		if self.characters.locked[character] then
			self.characters.locked[character].tie_on_sequence = false
			self.characters.locked[character].tie_off_sequence = true
		end
	end
end)
