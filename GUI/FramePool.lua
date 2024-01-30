local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class Pooling: AceModule
local pooling = addon:NewModule('Pooling')

---@class (exact) Pool
---@field Active table
---@field Inactive table
---@field New function
---@field Cleanup function
---@field InsertActive function
---@field RemoveActive function
---@field InsertInactive function
---@field FetchInactive function
Pool = {}
Pool.__index = Pool

function Pool.New()
    return setmetatable({ Active = {}, Inactive = {} }, Pool)
end

function Pool.Cleanup(self)
    for i = 1, #self.Active do
        if self.Active[i] then
            self.Active[i]:SetParent(nil)
            self.Active[i]:Hide()
            if self.Active[i].texture then
                self.Active[i].texture:SetTexture(nil)
            end
            Pool.InsertInactive(self, self.Active[i], i)
            Pool.RemoveActive(self, i)
        end
    end
end

function Pool.InsertActive(self, frame, index)
    self.Active[index] = frame
end

function Pool.RemoveActive(self, index)
    self.Active[index] = nil
end

function Pool.InsertInactive(self, frame, index)
    self.Inactive[index] = frame
end

function Pool.FetchInactive(self, index, createFunc)
    local frame = nil
    if self.Inactive[index] then
        frame = self.Inactive[index]
        self.Inactive[index] = nil
    else
        frame = createFunc()
    end
    return frame
end

pooling.Pool = Pool

pooling:Enable()
