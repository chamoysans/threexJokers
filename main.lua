----------------------------------------
--                                    --
--            Hey Viewer!             --
--                                    --
--   So uhhh the actual joker code    --
--      is in the jokers folder,      --
--                                    --
--        If you need anything        --
--        else or want to ask         --
--        questions, DM me in         --
--         Discord: @taco78           --
--                                    --
----------------------------------------

local common = {
    "seenoevil",
    "speaknoevil",
    "hearnoevil",
    "jimmy",
    "clowncar",
    "loot",
    "sharpshooter",
    "blank",
    "carto",
    "student",
    "fifth",
    "retriggerNum/firebrick",
    "retriggerNum/coral",
    "retriggerNum/golden",
    "retriggerNum/khaki",
    "retriggerNum/olive",
    "retriggerNum/seagreen",
    "retriggerNum/aqua",
    "retriggerNum/steel",
    "retriggerNum/slate",
    "retriggerNum/orchid",
    "skinny",
    "portly",
    "mayan",
    "rotten",
    "cash",
    "isolation",
    "love",
    "celeb/lime",
    "celeb/licorice",
    "celeb/agent",
    "celeb/actor",
}


SMODS.Atlas({
    key = "a_threex_placeholder",
    path = "placeholders.png",
    px = 71,
    py = 95
})

local directory = "jokers/" -- Change this to your actual directory path

testDecks = true

for _, filename in ipairs(common) do
    local filePath = directory .. "common/" .. filename .. ".lua"
    assert(SMODS.load_file(filePath))()

end

function Card:is_face(from_boss)
    if self.debuff and not from_boss then return end
    local id = self:get_id()
    if next(find_joker("Pareidolia")) then
        return true
    end
    if id == 11 or id == 12 or id == 13 then
        if next(find_joker("isolation")) then
            return false
        else
            return true
        end
    end
end

if testDecks then
    SMODS.Back {
        key = 'studentDeck',
        loc_txt = {
            name = "Student",
            text = {
                "AT"
            }
        },
        name = "studentDeck",
        pos = {x = 1, y = 2},
        apply = function(self)
            G.E_MANAGER:add_event(Event({
                func = function()
      
                    add_joker("j_threex_student", nil, false, false)
                    return true
                end
            }))
        end,
        unlocked = true,
    } 
    
    SMODS.Back {
        key = 'sharpDeck',
        loc_txt = {
            name = "Sharpshooter",
            text = {
                "AT"
            }
        },
        name = "sharpDeck",
        pos = {x = 1, y = 2},
        apply = function(self)
            G.E_MANAGER:add_event(Event({
                func = function()
    
                    for index = #G.playing_cards, 1, -1 do
                    G.playing_cards[index]:set_ability(G.P_CENTERS.m_wild)
                    end
    
                    add_joker("j_threex_sharp", nil, false, false)
                    return true
                end
            }))
        end,
        unlocked = true,
    } 


    SMODS.Back {
        key = 'portlyDeck',
        loc_txt = {
            name = "Portly",
            text = {
                "AT"
            }
        },
        name = "portlyDeck",
        pos = {x = 1, y = 2},
        apply = function(self)
            G.E_MANAGER:add_event(Event({
                func = function()
      
                    add_joker("j_threex_portly", nil, false, false)
                    return true
                end
            }))
        end,
        unlocked = true,
      } 

      SMODS.Back {
        key = 'SkinnyDeck',
        loc_txt = {
            name = "Skinny",
            text = {
                "AT"
            }
        },
        name = "SkinnyDeck",
        pos = {x = 1, y = 2},
        apply = function(self)
            G.E_MANAGER:add_event(Event({
                func = function()
      
                    add_joker("j_threex_skinny", nil, false, false)
                    return true
                end
            }))
        end,
        unlocked = true,
      } 

      SMODS.Back {
        key = 'lootDeck',
        loc_txt = {
            name = "Loot",
            text = {
                "AT"
            }
        },
        name = "lootDeck",
        pos = {x = 1, y = 2},
        apply = function(self)
            G.E_MANAGER:add_event(Event({
                func = function()
      
                    add_joker("j_threex_loot", nil, false, false)
                    return true
                end
            }))
        end,
        unlocked = true,
      } 

      

      SMODS.Back {
        key = 'jimmyDeck',
        loc_txt = {
            name = "Jimmy",
            text = {
                "AT"
            }
        },
        name = "Jimmy",
        pos = {x = 1, y = 2},
        apply = function(self)
            G.E_MANAGER:add_event(Event({
                func = function()
      
                    add_joker("j_threex_jimmy", nil, false, false)
                    return true
                end
            }))
        end,
        unlocked = true,
      } 

      SMODS.Back {
        key = 'clownDeck',
        loc_txt = {
            name = "Clown Car",
            text = {
                "AT"
            }
        },
        name = "clownDeck",
        pos = {x = 1, y = 2},
        apply = function(self)
            G.E_MANAGER:add_event(Event({
                func = function()
      
                    add_joker("j_threex_clowncar", nil, false, false)
                    return true
                end
            }))
        end,
        unlocked = true,
      } 

      SMODS.Back {
        key = 'isolationDeck',
        loc_txt = {
            name = "Isolation",
            text = {
                "AT"
            }
        },
        name = "isolationDeck",
        pos = {x = 1, y = 2},
        apply = function(self)
            G.E_MANAGER:add_event(Event({
                func = function()

                    for index = #G.playing_cards, 1, -1 do
                        local suit = "S_"
                        local rank = "J"
    
                        G.playing_cards[index]:set_base(G.P_CARDS[suit .. rank])
                    end
      
                    add_joker("j_threex_isolation", "negative", false, false)
                    add_joker("j_ride_the_bus", "negative", false, false)
                    return true
                end
            }))
        end,
        unlocked = true,
      } 

      SMODS.Back {
        key = 'limeDeck',
        loc_txt = {
            name = "Lime",
            text = {
                "AT"
            }
        },
        name = "limeDeck",
        pos = {x = 1, y = 2},
        apply = function(self)
            G.E_MANAGER:add_event(Event({
                func = function()
                    for index = #G.playing_cards, 1, -1 do
                        local suit = "C_"
                        local rank = "T"
      
                        G.playing_cards[index]:set_base(G.P_CARDS[suit .. rank])
                    end
      
                    add_joker("j_threex_lime", nil, false, false)
                    return true
                end
            }))
        end,
        unlocked = true,
      } 

end
