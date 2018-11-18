# Consults.ash
KOL Zatara Consults responder

What does it do?
----------------
This script is a fork of PeKaJe's Zatara.ash

It takes the existing fucntionaly (Iterating throguh all requested consults and replying back with the mafia default answers) and also checks to see if you have used your clan consults yet.

If you still have consults available, it will send them to statically assigned people (current clannies in OldCW's clan).

If you are not in OldCW's clan, you should change the names to people who normally respond to your consults in your clan.

This script will not change much, so you shouldn't get too many updates wiping out your customization.

How do I use it?
----------------
First, install it by running this command in KoLmafia's graphical CLI:

<pre>
svn checkout https://github.com/infopowerbroker/Consults/branches/release/
</pre>

Once it's installed, go to the Scripts menu, then select "Consults.ash". 

To update the script itself, run this command in the graphical CLI:

<pre>
svn update
</pre>

You can make a daily deed button with this custom deed: $CUSTOM|Command|Reply to Consult|z_Consulted|call consults.ash|||

This script is multiple uses a day. It will only send consults the first time. Repeated usage will reply tp consults sent to you.
