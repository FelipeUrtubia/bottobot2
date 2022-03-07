function calculateDaysBetweenDates(date1, date2) {
  // Validate input
  if (!date1 || !date2)
    return null;

  // Convert to numbers
  var d1 = +new Date(date1);
  var d2 = +new Date(date2);

  // Set to noon to avoid DST errors
  d1.setHours(12, 0, 0);
  d2.setHours(12, 0, 0);

  // Find the number of days between dates
  var days = Math.round(Math.abs(d2 - d1) / 1000 / 60 / 60 / 24);

  // Return
  return days;
}

function isthenumberoddoreven(num) {
  // Validate input
  if (num == null)
    return null;

  // Return
  return (num % 2 == 0) ? "even" : "odd";
}

function listofprimenumbers(num) {
  // Validate input
  if (num == null)
    return null;

  // Initialize array
  var primes = [];

  // Loop over all numbers up to num
  for (var i = 1; i <= num; i++) {
    // Check if i is prime
    var isPrime = true;
    for (var j = 2; j < i; j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }

    // If it is prime, push it to the array
    if (isPrime)
      primes.push(i);
  }

  // Return
  return primes;
}

function calculatesquareroot(num) {
  // Validate input
  if (num == null)
    return null;

  // Return
  return Math.sqrt(num);
}

