# remove riptide
execute as @a run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:riptide":0}}

# for every level of vanilla riptide, set the custom riptide to the same value! for compat
execute as @a if items entity @s weapon trident[minecraft:enchantments={riptide:1}] run item modify entity @s weapon {function:"set_enchantments", enchantments:{"minecraft:griptide":1}}
execute as @a if items entity @s weapon trident[minecraft:enchantments={riptide:2}] run item modify entity @s weapon {function:"set_enchantments", enchantments:{"minecraft:griptide":2}}
execute as @a if items entity @s weapon trident[minecraft:enchantments={riptide:3}] run item modify entity @s weapon {function:"set_enchantments", enchantments:{"minecraft:griptide":3}}


# for every level of custom riptide, when touching water, add vanilla riptide back.
execute as @a if items entity @s weapon trident[minecraft:enchantments={griptide:1}] if predicate minecraft:in_water run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:riptide":1}}
execute as @a if items entity @s weapon trident[minecraft:enchantments={griptide:2}] if predicate minecraft:in_water run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:riptide":2}}
execute as @a if items entity @s weapon trident[minecraft:enchantments={griptide:3}] if predicate minecraft:in_water run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:riptide":3}}


# for every level of custom riptide, when touching rain, add vanilla riptide back
execute as @a if items entity @s weapon trident[minecraft:enchantments={griptide:1}] if predicate minecraft:raining_under_sky_sneak run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:riptide":1}}
execute as @a if items entity @s weapon trident[minecraft:enchantments={griptide:2}] if predicate minecraft:raining_under_sky_sneak run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:riptide":2}}
execute as @a if items entity @s weapon trident[minecraft:enchantments={griptide:3}] if predicate minecraft:raining_under_sky_sneak run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:riptide":3}}
