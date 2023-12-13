document.addEventListener('DOMContentLoaded', function() {
    // Function to show the popup
    function showPopup() {
      document.getElementById('popup-container').style.display = 'block';
    }

    // Function to hide the popup
    function hidePopup() {
      document.getElementById('popup-container').style.display = 'none';
    }

    // Attach click event to the div
    document.getElementById('popup-trigger').addEventListener('click', function () {
      // Show the popup
      showPopup();
    });

    // Attach click event to the close button
    document.getElementById('close-popup').addEventListener('click', hidePopup);
  });