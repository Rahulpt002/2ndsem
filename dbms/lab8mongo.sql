  use rahul
switched to db rahul
> db.niba.insert({"name":"bulbul","age":"12"})
WriteResult({ "nInserted" : 1 })
> db.niba.insert({"name":"derik","age":"32"})
WriteResult({ "nInserted" : 1 })
> db.niba.insert({"name":"koyal","age":"32"})
WriteResult({ "nInserted" : 1 })
> db.niba.insert({"name":"payal","age":"32"})
WriteResult({ "nInserted" : 1 })
> db.niba.insert({"name":"sharath","age":32})
WriteResult({ "nInserted" : 1 })
> db.niba.insert({"name":"manu","age":23})
WriteResult({ "nInserted" : 1 })
> db.niba.insert({"name":"sonu","age":27})
WriteResult({ "nInserted" : 1 })
> db.niba.insert({"name":"finu","age":25})
WriteResult({ "nInserted" : 1 })
> db.niba.insert({"name":"jk","age":45})
WriteResult({ "nInserted" : 1 })
> db.niba.find

> db.niba.find()
{ "_id" : ObjectId("66222760911c633e6ec2786f"), "name" : "zoya" }
{ "_id" : ObjectId("66222802911c633e6ec27870"), "name" : "sana" }
{ "_id" : ObjectId("6622282f911c633e6ec27871"), "name" : "hadi" }
{ "_id" : ObjectId("66222835911c633e6ec27872"), "name" : "haya" }
{ "_id" : ObjectId("6622283c911c633e6ec27873"), "name" : "saya" }
{ "_id" : ObjectId("66222845911c633e6ec27874"), "name" : "kiran" }
{ "_id" : ObjectId("66222884911c633e6ec27875"), "name" : "maya" }
{ "_id" : ObjectId("66222896911c633e6ec27876"), "name" : "karthik" }
{ "_id" : ObjectId("662228a1911c633e6ec27877"), "name" : "sona" }
{ "_id" : ObjectId("662228ae911c633e6ec27878"), "name" : "sinu" }
{ "_id" : ObjectId("662228b8911c633e6ec27879"), "name" : "riya" }
{ "_id" : ObjectId("662228eb911c633e6ec2787a"), "name" : "derik" }
{ "_id" : ObjectId("662229d5d5c009723210e51b"), "name" : "bulbul", "age" : "12" }
{ "_id" : ObjectId("66222a50d5c009723210e51c"), "name" : "derik", "age" : "32" }
{ "_id" : ObjectId("66222a74d5c009723210e51d"), "name" : "koyal", "age" : "32" }
{ "_id" : ObjectId("66222a7dd5c009723210e51e"), "name" : "payal", "age" : "32" }
{ "_id" : ObjectId("66222a97d5c009723210e51f"), "name" : "sharath", "age" : 32 }
{ "_id" : ObjectId("66222aa8d5c009723210e520"), "name" : "manu", "age" : 23 }
{ "_id" : ObjectId("66222ab7d5c009723210e521"), "name" : "sonu", "age" : 27 }
{ "_id" : ObjectId("66222ac5d5c009723210e522"), "name" : "finu", "age" : 25 }
 db.niba.find().pretty()
{ "_id" : ObjectId("66222760911c633e6ec2786f"), "name" : "zoya" }
{ "_id" : ObjectId("66222802911c633e6ec27870"), "name" : "sana" }
{ "_id" : ObjectId("6622282f911c633e6ec27871"), "name" : "hadi" }
{ "_id" : ObjectId("66222835911c633e6ec27872"), "name" : "haya" }
{ "_id" : ObjectId("6622283c911c633e6ec27873"), "name" : "saya" }
{ "_id" : ObjectId("66222845911c633e6ec27874"), "name" : "kiran" }
{ "_id" : ObjectId("66222884911c633e6ec27875"), "name" : "maya" }
{ "_id" : ObjectId("66222896911c633e6ec27876"), "name" : "karthik" }
{ "_id" : ObjectId("662228a1911c633e6ec27877"), "name" : "sona" }
{ "_id" : ObjectId("662228ae911c633e6ec27878"), "name" : "sinu" }
{ "_id" : ObjectId("662228b8911c633e6ec27879"), "name" : "riya" }
{ "_id" : ObjectId("662228eb911c633e6ec2787a"), "name" : "derik" }
{
        "_id" : ObjectId("662229d5d5c009723210e51b"),
        "name" : "bulbul",
        "age" : "12"
}
{
        "_id" : ObjectId("66222a50d5c009723210e51c"),
        "name" : "derik",
        "age" : "32"
}
{
        "_id" : ObjectId("66222a74d5c009723210e51d"),
        "name" : "koyal",
        "age" : "32"
}
{
        "_id" : ObjectId("66222a7dd5c009723210e51e"),
        "name" : "payal",
        "age" : "32"
}
{
        "_id" : ObjectId("66222a97d5c009723210e51f"),
        "name" : "sharath",
        "age" : 32
}
{
        "_id" : ObjectId("66222aa8d5c009723210e520"),
        "name" : "manu",
        "age" : 23
}
{
        "_id" : ObjectId("66222ab7d5c009723210e521"),
        "name" : "sonu",
        "age" : 27
}
{
        "_id" : ObjectId("66222ac5d5c009723210e522"),
        "name" : "finu",
        "age" : 25
}
db.niba.find({age:{$lt:32}}).pretty()
{
        "_id" : ObjectId("66222aa8d5c009723210e520"),
        "name" : "manu",
        "age" : 23
}
{
        "_id" : ObjectId("66222ab7d5c009723210e521"),
        "name" : "sonu",
        "age" : 27
}
{
        "_id" : ObjectId("66222ac5d5c009723210e522"),
        "name" : "finu",
        "age" : 25
}
> db.niba.find({age:{$lt:25}}).pretty()
{
        "_id" : ObjectId("66222aa8d5c009723210e520"),
        "name" : "manu",
        "age" : 23
}
> db.niba.find({age:{$lte:25}}).pretty()
{
        "_id" : ObjectId("66222aa8d5c009723210e520"),
        "name" : "manu",
        "age" : 23
}
{
        "_id" : ObjectId("66222ac5d5c009723210e522"),
        "name" : "finu",
        "age" : 25
}
> db.niba.find({age:{$gte:32}}).pretty()
{
        "_id" : ObjectId("66222a97d5c009723210e51f"),
        "name" : "sharath",
        "age" : 32
}
{ "_id" : ObjectId("66222ad8d5c009723210e523"), "name" : "jk", "age" : 45 }

 db.niba.distinct("name")
[
        "bulbul",
        "derik",
        "finu",
        "hadi",
        "haya",
        "jk",
        "karthik",
        "kiran",
        "koyal",
        "manu",
        "maya",
        "payal",
        "riya",
        "sana",
        "saya",
        "sharath",
        "sinu",
        "sona",
        "sonu",
        "zoya"
]

 db.niba.count()
22


> db.niba.find().sort({name:1})
{ "_id" : ObjectId("66222760911c633e6ec2786f"), "set" : { "name" : "wafa" } }
{ "_id" : ObjectId("66223c14d5c009723210e525"), "name" : "Minu", "age" : 25 }
{ "_id" : ObjectId("662229d5d5c009723210e51b"), "name" : "bulbul", "age" : "12" }
{ "_id" : ObjectId("662228eb911c633e6ec2787a"), "name" : "derik" }
{ "_id" : ObjectId("66222a50d5c009723210e51c"), "name" : "derik", "age" : "32" }
{ "_id" : ObjectId("66222ac5d5c009723210e522"), "name" : "finu", "age" : 25 }
{ "_id" : ObjectId("662236b0d5c009723210e524"), "name" : "finu", "age" : 25 }
{ "_id" : ObjectId("6622282f911c633e6ec27871"), "name" : "hadi" }
{ "_id" : ObjectId("66222835911c633e6ec27872"), "name" : "haya" }
{ "_id" : ObjectId("66222ad8d5c009723210e523"), "name" : "jk", "age" : 45 }
{ "_id" : ObjectId("66223c37d5c009723210e528"), "name" : "jm", "age" : 37 }
{ "_id" : ObjectId("66223c14d5c009723210e526"), "name" : "jojo", "age" : 23 }
{ "_id" : ObjectId("66222896911c633e6ec27876"), "name" : "karthik" }
{ "_id" : ObjectId("66222845911c633e6ec27874"), "name" : "kiran" }
{ "_id" : ObjectId("66222a74d5c009723210e51d"), "name" : "koyal", "age" : "32" }
{ "_id" : ObjectId("66223c37d5c009723210e527"), "name" : "mallu", "age" : 35 }
{ "_id" : ObjectId("66222aa8d5c009723210e520"), "name" : "manu", "age" : 23 }
{ "_id" : ObjectId("66222884911c633e6ec27875"), "name" : "maya" }
{ "_id" : ObjectId("66222a7dd5c009723210e51e"), "name" : "payal", "age" : "32" }
{ "_id" : ObjectId("662228b8911c633e6ec27879"), "name" : "riya" }
Type "it" for more
> db.niba.find().sort({name:-1})
{ "_id" : ObjectId("66222ab7d5c009723210e521"), "name" : "sonu", "age" : 27 }
{ "_id" : ObjectId("662228a1911c633e6ec27877"), "name" : "sona" }
{ "_id" : ObjectId("662228ae911c633e6ec27878"), "name" : "sinu" }
{ "_id" : ObjectId("66222a97d5c009723210e51f"), "name" : "sharath", "age" : 32 }
{ "_id" : ObjectId("6622283c911c633e6ec27873"), "name" : "saya" }
{ "_id" : ObjectId("66222802911c633e6ec27870"), "name" : "sana" }
{ "_id" : ObjectId("662228b8911c633e6ec27879"), "name" : "riya" }
{ "_id" : ObjectId("66222a7dd5c009723210e51e"), "name" : "payal", "age" : "32" }
{ "_id" : ObjectId("66222884911c633e6ec27875"), "name" : "maya" }
{ "_id" : ObjectId("66222aa8d5c009723210e520"), "name" : "manu", "age" : 23 }
{ "_id" : ObjectId("66223c37d5c009723210e527"), "name" : "mallu", "age" : 35 }
{ "_id" : ObjectId("66222a74d5c009723210e51d"), "name" : "koyal", "age" : "32" }
{ "_id" : ObjectId("66222845911c633e6ec27874"), "name" : "kiran" }
{ "_id" : ObjectId("66222896911c633e6ec27876"), "name" : "karthik" }
{ "_id" : ObjectId("66223c14d5c009723210e526"), "name" : "jojo", "age" : 23 }
{ "_id" : ObjectId("66223c37d5c009723210e528"), "name" : "jm", "age" : 37 }
{ "_id" : ObjectId("66222ad8d5c009723210e523"), "name" : "jk", "age" : 45 }
{ "_id" : ObjectId("66222835911c633e6ec27872"), "name" : "haya" }
{ "_id" : ObjectId("6622282f911c633e6ec27871"), "name" : "hadi" }
{ "_id" : ObjectId("66222ac5d5c009723210e522"), "name" : "finu", "age" : 25 }
