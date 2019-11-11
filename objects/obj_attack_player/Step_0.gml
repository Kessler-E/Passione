switch type{
	case "normal":
		shotspeed = damage*2
		break
	case "scatter":
		shotspeed = 20
		break
	case "machinegun":
		shotspeed = damage*3
		break
}
direction = dir
speed = shotspeed