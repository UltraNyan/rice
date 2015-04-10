"friends/gameinvitebar.res"
{
	styles
	{
		CGameInviteBar {
			render_bg {
				0="fill( x0, y0, x1, y1, A2.Bar )"
			}
		}

		Button {
			textcolor=none
			render_bg {
				0="image( x0 + 3, y0 + 3, x1, y1, graphics/buttons/tiny_x )"
			}
		}

		Button:hover {
			render_bg {
				1="image( x0 + 3, y0 + 3, x1, y1, graphics/buttons/tiny_x_hover )"
			}
		}

		Label { }
	}

	layout
	{
		place { control="InviteLabel,GameLabel" y=8 x=10 margin-right=27 spacing=3 align=top-center }
		place { control="ClickHereLabel" y=29 x=10 margin-right=27 align=top-center }

		place { control="CloseButton" y=6 align=right width=15 height=15 margin-right=6 }

		place { control="InviteImage" width=0 height=0 }
	}
}
