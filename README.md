# EIP-PlantUML

EIP-PlantUML provides [Enterprise Integrations Patterns](https://www.enterpriseintegrationpatterns.com/) elements to [PLantUML](http://plantuml.com/) to provide easy support of designing EIP architectures for both, up-front design as well as development-time automated documentation generation.  

## Getting Started

You will need to download the 'EIP-PLantUML.puml' file as well as the subfolder 'sprites' locally. 

At the top of your EIP PLantUML model you need to include the 'EIP-PlantUML.puml' file.

'''c#
!include ../EIP-PLantUML/EIP-PLantUML.puml
'''
After including the 'EIP-PLantUML.puml' file you can start using the EIP patterns. 

'''c#
MsgChannel(channel1, "Channel 1")
MsgChannel(channel2, "Channel 2")
Message(msg, "Message")

Send(channel1, msg)
Send(msg, channel2)
'''
(images/message_example.png)

## Acknowledgments