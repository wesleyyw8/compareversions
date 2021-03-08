//javascript


function compare_version(v1, v2) {
  const v1a = v1.split('.').map( Number );
  const v2a = v2.split('.').map( Number );

  let i = 0

  while (i < v1a.length) {
    if (!v2a[i]) {
      return 1;
    }
    if (v1a[i] > v2a[i]) {
      return 1;
    }

    if (v1a[i] < v2a[i]) {
      return -1;
    } 
    i++;
  }
  if (v1a.size < v2a.size) {
    return -1;
  }

  return 0;
}

console.log(compare_version('1.2', '1.3.4') ) //-1
console.log(compare_version('1.2.9.9.9', '1.2'))  //1
console.log(compare_version('1.3', '1.10') ) //-1
console.log(compare_version('1.1', '1.3.4') ) //-1
console.log(compare_version('0.1', '1.3.4') ) //-1
console.log(compare_version('1.3.4', '1.3'))  //1
console.log(compare_version('1.3.4', '1.3.4'))  //0