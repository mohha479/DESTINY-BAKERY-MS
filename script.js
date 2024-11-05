// JavaScript to calculate total sale amount
document
  .getElementById("quantity_sold")
  .addEventListener("input", calculateTotal);
document
  .getElementById("price_per_unit")
  .addEventListener("input", calculateTotal);
document
  .getElementById("amount_given")
  .addEventListener("input", calculateChange);

// Function to calculate total sale amount
function calculateTotal() {
  const quantityInput = document.getElementById("quantity_sold");
  const priceInput = document.getElementById("price_per_unit");
  const totalInput = document.getElementById("total_sale");

  // Calculate total sale amount
  const quantity = parseFloat(quantityInput.value) || 0;
  const price = parseFloat(priceInput.value) || 0;
  totalInput.value = (quantity * price).toFixed(2); // Update total amount
}

// Function to calculate change
function calculateChange() {
  const amountGivenInput = document.getElementById("amount_given");
  const totalSaleInput = document.getElementById("total_sale");
  const changeInput = document.getElementById("change_amount");

  const amountGiven = parseFloat(amountGivenInput.value) || 0;
  const totalSale = parseFloat(totalSaleInput.value) || 0;

  // Calculate change
  changeInput.value = (amountGiven - totalSale).toFixed(2);
}

// Function to toggle payment fields (if you have more payment methods)
function toggleCashFields() {
  console.log(
    "Payment method selected: " +
      document.getElementById("payment_method").value
  );

  var paymentMethod = document.getElementById("payment_method").value;
  var cashFields = document.getElementById("cash_fields");
  var mpesaFields = document.getElementById("mpesa_fields");

  if (paymentMethod === "cash") {
    cashFields.style.display = "block"; // Show cash fields
    mpesaFields.style.display = "none"; // Hide M-Pesa fields
  } else if (paymentMethod === "mpesa") {
    mpesaFields.style.display = "block";
    cashFields.style.display = "none"; // Hide cash fields
    // Show M-Pesa fields
  } else {
    cashFields.style.display = "none"; // Hide cash fields
    mpesaFields.style.display = "none"; // Hide M-Pesa fields
  }
}


function printTable() {
  window.print();
}





//script for searching orders

function searchOrders() {
  // Declare variables
  var input, filter, table, tr, td, i, j, txtValue;
  input = document.getElementById("search");
  filter = input.value.toLowerCase();
  table = document.querySelector(".table-container table");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, except the first (header)
  for (i = 1; i < tr.length; i++) {
      tr[i].style.display = "none"; // Initially hide all rows
      // Loop through all cells in the row
      td = tr[i].getElementsByTagName("td");
      for (j = 0; j < td.length; j++) {
          if (td[j]) {
              txtValue = td[j].textContent || td[j].innerText;
              if (txtValue.toLowerCase().indexOf(filter) > -1) {
                  tr[i].style.display = ""; // Show the row if it matches
                  break; // Stop searching in this row
              }
          }
      }
  }
}

function searchEmployees() {
  var input, filter, table, tr, td, i, j, txtValue;
  input = document.getElementById("employeeSearch");
  filter = input.value.toLowerCase();
  table = document.querySelector("#employee table");
  tr = table.getElementsByTagName("tr");

  for (i = 1; i < tr.length; i++) {
      tr[i].style.display = "none"; 
      td = tr[i].getElementsByTagName("td");
      for (j = 0; j < td.length; j++) {
          if (td[j]) {
              txtValue = td[j].textContent || td[j].innerText;
              if (txtValue.toLowerCase().indexOf(filter) > -1) {
                  tr[i].style.display = ""; 
                  break; 
              }
          }
      }
  }
}

function searchBills() {
  var input, filter, table, tr, td, i, j, txtValue;
  input = document.getElementById("billsSearch");
  filter = input.value.toLowerCase();
  table = document.querySelector("#operational-bills table");
  tr = table.getElementsByTagName("tr");

  for (i = 1; i < tr.length; i++) {
      tr[i].style.display = "none"; 
      td = tr[i].getElementsByTagName("td");
      for (j = 0; j < td.length; j++) {
          if (td[j]) {
              txtValue = td[j].textContent || td[j].innerText;
              if (txtValue.toLowerCase().indexOf(filter) > -1) {
                  tr[i].style.display = ""; 
                  break; 
              }
          }
      }
  }
}

function searchEquipment() {
  var input, filter, table, tr, td, i, j, txtValue;
  input = document.getElementById("equipmentSearch");
  filter = input.value.toLowerCase();
  table = document.querySelector("#equipment table");
  tr = table.getElementsByTagName("tr");

  for (i = 1; i < tr.length; i++) {
      tr[i].style.display = "none"; 
      td = tr[i].getElementsByTagName("td");
      for (j = 0; j < td.length; j++) {
          if (td[j]) {
              txtValue = td[j].textContent || td[j].innerText;
              if (txtValue.toLowerCase().indexOf(filter) > -1) {
                  tr[i].style.display = ""; 
                  break; 
              }
          }
      }
  }
}




function searchSales() {
    var input, filter, table, tr, td, i, j, txtValue;
    input = document.getElementById("salesSearch");
    filter = input.value.toLowerCase();
    table = document.querySelector(".table-container table");
    tr = table.getElementsByTagName("tr");

    for (i = 1; i < tr.length; i++) {
        tr[i].style.display = "none"; 
        td = tr[i].getElementsByTagName("td");
        for (j = 0; j < td.length; j++) {
            if (td[j]) {
                txtValue = td[j].textContent || td[j].innerText;
                if (txtValue.toLowerCase().indexOf(filter) > -1) {
                    tr[i].style.display = ""; 
                    break; 
                }
            }
        }
    }
}

function searchProducts() {
  // Declare variables
  var input, filter, table, tr, td, i, j, txtValue;
  input = document.getElementById("productSearch"); // Input field for search
  filter = input.value.toLowerCase(); // Get the search term and convert to lowercase
  table = document.querySelector("#productsTable"); // The table to search within
  tr = table.getElementsByTagName("tr"); // Get all rows in the table

  // Loop through all table rows, except the first (header)
  for (i = 1; i < tr.length; i++) {
      tr[i].style.display = "none"; // Initially hide all rows
      // Loop through all cells in the row
      td = tr[i].getElementsByTagName("td");
      for (j = 0; j < td.length; j++) {
          if (td[j]) {
              txtValue = td[j].textContent || td[j].innerText; // Get cell text
              if (txtValue.toLowerCase().indexOf(filter) > -1) {
                  tr[i].style.display = ""; // Show the row if it matches
                  break; // Stop searching in this row
              }
          }
      }
  }
}

function searchStock() {
  // Declare variables
  var input, filter, table, tr, td, i, j, txtValue;
  input = document.getElementById("stockSearch"); // Input field for search
  filter = input.value.toLowerCase(); // Get the search term and convert to lowercase
  table = document.querySelector("#stockTable"); // The stock table to search within
  tr = table.getElementsByTagName("tr"); // Get all rows in the table

  // Loop through all table rows, except the first (header)
  for (i = 1; i < tr.length; i++) {
      tr[i].style.display = "none"; // Initially hide all rows
      // Loop through all cells in the row
      td = tr[i].getElementsByTagName("td");
      for (j = 0; j < td.length; j++) {
          if (td[j]) {
              txtValue = td[j].textContent || td[j].innerText; // Get cell text
              if (txtValue.toLowerCase().indexOf(filter) > -1) {
                  tr[i].style.display = ""; // Show the row if it matches
                  break; // Stop searching in this row
              }
          }
      }
  }
}

//print table sales
function printTable() {
  // Get the HTML of the table with the class 'record'
  var table = document.getElementById('salesTable').innerHTML;

  // Create a new window
  var newWindow = window.open('', '', 'height=600,width=800');

  // Write the HTML to the new window
  newWindow.document.write('<html><head><title>Print Table</title>');
  newWindow.document.write('<link rel="stylesheet" href="style.css">'); // Include your CSS for styling
  newWindow.document.write('</head><body>');
  newWindow.document.write('<h1 align="center">Sales Data</h1>');
  newWindow.document.write('<table>' + table + '</table>');
  newWindow.document.write('</body></html>');

  // Close the document to render
  newWindow.document.close();

  // Print the new window
  newWindow.print();
}


function printrecords() {
  // Create a new window
  var newWindow = window.open('', '', 'height=600,width=800');
  newWindow.document.write('<html><head><title>Print Tables</title>');
  newWindow.document.write('<link rel="stylesheet" href="style.css">');
  newWindow.document.write('</head><body>');

  // Array of objects containing table IDs and their names
  var tables = [{
          id: 'billsTable',
          name: 'Monthly Operational Bills'
      },
      {
          id: 'equipmentTable',
          name: 'Bakery Equipment Inventory'
      },
      {
          id: 'employeeTable',
          name: 'Employee Directory'
      }
  ];

  // Loop through each table and add its name and HTML to the new window
  tables.forEach(function(table) {
      var tableElement = document.getElementById(table.id);
      if (tableElement) {
          newWindow.document.write('<h2 align="center">' + table.name + '</h2>'); // Add table name
          newWindow.document.write(tableElement.outerHTML); // Add table HTML
          newWindow.document.write('<br>'); // Add space between tables
      }
  });

  newWindow.document.write('</body></html>');
  newWindow.document.close(); // Close the document to render

  // Wait for the new window to load before printing
  newWindow.onload = function() {
      setTimeout(function() {
          newWindow.print(); // Print the window content
          newWindow.close(); // Close the print window after printing
      }, 100); // Delay of 100 milliseconds
  };
}