###
#
# This file contains constants that are referenced by the core 
# framework and by framework modules.
#
###

module Msf

#
# Module types
#
MODULE_ANY     = '_any_'
MODULE_ENCODER = 'encoder'
MODULE_EXPLOIT = 'exploit'
MODULE_NOP     = 'nop'
MODULE_RECON   = 'recon'
MODULE_PAYLOAD = 'payload'
MODULE_TYPES   = 
	[ 
		MODULE_ENCODER, 
		MODULE_PAYLOAD, 
		MODULE_EXPLOIT, 
		MODULE_NOP, 
		MODULE_RECON 
	]

#
# Module rankings
#
LowRanking       = 100
AverageRanking   = 200
NormalRanking    = 300
GoodRanking      = 400
GreatRanking     = 500
ExcellentRanking = 600
RankingName      =
	{
		LowRanking       => "low",
		AverageRanking   => "average",
		NormalRanking    => "normal",
		GoodRanking      => "good",
		GreatRanking     => "great",
		ExcellentRanking => "excellent"
	}

end

#
# Global constants
#

# Licenses
GPL_LICENSE      = "GPL"
ARTISTIC_LICENSE = "Artistic"
UNKNOWN_LICENSE  = "Unknown"
