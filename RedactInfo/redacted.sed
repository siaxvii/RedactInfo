

#sed command for the municipality placeholder
s/<muname>/City of New Haven, Connecticut/g

#sed command for driver's licenses
s/[A-Z]\{2\}DL [0-9]\{6,8\}/DL <redacted>/g


#sed commands for license plates
s/TX \?[A-Z]\{3\}-\?[0-9]\{4\}/TX <redacted>/g
s/TX \?[A-Z0-9]\{3\}-\?[A-Z0-9]\{3\}/TX <redacted>/g

#below block of sed commands pertain to credit card info
#======================================================

#sed command for Visa cards
s/4[0-9]\{3\}-\?[0-9]\{4\}-\?[0-9]\{4\}-\?\([0-9]\{4\}\)/VISA-\1/g
#sed command for Mastercard
s/5[0-9]\{3\}-\?[0-9]\{4\}-\?[0-9]\{4\}-\?\([0-9]\{4\}\)/MC-\1/g
#sed command for Discover
s/6[0-9]\{3\}-\?[0-9]\{4\}-\?[0-9]\{4\}-\?\([0-9]\{4\}\)/DISC-\1/g
#sed command for American Express
s/3[47][0-9]\{2\}-\?[0-9]\{6\}-\?[0-9]\([0-9]\{4\}\)/AMEX-\1/g

#======================================================

