<section class="section-padding-60">
    <div class="container wow fadeIn animated">
        @if (clean($title))
            <h3 class="section-title style-1 mb-30">{!! BaseHelper::clean($title) !!}</h3>
        @endif

        <div class="carousel-6-columns-cover position-relative">
            <div class="slider-arrow slider-arrow-2 carousel-6-columns-arrow" id="carousel-6-columns-arrows"></div>
            <div class="carousel-slider-wrapper carousel-6-columns" id="carousel-6-columns-products">
                @foreach ($products as $product)
                    <div class="product-cart-wrap small hover-up p-10">
                        @include(Theme::getThemeNamespace() . '::views.ecommerce.includes.product-item-small', compact('product'))
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
