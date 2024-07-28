<?php include 'garibnath_db.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Garibnath Stock Management</title>
    <link rel="stylesheet" href="styles.css">
    </head>
<body>
    <!-- nav container -->
    <nav class="nav-container">
        <!-- left -->
        <img class="logo" src="../image/garibnath.jpg" alt="error"> <!-- Corrected path -->


        <!-- middle container -->
        <div class="header">
            <h1 class="header-item">GARIBNATH <span style="color: #04ddb2;">ENTERPRISE</span></h1>
        </div>
        <!-- last -->
        <h3 class="download-btn">Stone crusher all parts.</h3>
    </nav>

    <h2 class="product-header centered"style="background-color:black;">THROSS SPRING RAD</h2>

    <!-- Search Bar -->
    <input class="search" type="text" id="searchBar" placeholder="Search for products..." onkeyup="filterTable()">

    <!-- Add New Product Form -->
    <form id="addForm" method="POST" action="add.php">
        <input type="text" name="name" placeholder="Product Name" required>
        <input type="number" name="v_qty" placeholder="V. Qty" required>
        <input type="number" name="g_qty" placeholder="G. Qty" required>
        <input type="number" name="rate" placeholder="Rate" step="0.01" required>
        <button type="submit">Add Product</button>
    </form>

    <table id="garibnathTable">
        <thead>
            <tr>
                <th>SR No</th>
                <th>Product Name</th>
                <th>V. Qty</th>
                <th>G. Qty</th>
                <th>Total Qty</th>
                <th>Rate (₹)</th>
                <th>Total Price (₹)</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $sql = "SELECT * FROM ts_rod";
            $result = $conn->query($sql);

            $total_qty = 0;
            $total_price = 0;
            $sr_no = 1;

            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    $total_qty_product = $row['v_qty'] + $row['g_qty'];
                    $total_price_product = $total_qty_product * $row['rate'];
                    $total_qty += $total_qty_product;
                    $total_price += $total_price_product;

                    $qty_class = $total_qty_product < 5 ? 'low-quantity' : '';

                    echo "<tr data-id='{$row['id']}'>
                            <td>{$sr_no}</td>
                            <td class='editable' data-field='name'>{$row['name']}</td>
                            <td class='editable' data-field='v_qty'>{$row['v_qty']}</td>
                            <td class='editable' data-field='g_qty'>{$row['g_qty']}</td>
                            <td class='{$qty_class}'>{$total_qty_product}</td>
                            <td class='editable' data-field='rate'>₹{$row['rate']}</td>
                            <td>₹{$total_price_product}</td>
                            <td>
                                <button class='delete-btn'>Delete</button>
                            </td>
                          </tr>";
                    $sr_no++;
                }
            } else {
                echo "<tr><td colspan='8'>No records found</td></tr>";
            }
            ?>
        </tbody>
        <tfoot>
            <tr>
                <th colspan="4">Total</th>
                <th class="<?php echo $total_qty < 5 ? 'low-quantity' : ''; ?>"><?php echo $total_qty; ?></th>
                <th></th>
                <th>₹<?php echo number_format($total_price, 2); ?></th>
                <th></th>
            </tr>
        </tfoot>
    </table>

    <script>
    document.addEventListener('DOMContentLoaded', () => {
        const table = document.getElementById('garibnathTable').getElementsByTagName('tbody')[0];

        function updateQuantityColors() {
            const rows = table.querySelectorAll('tr');
            rows.forEach(row => {
                const totalQtyCell = row.querySelector("td:nth-child(5)");
                if (totalQtyCell) {
                    const totalQty = parseInt(totalQtyCell.textContent, 10);
                    totalQtyCell.className = totalQty < 5 ? 'low-quantity' : '';
                }
            });
        }

        table.addEventListener('click', (event) => {
            const target = event.target;

            if (target.classList.contains('editable')) {
                const field = target.dataset.field;
                const originalValue = target.textContent;
                const input = document.createElement('input');
                input.value = originalValue.replace('₹', ''); // Remove ₹ symbol for editing
                input.style.width = '100%';
                input.style.boxSizing = 'border-box';

                target.textContent = '';
                target.appendChild(input);
                input.focus();

                input.addEventListener('blur', () => {
                    const newValue = input.value;
                    if (newValue !== originalValue.replace('₹', '')) {
                        const row = target.parentElement;
                        const id = row.dataset.id;
                        const xhr = new XMLHttpRequest();
                        xhr.open('POST', 'update.php', true);
                        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                        xhr.send(`id=${id}&field=${field}&value=${newValue}`);

                        xhr.onreadystatechange = function() {
                            if (xhr.readyState === 4 && xhr.status === 200) {
                                target.textContent = '₹' + newValue;
                                // Update total quantity and total price
                                const vQty = parseFloat(row.querySelector("[data-field='v_qty']").textContent);
                                const gQty = parseFloat(row.querySelector("[data-field='g_qty']").textContent);
                                const rate = parseFloat(row.querySelector("[data-field='rate']").textContent.replace('₹', ''));
                                const totalQty = vQty + gQty;
                                const totalPrice = totalQty * rate;
                                row.children[4].textContent = totalQty;
                                row.children[6].textContent = '₹' + totalPrice.toFixed(2); // Include ₹
                                updateTotals();
                                updateQuantityColors(); // Update colors after changes
                            } else {
                                target.textContent = '₹' + originalValue; // Revert to original value if there's an error
                            }
                        };
                    } else {
                        target.textContent = '₹' + originalValue; // Revert to original value if no change
                    }
                });

                input.addEventListener('keydown', (event) => {
                    if (event.key === 'Enter') {
                        input.blur();
                    }
                });
            }

            if (target.classList.contains('delete-btn')) {
                const row = target.parentElement.parentElement;
                const id = row.dataset.id;
                const xhr = new XMLHttpRequest();
                xhr.open('POST', 'delete.php', true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.send(`id=${id}`);

                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        table.removeChild(row);
                        updateTotals();
                        updateQuantityColors(); // Update colors after row removal
                    }
                };
            }
        });

        function updateTotals() {
            let totalQty = 0;
            let totalPrice = 0;

            const rows = table.querySelectorAll('tr');
            rows.forEach((row) => {
                const vQty = parseFloat(row.querySelector("[data-field='v_qty']").textContent) || 0;
                const gQty = parseFloat(row.querySelector("[data-field='g_qty']").textContent) || 0;
                const rate = parseFloat(row.querySelector("[data-field='rate']").textContent.replace('₹', '')) || 0;
                const totalQtyProduct = vQty + gQty;
                const totalPriceProduct = totalQtyProduct * rate;

                totalQty += totalQtyProduct;
                totalPrice += totalPriceProduct;

                // Update SR No
                row.children[0].textContent = row.rowIndex; // Directly use row index for SR No
            });

            const tfoot = document.querySelector('tfoot');
            const totalQtyCell = tfoot.querySelector('th:nth-child(5)');
            const totalPriceCell = tfoot.querySelector('th:nth-child(7)');

            totalQtyCell.textContent = totalQty;
            totalPriceCell.textContent = '₹' + totalPrice.toFixed(2); // Include ₹

            // Apply color only to total quantity
            totalQtyCell.className = totalQty < 5 ? 'low-quantity' : '';
        }

        // Initial call to set colors when the page loads
        updateQuantityColors();
    });

    function filterTable() {
        const input = document.getElementById('searchBar');
        const filter = input.value.toUpperCase();
        const table = document.getElementById('garibnathTable');
        const tr = table.getElementsByTagName('tr');

        for (let i = 1; i < tr.length; i++) {
            const td = tr[i].getElementsByTagName('td')[1];
            if (td) {
                const txtValue = td.textContent || td.innerText;
                tr[i].style.display = txtValue.toUpperCase().indexOf(filter) > -1 ? '' : 'none';
            }
        }
    }
    </script>
</body>
</html>
