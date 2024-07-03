// Ecrire une fonction en javascript qui retourne le caractère présent sur la première plus longue séquence d'une chaîne de caractère.

function displayFirstCharOfLongestSeqence(str) {
  let longest = 0;
  let current = 0;
  let longestChar = '';
  let currentChar = '';
  if (!str || str.length === 0) {
    console.log('NULL');
    return;
  }
  for (let i = 0; i < str.length; i++) {
    if (str[i] === currentChar) {
      current++;
    } else {
      if (current > longest) {
        longest = current;
        longestChar = currentChar;
      }
      current = 1;
      currentChar = str[i];
    }
  }
  console.log(longestChar);
  return;
}

displayFirstCharOfLongestSeqence('ABC'); // A
displayFirstCharOfLongestSeqence('ABBCC'); // C
displayFirstCharOfLongestSeqence('AABBAAA'); // B
displayFirstCharOfLongestSeqence(); // NULL