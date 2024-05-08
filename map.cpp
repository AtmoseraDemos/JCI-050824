#include <algorithm>
#include <map>
#include <iostream>
#include <string>

using std::cout, std::endl, std::string, std::map, std::less;

std::map<string, string , less<string>> AutoCorrect;


void InitializeAutoCorrectTable()
{
	AutoCorrect["abouta"] = "about a";
	AutoCorrect["agian"] = "again";
	AutoCorrect["towrad"] = "toward";
}

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
    return 0;
}
