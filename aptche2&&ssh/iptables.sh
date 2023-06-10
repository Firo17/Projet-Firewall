How To List and Delete Iptables Firewall Rules
To list out all of the active iptables rules by specification, run the iptables command with the -S option: 
sudo iptables -S
Output looks like :
-P INPUT DROP
-P FORWARD DROP
-P OUTPUT ACCEPT
-N ICMP
-N TCP
-N UDP
-A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
-A INPUT -i lo -j ACCEPT
-A INPUT -m conntrack --ctstate INVALID -j DROP
-A INPUT -p udp -m conntrack --ctstate NEW -j UDP
-A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,ACK SYN -m conntrack --ctstate NEW -j TCP
-A INPUT -p icmp -m conntrack --ctstate NEW -j ICMP
-A INPUT -p udp -j REJECT --reject-with icmp-port-unreachable
-A INPUT -p tcp -j REJECT --reject-with tcp-reset
-A INPUT -j REJECT --reject-with icmp-proto-unreachable
-A TCP -p tcp -m tcp --dport 22 -j ACCEPT
...
Listing a Specific Chain

If you want to limit the output to a specific chain (INPUT, OUTPUT, TCP, etc.), 
you can specify the chain name directly after the -S option. For example, to show all of the rule specifications in the TCP chain, you would run this command:
Output 
-N TCP
-A TCP -p tcp -m tcp --dport 22 -j ACCEPT
