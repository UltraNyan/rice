"friends/AchievementNotification.res"
{
	styles
	{
		Notification {
			render_bg {
				0="fill( x0, y0, x1, y1, A2.Background )"
				//1="fill( x0, y0, x1, y0 + 2, A2.Divider )"
				//2="fill( x0, y0 + 74, x1, y1, A2.Divider )" //DISABLE darkened region
			}
		}
	}
	
	layout
	{
		place { control="DarkenedRegion" width=0 height=0 }
	}
}
