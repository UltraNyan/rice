"steam/cached/SettingsSubVoice.res"
{
	layout
	{
		region { name="box" width=440 height=max y=0 x=0 }

		place { control="Label1"									region=box dir=down }
		place { control="DeviceName"								region=box dir=down width=280 height=24 start=Label1 margin-top=10 }
		place { control="ChangeDeviceButton"						region=box dir=down width=280 height=24 start=DeviceName margin-top=20 }
		place { control="ReinitAudio"								region=box dir=down width=280 height=24 start=ChangeDeviceButton margin-top=5 }
		
		place { control="Divider1"									region=box dir=down start=ReinitAudio margin-top=21 }

		place { control="SpeakerLabel,SpeakerVolume"				region=box dir=down width=200 start=Divider1 margin-top=15 spacing=5 }
		place { control="MicrophoneLabel,MicrophoneVolume"			region=box dir=down width=200 start=Divider1 margin-top=15 spacing=5 x=220 }	
		place { control="TestMicrophone"							region=box dir=down width=200 height=24 start=SpeakerVolume margin-top=20 }
		place { control="MicMeter"									region=box dir=down start=TestMicrophone margin-top=10 }
		place { control="MicMeter2"									region=box dir=down start=TestMicrophone margin-top=10 }
		place { control="MicBoost"									region=box dir=down start=TestMicrophone margin-top=44 }

		place { control="Divider2"									region=box dir=down start=MicBoost margin-top=13 }

		place { control="WhenActiveLabel"							region=box dir=down start=Divider2 margin-top=15 }
		place { control="TransmitMethodRadioButton1"				region=box dir=down start=WhenActiveLabel margin-top=10 }
		place { control="TransmitMethodRadioButton2"				region=box dir=down start=TransmitMethodRadioButton1 margin-top=-2 }
		place { control="PushToTalkKeyEntry"						region=box dir=down width=280 height=24 start=TransmitMethodRadioButton2 margin-top=10 }

		place { control="RepairAudio" height=0 width=0 }
	}
}
