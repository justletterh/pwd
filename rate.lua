function isin(tab, val)
for index, value in ipairs(tab) do
if value == val then
return true
end
end
return false
end

letters={'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','q','y','z'}

function rate(s)
one=s:len()
if one>10 then
one=10
end
two=0
if s~=s:lower() then
two=two+2.5
end
count=0
for i = 1, #s do
local c = s:sub(i,i)
if tonumber(c) ~= nil then
count=count+1
end
end
if count>4 then
count=4
end
if s:len()==10 then
count=count+1
end
two=two+count
count=0
for i = 1, #s do
local c = s:sub(i,i)
if isin(letters,c:lower()) then
count=count+1
end
end
if count>5 then
count=5
end
count=count/2
two=two+count
count=0
three=0
h={}
for i = 1, #s do
local c = s:sub(i,i)
c=c:lower()
if isin(h,c)==false then
table.insert(h,c)
else
count=count+1
end
end
count=5-count
if 0>count then
count=0
end
three=(count)*2
total=((one+two+three)/30)*100
if total%1~=0 then
total=string.format("%.1f",total)
total=tonumber(total:sub(1,2))+1
end
return string.format("%d%s",total,"%")
end
function main()
div=string.rep("-",50)
print(string.format("%s\nPlease input your password:",div))
inp=io.read()
print(string.format("%s\nyour password's score is: \n%s\n%s",div,rate(inp),div))
end
main()