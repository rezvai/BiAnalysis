#include<iostream>
#include<stack>

using namespace std;

class Solution {
public:
    bool isPair(char open, char closed)
    {
        return open == '(' && closed == ')' 
        || open == '[' && closed == ']' 
        || open == '{' && closed == '}';
    }
public:
    bool isOpen(char ch)
    {
        return ch == '(' || ch == '[' || ch == '{';
    }
public:
    bool isValid(string s) 
    {
        stack<char> st;
        for (int i = 0; i < s.size(); ++i)
        {
            if (isOpen(s[i]))
            {
                st.push(s[i]);
            }
            else
            {
                if (!st.empty() && isPair(st.top(), s[i]))
                {
                    st.pop();
                }
            }
        }
        return st.empty();
    }
};