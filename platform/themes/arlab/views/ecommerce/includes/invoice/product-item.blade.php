@if ($product)
    <div class="product-cart-wrap mb-30">
        <div class="product-img-action-wrap">
            <div class="product-img product-img-zoom">
                <a href="{{ $product->url }}">
                    <img class="default-img" src="{{ RvMedia::getImageUrl($product->image, 'product-thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $product->name }}">
                    <img class="hover-img" src="{{ RvMedia::getImageUrl($product->images[1] ?? $product->image, 'product-thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $product->name }}">
                </a>
            </div>
            <div class="product-action-1">
                <a aria-label="{{ __('Quick View') }}" href="#" class="action-btn hover-up js-quick-view-button" data-url="{{ route('public.ajax.quick-view', $product->id) }}"><i class="far fa-eye"></i></a>

            </div>
            <div class="product-badges product-badges-position product-badges-mrg">
                @if ($product->isOutOfStock())
                    <span style="background-color: #000; font-size: 11px;">{{ __('Out Of Stock') }}</span>
                @else
                    @if ($product->productLabels->count())
                        @foreach ($product->productLabels as $label)
                            <span @if ($label->color) style="background-color: {{ $label->color }}" @endif>{{ $label->name }}</span>
                        @endforeach
                    @elseif ($product->front_sale_price !== $product->price && $percentSale = get_sale_percentage($product->price, $product->front_sale_price))
                        <span class="hot">{{ $percentSale }}</span>
                    @endif
                @endif
            </div>
        </div>
        <div class="product-content-wrap">
            @php $category = $product->categories->sortByDesc('id')->first(); @endphp
            @if ($category)
                <div class="product-category">
                    <a href="{{ $category->url }}">{{ $category->name }}</a>
                </div>
            @endif
            <h2 class="text-truncate"><a href="{{ $product->url }}" title="{{ $product->name }}">{{ $product->name }}</a></h2>

            @if (EcommerceHelper::isReviewEnabled())
                <div class="rating_wrap">
                    <div class="rating">
                        <div class="product_rate" style="width: {{ $product->reviews_avg * 20 }}%"></div>
                    </div>
                    <span class="rating_num">({{ $product->reviews_count }})</span>
                </div>
            @endif

            {!! apply_filters('ecommerce_before_product_price_in_listing', null, $product) !!}

            <div class="product-price">
                <span>{{ format_price($product->front_sale_price_with_taxes) }}</span>
                @if ($product->front_sale_price !== $product->price)
                    <span class="old-price">{{ format_price($product->price_with_taxes) }}</span>
                @endif
            </div>

            {!! apply_filters('ecommerce_after_product_price_in_listing', null, $product) !!}

            @if (EcommerceHelper::isCartEnabled())
                <div class="product-action-1 show" @if (!EcommerceHelper::isReviewEnabled()) style="bottom: 10px;" @endif>
                    <a aria-label="{{ __('Add To builder') }}" class="action-btn hover-up add-to-builder-button" data-id="{{ $product->id }}" data-category="{{  $category->id }}" href="#"><i class="far fa-plus"></i></a>
                </div>
            @endif
        </div>
    </div>
@endif
<script>
    document.addEventListener('DOMContentLoaded', function() {

        var addToBuilderButtons = document.querySelectorAll('.add-to-builder-button');


        addToBuilderButtons.forEach(function(button) {
            button.addEventListener('click', function(event) {
                event.preventDefault();

                var productId = button.getAttribute('data-id');
                var categoryId = button.getAttribute('data-category');
                addToProductCart(productId, categoryId);
                window.location.href = "{{ route('invoice') }}";
            });
        });


    });
</script>
@include('invoice.script')
