"steam/cached/SetJumplistOptions.res"
{
	layout
	{
		place { controls="ShowStore,ShowMyGames,ShowCommunity,ShowFriendActivity,ShowFriends,ShowMusicPlayer,ShowScreenshots,ShowServers,ShowSettings,ShowBigPicture,ShowExit" dir=down height=28 x=30 y=195 }

		region { name="bottom" align=bottom height=48 width=max }
		place { control="OkButton,CancelButton" region=bottom align=right y=11 margin-right=9 spacing=10 width=75 }

		place { control="Divider1,Divider2" height=0 width=0 margin-left=-9999 }
	}
}
