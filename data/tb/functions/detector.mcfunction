clear @s barrier 1
give @s minecraft:knowledge_book{Recipes:["tb:impossible1"],display:{Name:"[{\"text\":\"神明的指南\",\"color\":\"green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"用于查看其它维度的禁忌方块\",\"color\":\"gray\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"（右键以切换维度。当前：主世界）\",\"color\":\"gray\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["overworld"]} 1
advancement revoke @s only tb:detector
recipe take @s tb:taboo_block_detector
