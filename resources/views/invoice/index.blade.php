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
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Category</th>
                                            <th>Products</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($categories as $data)
                                            @if ($data->products->count() > 0)
                                                <tr>
                                                    <td>
                                                        <div class="d-flex align-items-center">
                                                            <img class="mr-2" style="width:50px; height: 50px;"
                                                                src="{{ RvMedia::getImageUrl($data->image, 'product-categories') }}"
                                                                alt="Category Image">
                                                            <p class="m-0">{{ $data->name }}</p>
                                                        </div>
                                                    </td>
                                                    <td id="category-{{ $data->id }}-products">
                                                        No products
                                                    </td>
                                                    <td>
                                                        <a href="{{ route('invoice.getProductsByCategory',$data->id) }}"
                                                            class="btn btn-outline-primary btn-sm"><i class="fas fa-plus"></i> Add Products
                                                        </a>
                                                        {{-- <button onclick="getCategoryRouteUrl({{ $data->id }})"
                                                            class="btn btn-outline-primary btn-sm"><i class="fas fa-plus"></i> Add Products
                                                        </button> --}}
                                                    </td>
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
    </div>
</main>
@include('invoice.script')


{!! Theme::partial('footer') !!}
