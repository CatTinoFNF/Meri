function onCreate()
makeAnimatedLuaSprite("bg","bgg",-500,0)addAnimationByPrefix('bg', 'bg','bg',24,false)
makeAnimatedLuaSprite("dancer1","MeriBGDancers",-200,400)
addAnimationByPrefix('dancer1', 'dance','minisky 1 instance',24,false)
makeAnimatedLuaSprite("dancer2","MeriBGDancers",50,400)
addAnimationByPrefix('dancer2', 'dance','minisky 2 instance',24,false)
makeAnimatedLuaSprite("dancer3","MeriBGDancers",320,400)
addAnimationByPrefix('dancer3', 'dance','minisky 3 instance',24,false)
makeAnimatedLuaSprite("dancer4","MeriBGDancers",600,400)
addAnimationByPrefix('dancer4', 'dance','minisky 4 instance',24,false)
makeAnimatedLuaSprite("dancer5","MeriBGDancers",900,400)
addAnimationByPrefix('dancer5', 'dance','minisky 5 instance',24,false)
addLuaSprite("bg",false)
addLuaSprite("dancer1",false)addLuaSprite("dancer2",false)addLuaSprite("dancer3",false)addLuaSprite("dancer4",false)addLuaSprite("dancer5",false)
end 

function onBeatHit()
objectPlayAnimation("bg","bg",false)
objectPlayAnimation("dancer1","dance",false)objectPlayAnimation("dancer2","dance",false)objectPlayAnimation("dancer3","dance",false)objectPlayAnimation("dancer4","dance",false)objectPlayAnimation("dancer5","dance",false)
end