var tdElement = document.querySelector('td.sorting_1');
document.querySelectorAll('div table').forEach(el => el.classList.remove("collapsed"));
// Check if the element is found
if (tdElement) {
  // Create a <style> element
  var styleElement = document.createElement('style');

  // Define the styles for ::before pseudo-element
  var styles = `
    td.sorting_1::before {
     	display:none !important; 
      /* Add any other styles you want to modify */
      cursor:default !important;
      width: 0;
      height: 0;
    }
    tr td.child{
		display:none !important;
	}

	tr th:last-child, tr td:last-child {
		display:table-cell !important; 
	}
  `;

  // Set the styles as the innerHTML of the <style> element
  styleElement.innerHTML = styles;

  // Append the <style> element to the document head
  document.head.appendChild(styleElement);
  }
