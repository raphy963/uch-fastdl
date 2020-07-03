ITEM.Name = 'Team Rocket Hat'
ITEM.Price = 1
ITEM.Model = 'models/gmod_tower/teamrockethat.mdl'
ITEM.Attachment = 'eyes'
ITEM.CustomVector = Vector(2,2,2)
ITEM.LateNight = true
 
function ITEM:OnEquip(ply, modifications)
        ply:PS_AddClientsideModel(self.ID)
end
 
function ITEM:OnHolster(ply)
        ply:PS_RemoveClientsideModel(self.ID)
end
 
function ITEM:ModifyClientsideModel(ply, model, pos, ang)
        model:SetModelScale(3, 0)
        pos = pos + (ang:Forward() * -15) + (ang:Up() * 13)
       
        return model, pos, ang
end