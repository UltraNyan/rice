"steam/cached/SettingsSubFriends.res"
{
	styles
	{
		URLLabel
		{
			textcolor=none
		}
		
		URLLabel:hover
		{
			textcolor=none
		}
	}

	layout
	{
		region { name="box" width=440 height=max y=0 x=0 }

		place { control="ImageAvatarOverlay"			region=box height=46 margin-top=-3 margin-left=-3 }
		place { control="NameEntry"						region=box start=ImageAvatarOverlay dir=right width=224 height=40 margin-left=10 }
		place { control="ImageAvatar"					region=box x=4 y=4 }
		place { control="URLLabel2"						region=box height=40 width=40 }
		place { control="AutoSignIntoFriendsCheck"		region=box start=ImageAvatarOverlay dir=down margin-top=20 }
		place { control="ShowTimeInChatLogCheck"		region=box start=AutoSignIntoFriendsCheck dir=down margin-top=-2 }
		place { control="AlwaysNewChatCheck"			region=box start=ShowTimeInChatLogCheck dir=down margin-top=-2 }
		
		place { control="Divider1"						region=box dir=down start=AlwaysNewChatCheck margin-top=13 }

		place { control="Label5"						region=box dir=down start=Divider1 margin-top=15 }
		place { control="FriendOnlineNotifyCheck"		region=box dir=down start=Label5 margin-top=5 }
		place { control="FriendOnlinePlaySoundCheck"	region=box dir=down start=FriendOnlineNotifyCheck margin-top=-2 }

		place { control="Label6"						region=box dir=down start=FriendOnlinePlaySoundCheck margin-top=20 }
		place { control="ReceiveMessageNotifyCheck"		region=box dir=down start=Label6 margin-top=5 }
		place { control="ReceiveMessagePlaySoundCheck"	region=box dir=down start=ReceiveMessageNotifyCheck margin-top=-2 }

		place { control="Label4"						region=box dir=down x=220 start=Divider1 margin-top=15 }
		place { control="JoinGameNotifyCheck"			region=box dir=down start=Label4 margin-top=5 }
		place { control="JoinGamePlaySoundCheck"		region=box dir=down start=JoinGameNotifyCheck margin-top=-2 }

		place { control="Divider2"						region=box dir=down start=ReceiveMessagePlaySoundCheck margin-top=13 }

		place { control="Label7"						region=box dir=down start=Divider2 margin-top=15 }
		place { control="FlashModeAlways"				region=box dir=down start=Label7 margin-top=5 }
		place { control="FlashModeMinimized"			region=box dir=down start=FlashModeAlways margin-top=-2 }
		place { control="FlashModeNever"				region=box dir=down start=FlashModeMinimized margin-top=-2 }

		place { control="Label1,Label2,URLLabel1,Label3" height=0 width=0 }
	}
}
