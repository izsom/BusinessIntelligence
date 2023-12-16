# BusinessIntelligence

https://www.overleaf.com/project/657afa46d8c64b7c056dad5b

ToDos:
* Split the colour column into ext and int. Keep just the ext and onehot
* Labelig columns, True/False
    * NewOrUsed - labeling: 1: used, 2: demo, 3: new
    * Transmission: True/False for automatic and Other will be NaN
    * Body Type in the following order starting with small to big: Convertible, Coupe, Hatchback, Sedan, Wagon, SUV, Ute / Tray, People Mover, Commercial
* OneHot encode columns
    * brand
    * FuelType
    * The exterior colour columns
    * Extract the territory from the Location and OneHot encode it
* Drop columns
    * model
    * car/suv

