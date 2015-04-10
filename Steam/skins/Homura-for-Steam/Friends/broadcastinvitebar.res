"friends/broadcastinvitebar.res"
{
	styles {

		CBroadcastInviteBar {
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
				0="image( x0 + 3, y0 + 3, x1, y1, graphics/buttons/tiny_x_hover )"
			}
		}

		Label { font-weight=700 font-style=uppercase textcolor=White }
	}

	layout {
		region { name=box width=max height=max margin-left=26 margin-right=26 }

		place { control=InviteLabel,GameLabel y=8 margin-right=27 spacing=3 align=top-center }
		place { control=ClickHereLabel y=29 margin-right=27 spacing=3 align=top-center }

		place { control=CloseButton y=6 align=right width=15 height=15 margin-right=6 }

		place { control=InviteImage width=0 height=0 }
	}
}
