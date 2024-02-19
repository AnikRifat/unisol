<?php

use Botble\Theme\Facades\Theme;
use Illuminate\Support\Facades\Route;
use Theme\Wowy\Http\Controllers\WowyController;

Route::group(['controller' => WowyController::class, 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {
        Route::group(['prefix' => 'ajax', 'as' => 'public.ajax.'], function () {
            Route::get('cart', 'ajaxCart')
                ->name('cart');

            Route::get('product-reviews/{id}', 'ajaxGetProductReviews')
                ->name('product-reviews')
                ->wherePrimaryKey();

            Route::get('quick-view/{id}', 'getQuickView')
                ->name('quick-view')
                ->wherePrimaryKey();

            Route::get('products-by-collection/{id}', 'ajaxGetProductsByCollection')
                ->name('products-by-collection')
                ->wherePrimaryKey();

            Route::get('products-by-category/{id}', 'ajaxGetProductsByCategory')
                ->name('products-by-category')
                ->wherePrimaryKey();

            Route::get('search-products', 'ajaxSearchProducts')
                ->name('search-products');
        });
    });
});

Theme::routes();
