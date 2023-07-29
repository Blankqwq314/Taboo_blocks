clear @s barrier 1
give @s minecraft:knowledge_book{display:{Name:"[{\"text\":\"神明的指南\",\"color\":\"green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"手持此书可以看到不同维度的禁忌方块\",\"color\":\"gray\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"（潜行：查看下一个维度）\",\"color\":\"gray\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["detector"]} 1
advancement revoke @s only tb:detector
recipe take @s tb:taboo_block_detector
