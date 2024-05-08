#include <algorithm>
#include <map>
#include <iostream>
#include <string>

using std::cout, std::endl, std::string, std::map, std::less;

std::map<string, string , less<string>> AutoCorrect;


/**
 * Initializes the AutoCorrect table with predefined corrections.
 * This function populates the AutoCorrect table with key-value pairs
 * representing common misspellings and their corresponding corrections.
 * Examples:
 *  AutoCorrect["abouta"] = "about a";
 *  AutoCorrect["agian"] = "again";
 *  AutoCorrect["towrad"] = "toward";
 *  AutoCorrect["the the"] = "the";
 */
void InitializeAutoCorrectTable()
{
	AutoCorrect["abouta"] = "about a";
	AutoCorrect["agian"] = "again";
	AutoCorrect["towrad"] = "toward";
	AutoCorrect["the the"] = "the";
}

/**
 * Finds the autocorrected version of a given word.
 * 
 * @param word The word to be autocorrected.
 * @return The autocorrected version of the word, if found. Otherwise, returns the original word.
 */
string FindAutoCorrect(string word)
{
	auto it = AutoCorrect.find(word);
	if (it != AutoCorrect.end())
	{
		return it->second;
	}
	return word;
}


void testAutoCorrect()
{
	string word;
	string result;
	
	word = "abouta";
	result = FindAutoCorrect(word);
	cout << result << endl;
	
	word = "towrad";
	result = FindAutoCorrect(word);
	cout << result << endl;
}


int main()
{
	InitializeAutoCorrectTable();
	testAutoCorrect();
	
	return 0;
}
