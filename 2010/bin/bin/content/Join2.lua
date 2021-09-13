local server = ("localhost") -- The IP or hostname of the server
local serverport = (53640) -- the port the server is using - This should be given to you by the person hosting the server.
local clientport = 0 -- Leave this as zero unless you have reason to change it.
local playername = kill switch -- Used for names

function dieerror(errmsg)
game:SetMessage(errmsg)
wait(math.huge)
end

local suc, err = pcall(function()
client = game:GetService("NetworkClient")
player = game:GetService("Players"):CreateLocalPlayer(0)
player.Name = playername
player:SetSuperSafeChat(false)
end)

if not suc then
dieerror(err)
end

function connected(url, replicator)
local suc, err = pcall(function()
--game:SetMessageBrickCount()
local marker = replicator:SendMarker()
end)
if not suc then
dieerror(err)
end
marker.Recieved:wait()
local suc, err = pcall(function()
game:ClearMessage()
end)
if not suc then
dieerror(err)
end
end

function rejected()
dieerror("You have been rejected from the server.")
end

function failed(peer, errcode, why)
dieerror("Failed [".. peer.. "], ".. errcode.. ": ".. why)
end

local suc, err = pcall(function()
client.ConnectionAccepted:connect(connected)
client.ConnectionRejected:connect(rejected)
client.ConnectionFailed:connect(failed)
client:Connect(server, serverport, clientport, 20)
end)

if not suc then
local x = Instance.new("Message")
x.Text = err
x.Parent = workspace
wait(math.huge)
end
