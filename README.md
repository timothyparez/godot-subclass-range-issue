# Introduction  
  
This project has two classes:  
  
 - ComponentBase  
 - SampleComponent  
  
The `ComponentBase` class exports 3 properties:  
  
```
@export var weight : float
@export var description : String
@export_range(500, 10000) var length_mm : int
```
  
The `SampleComponent` prints out the properties  
  
```
func _ready() -> void:
	#These work
	print("Weight: ", weight);
	print("Description ", description)
	
	#This will print 0 if we leave the default value of 500
	print("Length ", length_mm)
```

The main scene has an instance of the `SampleComponent` class.  
In the in the `main` scene inspector we set the values for `weight` and `description`  
but leave the `length_mm` property set to its default value of 500.  
The value `500` comes from the minimum specified by `@export_range(500, 10000)`.  

When you run the application, `weight` and `description` will have the correct value  
but `length_mm` will be 0.

Tested with `Godot 4.5 RC1`


