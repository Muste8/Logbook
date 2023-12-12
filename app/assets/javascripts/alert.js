window.onload = function() {
    // Get the reference to the div
    let myDiv = document.getElementById('product-div');

    // Check if the div is not null before accessing its properties
    if (myDiv && myDiv.innerHTML.trim() === '') {
      // Set the display to "none"
      myDiv.style.display = 'none';
    }
  };

console.log('Hello');