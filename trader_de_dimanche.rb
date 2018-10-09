
def trader_du_dimanche(tab)
	x = 0
	y = 0
	tamp = 0

	while y <= tab.size
		x = y
		while x < tab.size
			if tab[x] - tab[y] > tamp
				tamp = tab[x] - tab[y]
				tampy = y
				tampx = x
			end
			x += 1
		end
		y += 1
	end

	puts " => [#{tampy},#{tampx}]  # $#{tab[tampx]} - $#{tab[tampy]} == $#{tamp}"
end

trader_du_dimanche([17,3,6,9,15,8,6,1,10])
