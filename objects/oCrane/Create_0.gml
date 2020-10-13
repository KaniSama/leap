/// @description 
depth = 0;
if (Texts.next < 4) {
	instance_destroy();
}

in_dialog = false;
open_for_dialog = true;
displaytext = "";
i = 1;

next = -1;
prevnext = -1;

text = [
	"What? Is it dinner time already? [z]",
	"Nevermind, you look too sad to be dinner.\nIf I eat you, I'll get an indigestion. [z]",
	
	"Did you just... [z]",
	"You're an odd one, you know that? [z]",
	"It takes a lot of bravery to just walk up to\na crane so casually. [z]",
	"But I don't know what it takes to leap\noff a cliff... [z]",
	
	"What's your name, little one? [z]",
	"Not in the mood to speak, hm? That's okay.\nI understand. [z]",
	"My name is Crane, by the way. Nice to meet you. [z]",
	
	""
];

nextlines = 0;
lines = [
	2,
	4,
	3,
	0
];