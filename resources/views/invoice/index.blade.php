@php
    SeoHelper::setTitle(__('Build - Your Invoice'));
    Theme::fireEventGlobalAssets();
@endphp
<style>
    .header-container {
        background-color: #f8f9fa;
        /* Set background color */
        padding: 10px 0;
        /* Add padding */
    }

    .logo img {
        max-width: 100%;
        /* Ensure the logo doesn't exceed its container */
    }

    .total-amount-container {
        font-size: 18px;
        /* Increase font size for total amount */
    }

    .menu-container .pc-builder-button {
        margin-left: 10px;
        /* Add margin between buttons */
    }

    /* Style for hidden buttons on smaller screens */
    .hidden-xs {
        display: none;
    }
</style>
{!! Theme::partial('header') !!}
<style>
    /* Custom styling for list items */
    .component-image img {
        max-width: 100%;
        height: auto;
    }

    .component-details h3 {
        margin: 0;
    }

    .component-action button {
        margin-left: auto;
    }
</style>
<div id="cart-container"></div>
<main class="main invoice-builder">
    <div id="extension-pc-builder-pc-builder" class="container pc-builder-journal3">
        <div class="row">
            <div id="content" class="col-sm-12 page-content">
                <div id="pc-builder-container" class="pc-builder-container">
                    <div class="row total-container-row">
                        <div class="col-sm-6">
                            <div class="sub-heading hidden-xs hidden-sm hidden-md">PC Builder - Build your own PC -
                                Skyland Computer BD </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="hide" value="1" id="input-hide">
                                    Hide Unconfigured Components
                                </label>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div id="menu-container" class="text-right">
                                <div id="total-container" class="text-center">
                                    <div class="total-amount bg-primary">
                                        <div>Total Amount</div>
                                        <div><span id="total-amount">$0.00</span></div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-horizontal" id="form-pc-builder" style="margin-top: 15px;">
                        <div class="pc-builder-category-container">
                            <table class="table table-striped">
                                <thead>
                                    <tr>

                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($categories as $data)
                                        @if ($data->products->count() > 0)
                                            <tr>

                                                <td>
                                                    <div class="text-center">
                                                        <img class="card-img-top" style="width:50px"
                                                            src="{{ RvMedia::getImageUrl($data->image, 'product-categories') }}"
                                                            alt="Card image cap">

                                                        <p class="card-title">{{ $data->name }}</p>
                                                    </div>

                                                </td>
                                                <td id="category-{{ $data->id }}-products">
                                                    No products
                                                </td>
                                                <td> <button onclick="getCategoryRouteUrl({{ $data->id }})"
                                                        class="btn btn-outline-primary btn-sm"><i
                                                            class="fas fa-plus"></i> Add
                                                        Products</button></td>
                                            </tr>
                                        @endif
                                    @endforeach
                                </tbody>
                            </table>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</main>
<script>
    const showLoader = () => {
        const loader = document.createElement('div');
        loader.classList.add('loader');
        loader.innerHTML = '<img src="loader.gif" alt="Loading...">';
        document.body.appendChild(loader);
        disableUserInteraction();
        return loader;
    };

    const hideLoader = (loader) => {
        document.body.removeChild(loader);
        enableUserInteraction();
    };

    const disableUserInteraction = () => {
        document.body.style.pointerEvents = 'none';
    };

    const enableUserInteraction = () => {
        document.body.style.pointerEvents = 'auto';
    };

    const getCategoryRouteUrl = (categoryId) => {
        const baseUrl = "{{ url('/invoice/getCategoryProduct') }}";
        const routeUrl = `${baseUrl}/${categoryId}`;

        const loader = showLoader(); // Show loader before fetching data

        fetch(routeUrl)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.json();
            })
            .then(data => {
                console.log(data.products);
                generateProductModal(data.products);
            })
            .catch(error => {
                console.error('There was a problem with the fetch operation:', error);
            })
            .finally(() => {
                hideLoader(loader); // Hide loader after fetching data
            });
    };

    const getProductDetails = async (id) => {
        const baseUrl = "{{ url('/invoice/getProductDetails') }}";
        const routeUrl = `${baseUrl}/${id}`;

        try {
            const response = await fetch(routeUrl);
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            const data = await response.json();
            console.log(data.product);
            return data.product;
        } catch (error) {
            console.error('There was a problem with the fetch operation:', error);
            throw error; // Re-throw the error to handle it outside this function
        }
    };

    const generateProductModal = (products) => {
        const modalContainer = document.createElement('div');
        modalContainer.classList.add('modal', 'fade');
        modalContainer.setAttribute('id', 'productModal');
        modalContainer.setAttribute('tabindex', '-1');
        modalContainer.setAttribute('role', 'dialog');
        modalContainer.setAttribute('aria-labelledby', 'productModalLabel');
        modalContainer.setAttribute('aria-hidden', 'true');

        const modalDialog = document.createElement('div');
        modalDialog.classList.add('modal-dialog', 'modal-lg'); // Added 'modal-lg' for larger modal
        modalDialog.setAttribute('role', 'document');

        const modalContent = document.createElement('div');
        modalContent.classList.add('modal-content');

        const modalHeader = document.createElement('div');
        modalHeader.classList.add('modal-header');
        modalHeader.innerHTML = '<h5 class="modal-title" id="productModalLabel">Product Details</h5>' +
            '<button type="button" class="close" data-dismiss="modal" aria-label="Close">' +
            '<span aria-hidden="true">&times;</span></button>';
        modalContent.appendChild(modalHeader);

        const modalBody = document.createElement('div');
        modalBody.classList.add('modal-body');

        // Create a container for inline product cards
        const cardContainer = document.createElement('div');
        cardContainer.classList.add('d-flex', 'flex-row', 'flex-wrap');

        products.forEach(product => {
            const productCard = document.createElement('div');
            productCard.classList.add('product-card', 'card', 'm-2', 'p-2');
            productCard.style.width = '250px'; // Adjust card width as needed

            const cardBody = document.createElement('div');
            cardBody.classList.add('d-flex', 'flex-row');

            // Image column
            const imageCol = document.createElement('div');
            imageCol.classList.add('mr-3');
            const productImage = document.createElement('img');
            productImage.src = product.imgUrl.original;
            productImage.alt = product.name;
            productImage.style.width = '60px'; // Set image size to 30px
            imageCol.appendChild(productImage);
            cardBody.appendChild(imageCol);

            // Details column
            const detailsCol = document.createElement('div');
            const productName = document.createElement('h5');
            productName.textContent = product.name;
            const productPrice = document.createElement('div');
            productPrice.textContent = `Price: $${product.price}`;
            const addToCartBtn = document.createElement('button');
            addToCartBtn.classList.add('btn', 'btn-primary', 'btn-sm', 'add-to-cart');
            addToCartBtn.textContent = 'select';
            addToCartBtn.addEventListener('click', () => {
                addToProductCart(product.id, product.categoryId);
            });
            detailsCol.appendChild(productName);
            detailsCol.appendChild(productPrice);
            detailsCol.appendChild(addToCartBtn);
            cardBody.appendChild(detailsCol);

            productCard.appendChild(cardBody);
            cardContainer.appendChild(productCard);
        });

        modalBody.appendChild(cardContainer);
        modalContent.appendChild(modalBody);
        modalDialog.appendChild(modalContent);
        modalContainer.appendChild(modalDialog);
        document.body.appendChild(modalContainer);
        $('#productModal').modal('show');

        $('#productModal').on('hidden.bs.modal', function(e) {
            $(this).remove();
        });
    };



    const addToProductCart = async (productId, categoryId) => {
        try {
            const productDetails = await getProductDetails(productId);
            console.log(productDetails);
            let cart = localStorage.getItem('cart') ? JSON.parse(localStorage.getItem('cart')) : {};

            if (!cart[categoryId]) {
                cart[categoryId] = {};
            }

            cart[categoryId][productId] = {
                id: productId,
                categoryId: categoryId,
                name: productDetails.name,
                price: productDetails.price,
                image: productDetails.img,
                quantity: (cart[categoryId][productId] && cart[categoryId][productId].quantity) ? cart[
                    categoryId][productId].quantity + 1 : 1
            };

            localStorage.setItem('cart', JSON.stringify(cart));
            loadCartView();
        } catch (error) {
            console.error('Error adding product to cart:', error);
        }
    };

    const loadCartView = () => {
        const totalAmount = generateTotalAmount();
        // Display or update the total amount in your UI
        document.getElementById('total-amount').textContent = `$${totalAmount.toFixed(2)}`;
        const cartData = localStorage.getItem('cart');
        if (!cartData) {
            console.log('Cart is empty');
            return;
        }

        const cart = JSON.parse(cartData);
        console.log(cart);
        for (const categoryId in cart) {
            const categoryData = cart[categoryId];
            const categoryContainer = document.getElementById(`category-${categoryId}-products`);
            categoryContainer.innerHTML = ''; // Clear previous products

            // Create a table to hold product details
            const productTable = document.createElement('table');
            productTable.classList.add('product-table');

            for (const productId in categoryData) {
                const productDetails = categoryData[productId];

                // Create table row for each product
                const tableRow = document.createElement('tr');
                tableRow.classList.add('product-row');

                // Product Image column
                const imageCell = document.createElement('td');
                const productImage = document.createElement('img');
                productImage.src = productDetails.image.original;
                productImage.alt = productDetails.name;
                productImage.style.width = '30px'; // Fix image width to 30px
                imageCell.appendChild(productImage);

                // Name column
                const nameCell = document.createElement('td');
                nameCell.textContent = productDetails.name;

                // Quantity column
                const quantityCell = document.createElement('td');
                quantityCell.textContent = productDetails.quantity;

                // Total Price column
                const totalPriceCell = document.createElement('td');
                const totalPrice = productDetails.price * productDetails.quantity;
                totalPriceCell.textContent = `$${totalPrice.toFixed(2)}`;

                // Remove button column
                const removeButtonCell = document.createElement('td');
                const removeButton = document.createElement('button');
                removeButton.classList.add('btn', 'btn-danger', 'btn-sm', 'remove-from-cart');
                removeButton.setAttribute('data-category', categoryId);
                removeButton.setAttribute('data-id', productId);
                removeButton.textContent = 'Remove';
                removeButtonCell.appendChild(removeButton);

                // Append cells to the table row
                tableRow.appendChild(imageCell);
                tableRow.appendChild(nameCell);
                tableRow.appendChild(quantityCell);
                tableRow.appendChild(totalPriceCell);
                tableRow.appendChild(removeButtonCell);

                // Append the row to the table
                productTable.appendChild(tableRow);
            }

            // Append the table to the category container
            categoryContainer.appendChild(productTable);
        }



        // Add event listener to remove buttons
        document.querySelectorAll('.remove-from-cart').forEach(button => {
            button.addEventListener('click', () => {
                const categoryId = button.dataset.category;
                const productId = button.dataset.id;
                removeFromCart(categoryId, productId);
                loadCartView(); // Reload the cart view after removing the product
            });
        });
    };

    const removeFromCart = (categoryId, productId) => {
        let cart = localStorage.getItem('cart') ? JSON.parse(localStorage.getItem('cart')) : {};
        if (cart[categoryId] && cart[categoryId][productId]) {
            delete cart[categoryId][productId];
            localStorage.setItem('cart', JSON.stringify(cart));
        }
    };




    const generateTotalAmount = () => {
        let totalAmount = 0;
        const cartData = localStorage.getItem('cart');
        if (!cartData) {
            return totalAmount;
        }

        const cart = JSON.parse(cartData);
        for (const categoryId in cart) {
            const categoryData = cart[categoryId];
            for (const productId in categoryData) {
                const productDetails = categoryData[productId];
                const totalPrice = productDetails.price * productDetails.quantity;
                totalAmount += totalPrice;
            }
        }
        return totalAmount;
    };

    const generateTotalAmountByCategory = (categoryId) => {
        const totalAmountByCategory = 0;
        const categoryData = cart[categoryId];
        let totalAmount = 0;
        for (const productId in categoryData) {
            const productDetails = categoryData[productId];
            const totalPrice = productDetails.price * productDetails.quantity;
            totalAmountByCategory += totalPrice;
        }
        return totalAmountByCategory;
    };


    loadCartView()
</script>


{!! Theme::partial('footer') !!}
