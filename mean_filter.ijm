macro "CountingNuclei[3]" {
	title = getTitle();
	title2 = "dup";
	run("Duplicate...", "title=[dup]");
	selectWindow("dup");
	run("Mean...", "radius=15");
	imageCalculator("Subtract create", title, title2);
	selectWindow("Result of " + title);
}