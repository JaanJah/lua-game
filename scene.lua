Scene = Object:extend()

function Scene:new()
	self.entities = {}
end

function Scene:addEntity(entity)
	table.insert(self.entities, entity)
end

function Scene:update(dt)
	for key, val in pairs(self.entities) do
		if val.dispose then
			self.entities[key] = nil
		else
			val:update(dt)
		end
	end
end

function Scene:draw()
	for key, val in pairs(self.entities) do
		val:draw()
	end
end

