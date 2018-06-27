CLI GEM PROJECT 


Amazon_Charts CLI will be a command-line app to allow a user to see a list of the 'Top 20 Most Sold Books of the Week' in Fiction and non-Fiction.

When they run the app, they will see a greeting, and be asked to enter a number corresponding to a prompt. 

Available prompts will look something like this:

Select a number to see the top 20 books in Fiction or non-Fiction for the week:

1.	Top Books in Fiction
2.	Top Books in non-Fiction
3.	Exit

After making a selection the user will see a list of book titles, authors, publishers, with a rank at the top.

The user will not be able to make any creations or edits to any of the lists.

Scraper class will scrape the data (book data collection).
The Book class will create/destroy the books (book factory).
The cli will interact with the user (book command center).

Refactor:
	1. Make dates dynamic (not static)
	2. Scrape all the books onces to eliminate the need for a destroy method
		a. make doc a global variable @@doc  Use ||= comparison method (if left side of || is true, do it, otherwise if false, do the right side.)
	3. Add a :type to attr_accessor to identify fiction vs. non-fiction
	4. Make code more DRY
	
