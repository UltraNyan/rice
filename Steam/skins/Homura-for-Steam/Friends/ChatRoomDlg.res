"friends/ChatRoomDlg.res"
{
	styles
	{
		CChatRoomDlg {
			render_bg {
				0="fill( x0, y1 - 90, x1, y1 - 60, A2.Ribbon )"
			}
		}

		Textentryfocus_chat {
			render_bg { }
		}

		CChatActionsButton {
			image="graphics/icons/gear"
			render_bg { }
		}

		CChatActionsButton:hover {
			image="graphics/icons/gear_hover"
			render_bg { }
		}

		CChatActionsButton:selected {
			image="graphics/icons/gear_hover"
			render_bg { }
		}

		"RichText Scrollbar" {
			inset-bottom=21
		}
	}

	layout
	{
		region { name=chat y=6 margin-bottom=90 height=max width=max }
		region { name=status align=bottom height=90 width=max margin-bottom=60 }
		region { name=bottom align=bottom height=60 width=max }

		place { control="VoiceChat"			region=chat align=right y=15 margin-right=18 }
		place { control="VoiceBar"			region=chat align=left width=max height=55 end-right=VoiceChat }

		place { control="ChatHistory"		region=chat start=VoiceBar width=max height=max dir=down margin-bottom=-15 margin-right=4 end-right=UserList }
		place { control="UserList"			region=chat start=VoiceBar width=210 height=max dir=down align=right y=0 }

		place { control="StatusLabel"					region=status width=max height=max margin-left=10 margin-right=10 end-right=TitlePanel }
		place { control="TitlePanel"					region=status width=30 height=30 align=right margin-right=17 }

		place { control="TextEntry"						region=bottom x=4 y=12 height=36 width=max margin-right=91 }
		place { control="EmoticonButton"			region=bottom align=right y=6 height=50 end-right=ChatActionsButton margin-right=-2 }
		place { control="ChatActionsButton" 	region=bottom align=right y=5 height=50 width=34 margin-right=13 }

		place { control="SendButton,Splitter" height=0 width=0 }
	}
}
