extends Node2D

var xPos = 250
var yPos = 100
var Enemy = preload("res://enemy.tscn")

func _process(delta):

	var cnt = 0 #enemyのカウント
	
	#-----ツリーのノード名を検索
	for child in get_children():
		print(child.name)
		if "Enemy" in child.name:
			cnt += 1
			#print("Enemy" )
	print("個数：" + str(cnt))
	if cnt == 0:
		#print("NoEnemy" )
		pass
	#----------------------
	
	#----エネミーが0になった場合にスポーンする
	if cnt == 0:
	#if Common.countEne == 0:
		for i in range(3):
			var Enemy = Enemy.instantiate()
			Enemy.setPos(position.x + i*xPos+100, position.y + yPos)
			Enemy.name = "Enemy" + str(i)
			self.add_child(Enemy)
