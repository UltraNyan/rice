"friends/voicebar.res"
{
	styles
	{
		CVoiceBar {
			render_bg {
				0="fill( x0, y0, x0 + 9999, y1, A2.Bar )"
			}
		}

		ImagePanel { }

		CVoiceTraffic {
			inset-top=-2
			minimum-width=72
			render_bg {
				0="fill( x0 + 35, y0 + 6, x0 + 38, y0 + 14, Air255 )"
				1="fill( x0 + 39, y0 + 6, x0 + 42, y0 + 14, Air255 )"
				2="fill( x0 + 43, y0 + 6, x0 + 46, y0 + 14, Air255 )"
				3="fill( x0 + 47, y0 + 6, x0 + 50, y0 + 14, Air255 )"
				4="fill( x0 + 51, y0 + 6, x0 + 54, y0 + 14, Air255 )"
				5="fill( x0 + 55, y0 + 6, x0 + 58, y0 + 14, Air255 )"
				6="fill( x0 + 59, y0 + 6, x0 + 62, y0 + 14, Air255 )"
				7="fill( x0 + 63, y0 + 6, x0 + 66, y0 + 14, Air255 )"
			}
		}

		Label { }
	}

	layout
	{
		place { control=VoiceImage align=left x=20 y=16 }
		place { control=StatusLabel align=left start=VoiceImage x=9 y=3 margin-right=13 end-right=action2 }
		place { control=micvolume,speakervolume align=left x=20 y=18 spacing=23 end-right=action2 }
		place { control=action2 align=right margin-right=9 y=15 }
	}
}
