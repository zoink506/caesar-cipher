# caesar-cipher
Caesar Cipher project for The Odin Project

A caesar cipher was used by some really old guy so that his parents couldn't read his fanfictions, probably.
It works by moving every character a specified amount down the alphabet so that others cannot read it.
It is a very simple form of encryption, often used in other more sophisticated forms of encryption.

The ruby file asks for a sentence from the user and the amount to shift the values by, then outputs the
encrypted sentence. It loops around to the start of the alphabet when the amount to shift by is 
larger than the alphabet itself.

The program is optimised to rub as fast as possible with as little looping as possible. 
For example, it would have been easy to simply do a while loop for the looping functionality, but that
would negatively affect performance if this was performed on a large scale. 

As a personal reflection, while completing this project, I learned the following:
```
  > how to use the array#map method
  > how to use bang methods
  > string#bytes method
  > array#join method
  > the difference between p and puts
  > one line if statements
  > return values in relation to custom methods
  > variable scope
```