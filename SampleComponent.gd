extends ComponentBase
class_name SampleComponent


func _ready() -> void:
	#These work
	print("Weight: ", weight);
	print("Description ", description)
	
	#This will print 0 if we leave the default value of 500
	print("Length ", length_mm) 
	
