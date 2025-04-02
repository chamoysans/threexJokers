local jokerName = "money"

local jokerThing = SMODS.Joker{
    name = jokerName, 
    key = "j_threex_" .. jokerName, 
    config = {
      extra = {
        money = 2
      }
    }, 
    pos = {x = 3, y = 6}, 
    loc_txt = {
      name = "Money", 
      text = {
        "{C:money}$1{} at end of round",
        "per {C:attention}Gold Card{} in full deck,"
      }
    }, 
    rarity = 1, 
    cost = 5, 
    order = 76,
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true, 
    atlas = "a_threex_sheet",
    loc_vars = function(self, info_queue, center)
      return {
        vars = {
          center.ability.extra.mult
        }
      }
    end, 
    calculate = function(self, card, context)
      if
        context.cardarea == G.jokers and
        context.joker_main
      then
        local thunk = 0

        for i, card in ipairs(G.playing_cards) do
          if card.ability.name == "Gold Card" then
            thunk = thunk + 1
          end
        end

        local totalMult = thunk * card.ability.extra.mult

        return {
          message = localize {
            type = "variable",
            key = "a_mult",
            vars = { totalMult }
          },
          mult_mod = totalMult
        }
      end
    end,
}

G.P_CENTERS["j_threex_" .. jokerName] = jokerThing

if testDecks then
  SMODS.Back {
    key = jokerName .. 'Deck',
    loc_txt = {
        name = jokerName,
        text = {
            "AT"
        }
    },
    config = {
    },
    name = jokerName .. "Deck",
    pos = {x = 1, y = 2},
    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
              for index = #G.playing_cards, 1, -1 do
                G.playing_cards[index]:set_ability(G.P_CENTERS.m_wild)
              end

              add_joker("j_threex_" .. jokerName, nil, false, false)
              return true
            end
        }))
    end,
    unlocked = true,
  }  
end