"Steam/cached/AccountPage.res"
{
	layout
	{
		region { name="box" width=440 height=max y=0 x=0 }

		place { control="AccountInfo"					region=box dir=down }
		place { control="EmailInfo"						region=box dir=down start=AccountInfo margin-top=10 } //disappears in offline mode
		place { control="VACStatusLabel"				region=box dir=down start=EmailInfo margin-top=10 }
		place { control="SecurityStatusState"			region=box dir=down start=VACStatusLabel margin-top=10 }
		place { control="AccountLink"					region=box dir=down start=SecurityStatusState margin-top=10 }

		place { control="Divider1"						region=box dir=down start=AccountLink margin-top=18 }
		
		place { control="ManageSecurityButton"			region=box dir=down width=280 height=24 start=Divider1 margin-top=19 }
		place { control="ChangePasswordButton"			region=box dir=down width=280 height=24 start=ManageSecurityButton margin-top=5 }
		place { control="ChangeContactEmailButton"		region=box dir=down width=280 height=24 start=ChangePasswordButton margin-top=5 }
		place { control="ValidateContactEmailButton"	region=box dir=down width=280 height=24 start=ChangeContactEmailButton margin-top=5 } //only in offline mode
		
		place { control="NoPersonalInfoCheck"			region=box dir=down y=242 margin-top=10 }
		place { control="Label1"						region=box dir=down start=NoPersonalInfoCheck margin-top=10 }

		place { control="Divider2"						region=box dir=down start=Label1 margin-top=18 }

		place { control="BetaParticipationLabel"		region=box dir=down start=Divider2 margin-top=15 }
		place { control="CurrentBetaLabel"				region=box dir=down width=140 start=BetaParticipationLabel margin-top=5 }
		place { control="ReportBugLink"					region=box dir=down start=BetaParticipationLabel margin-top=5 x=211 }
		place { control="ChangeBetaButton"				region=box dir=down width=280 height=24 start=CurrentBetaLabel margin-top=20 }

		place { control="LogoutLabel,ContactEmailLabel,Label2,SecurityStatusLabel,SecurityIcon" height=0 width=0 }
	}
}
