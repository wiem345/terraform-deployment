$FileNames = "Bastion","DNS","HUB-infra","Jump-VM","LAW","NTP","Routes"

foreach($name in $FileNames){

    mkdir $name
}