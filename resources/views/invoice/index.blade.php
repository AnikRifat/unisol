@php
    SeoHelper::setTitle(__('Build - Your Invoice'));
    Theme::fireEventGlobalAssets();
@endphp

{!! Theme::partial('header') !!}
<link rel="stylesheet" href="{{ asset('css/pc_builder.css') }}">
<main class="main invoice-builder">
    <div id="extension-pc-builder-pc-builder" class="container pc-builder-journal3">
        <div class="row">
            <div id="content" class="col-sm-12 page-content">
                <div id="pc-builder-container" class="pc-builder-container">
                    <div class="row header-container">
                        <div class="col-xs-3">
                            <div class="logo" style="width:150px;"><img
                                    src="https://www.ultratech.com.bd/image/catalog/website/logo/ultra-technology-header-logo-3.png"
                                    alt="Build Your PC" title="Build Your PC" class="img-responsive"></div>
                        </div>
                        <div class="col-xs-9">
                            <div id="menu-container" class="text-right">
                                <span class="button-container"><button type="button"
                                        onclick="pc_builder.cart($('#input-amount').val(), $('#input-weight').val(), $('#input-build').val());"
                                        id="pc-builder-cart" class="pc-builder-button"><i
                                            class="fa fa-shopping-cart fa-fw"></i><span
                                            class="hidden-xs hidden-sm hidden-md"><br>Add to Cart</span></button></span>
                                <span class="button-container"><button type="button" onclick="pc_builder.save('');"
                                        id="pc-builder-save" class="pc-builder-button"><i
                                            class="fa fa-save fa-fw"></i><span
                                            class="hidden-xs hidden-sm hidden-md"><br>Save Build</span></button></span>
                                <span class="button-container"><a
                                        href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder/print"
                                        target="_blank" id="pc-builder-print" class="pc-builder-button"><i
                                            class="fa fa-print fa-fw"></i><span
                                            class="hidden-xs hidden-sm hidden-md"><br>Print</span></a></span>
                                <span class="button-container"><button type="button" id="pc-builder-screenshot"
                                        class="pc-builder-button"><i class="fa fa-picture-o fa-fw"></i><span
                                            class="hidden-xs hidden-sm hidden-md"><br>Screenshot</span></button></span>
                                <span class="button-container"><button type="button" onclick="pc_builder.clear('');"
                                        id="pc-builder-clear" class="pc-builder-button"><i
                                            class="fa fa-refresh fa-fw"></i><span
                                            class="hidden-xs hidden-sm hidden-md"><br>Clear All</span></button></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="sub-heading text-center">PC Builder - Build your own PC - Ultra Technology</div>
                            <div class="checkbox hide-empty-component">
                                <label class="small">
                                    <input type="checkbox" name="hide" value="1" id="input-hide">
                                    Hide Unconfigured Components
                                </label>
                            </div>
                        </div>
                        <div class="col-sm-9">
                            <div id="total-container" class="text-center">
                                <div class="total-amount">
                                    <div class="hidden-xs hidden-sm hidden-md">Total Amount</div>
                                    <div><span class="hidden-lg"><i class="fa fa-shopping-bag"></i> </span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <form class="form-horizontal" id="form-pc-builder" style="margin-top: 15px;">
                        <input type="hidden" name="amount" value="0" id="input-amount">
                        <input type="hidden" name="weight" value="0" id="input-weight">
                        <input type="hidden" name="build" value="" id="input-build">
                        <div>
                            <div class="pc-builder-category-container">
                                <h4>Core Components</h4>
                                <div>
                                    <div id="pc-builder-component-container-11"
                                        class="pc-builder-component-container clearfix" data-product-selected="no">
                                        <div id="pc-builder-component-image-1-11" class="component-image"><img
                                                src="https://www.ultratech.com.bd/image/cache/catalog/website/featured-category/cpu-48x48.png.webp"
                                                class="thumbnail"></div>
                                        <div id="pc-builder-component-name-product-1-11" class="component-name-product">
                                            <div id="pc-builder-component-name-1-11" class="component-name">Processor
                                            </div>
                                            <div id="pc-builder-component-product-1-11" class="component-product">
                                                <div class="component-product-empty">&nbsp;</div>
                                            </div>
                                        </div>
                                        <div id="pc-builder-component-choose-1-11"
                                            class="component-choose hidden-xs hidden-sm">


                                            <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=11"
                                                class="btn btn-md btn-info hidden-xs hidden-sm"><i
                                                    class="fa fa-plus fa-fw"></i> <span
                                                    class="hidden-xs hidden-sm hidden-md">Choose</span></a>
                                        </div>

                                        <div id="pc-builder-component-choose-1-11-mobile"
                                            class="component-choose-mobile hidden-md hidden-lg">

                                            <div class="clearfix">
                                                <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=11"
                                                    class="pull-right hidden-md hidden-lg"><i
                                                        class="fa fa-plus fa-fw"></i></a>

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div id="pc-builder-component-container-3"
                                        class="pc-builder-component-container clearfix" data-product-selected="no">
                                        <div id="pc-builder-component-image-1-3" class="component-image"><img
                                                src="https://www.ultratech.com.bd/image/cache/catalog/website/featured-category/cpu-fan-48x48.png.webp"
                                                class="thumbnail"></div>
                                        <div id="pc-builder-component-name-product-1-3"
                                            class="component-name-product">
                                            <div id="pc-builder-component-name-1-3" class="component-name">CPU Cooler
                                            </div>
                                            <div id="pc-builder-component-product-1-3" class="component-product">
                                                <div class="component-product-empty">&nbsp;</div>
                                            </div>
                                        </div>
                                        <div id="pc-builder-component-choose-1-3"
                                            class="component-choose hidden-xs hidden-sm">


                                            <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=3"
                                                class="btn btn-md btn-info hidden-xs hidden-sm"><i
                                                    class="fa fa-plus fa-fw"></i> <span
                                                    class="hidden-xs hidden-sm hidden-md">Choose</span></a>
                                        </div>

                                        <div id="pc-builder-component-choose-1-3-mobile"
                                            class="component-choose-mobile hidden-md hidden-lg">

                                            <div class="clearfix">
                                                <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=3"
                                                    class="pull-right hidden-md hidden-lg"><i
                                                        class="fa fa-plus fa-fw"></i></a>

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div id="pc-builder-component-container-8"
                                        class="pc-builder-component-container clearfix" data-product-selected="no">
                                        <div id="pc-builder-component-image-1-8" class="component-image"><img
                                                src="https://www.ultratech.com.bd/image/cache/catalog/website/featured-category/mb-48x48.png.webp"
                                                class="thumbnail"></div>
                                        <div id="pc-builder-component-name-product-1-8"
                                            class="component-name-product">
                                            <div id="pc-builder-component-name-1-8" class="component-name">Motherboard
                                            </div>
                                            <div id="pc-builder-component-product-1-8" class="component-product">
                                                <div class="component-product-empty">&nbsp;</div>
                                            </div>
                                        </div>
                                        <div id="pc-builder-component-choose-1-8"
                                            class="component-choose hidden-xs hidden-sm">


                                            <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=8"
                                                class="btn btn-md btn-info hidden-xs hidden-sm"><i
                                                    class="fa fa-plus fa-fw"></i> <span
                                                    class="hidden-xs hidden-sm hidden-md">Choose</span></a>
                                        </div>

                                        <div id="pc-builder-component-choose-1-8-mobile"
                                            class="component-choose-mobile hidden-md hidden-lg">

                                            <div class="clearfix">
                                                <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=8"
                                                    class="pull-right hidden-md hidden-lg"><i
                                                        class="fa fa-plus fa-fw"></i></a>

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div id="pc-builder-component-container-12"
                                        class="pc-builder-component-container clearfix" data-product-selected="no">
                                        <div id="pc-builder-component-image-1-12" class="component-image"><img
                                                src="https://www.ultratech.com.bd/image/cache/catalog/website/featured-category/random-access-memory-48x48.png.webp"
                                                class="thumbnail"></div>
                                        <div id="pc-builder-component-name-product-1-12"
                                            class="component-name-product">
                                            <div id="pc-builder-component-name-1-12" class="component-name">Ram 1
                                            </div>
                                            <div id="pc-builder-component-product-1-12" class="component-product">
                                                <div class="component-product-empty">&nbsp;</div>
                                            </div>
                                        </div>
                                        <div id="pc-builder-component-choose-1-12"
                                            class="component-choose hidden-xs hidden-sm">


                                            <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=12"
                                                class="btn btn-md btn-info hidden-xs hidden-sm"><i
                                                    class="fa fa-plus fa-fw"></i> <span
                                                    class="hidden-xs hidden-sm hidden-md">Choose</span></a>
                                        </div>

                                        <div id="pc-builder-component-choose-1-12-mobile"
                                            class="component-choose-mobile hidden-md hidden-lg">

                                            <div class="clearfix">
                                                <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=12"
                                                    class="pull-right hidden-md hidden-lg"><i
                                                        class="fa fa-plus fa-fw"></i></a>

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div id="pc-builder-component-container-13"
                                        class="pc-builder-component-container clearfix" data-product-selected="no">
                                        <div id="pc-builder-component-image-1-13" class="component-image"><img
                                                src="https://www.ultratech.com.bd/image/cache/catalog/website/featured-category/random-access-memory-48x48.png.webp"
                                                class="thumbnail"></div>
                                        <div id="pc-builder-component-name-product-1-13"
                                            class="component-name-product">
                                            <div id="pc-builder-component-name-1-13" class="component-name">Ram-2
                                            </div>
                                            <div id="pc-builder-component-product-1-13" class="component-product">
                                                <div class="component-product-empty">&nbsp;</div>
                                            </div>
                                        </div>
                                        <div id="pc-builder-component-choose-1-13"
                                            class="component-choose hidden-xs hidden-sm">


                                            <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=13"
                                                class="btn btn-md btn-info hidden-xs hidden-sm"><i
                                                    class="fa fa-plus fa-fw"></i> <span
                                                    class="hidden-xs hidden-sm hidden-md">Choose</span></a>
                                        </div>

                                        <div id="pc-builder-component-choose-1-13-mobile"
                                            class="component-choose-mobile hidden-md hidden-lg">

                                            <div class="clearfix">
                                                <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=13"
                                                    class="pull-right hidden-md hidden-lg"><i
                                                        class="fa fa-plus fa-fw"></i></a>

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div id="pc-builder-component-container-14"
                                        class="pc-builder-component-container clearfix" data-product-selected="no">
                                        <div id="pc-builder-component-image-1-14" class="component-image"><img
                                                src="https://www.ultratech.com.bd/image/cache/catalog/website/featured-category/hard-disk-48x48.png.webp"
                                                class="thumbnail"></div>
                                        <div id="pc-builder-component-name-product-1-14"
                                            class="component-name-product">
                                            <div id="pc-builder-component-name-1-14" class="component-name">storage 1
                                            </div>
                                            <div id="pc-builder-component-product-1-14" class="component-product">
                                                <div class="component-product-empty">&nbsp;</div>
                                            </div>
                                        </div>
                                        <div id="pc-builder-component-choose-1-14"
                                            class="component-choose hidden-xs hidden-sm">


                                            <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=14"
                                                class="btn btn-md btn-info hidden-xs hidden-sm"><i
                                                    class="fa fa-plus fa-fw"></i> <span
                                                    class="hidden-xs hidden-sm hidden-md">Choose</span></a>
                                        </div>

                                        <div id="pc-builder-component-choose-1-14-mobile"
                                            class="component-choose-mobile hidden-md hidden-lg">

                                            <div class="clearfix">
                                                <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=14"
                                                    class="pull-right hidden-md hidden-lg"><i
                                                        class="fa fa-plus fa-fw"></i></a>

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div id="pc-builder-component-container-4"
                                        class="pc-builder-component-container clearfix" data-product-selected="no">
                                        <div id="pc-builder-component-image-1-4" class="component-image"><img
                                                src="https://www.ultratech.com.bd/image/cache/catalog/website/featured-category/graphicscard-48x48.png.webp"
                                                class="thumbnail"></div>
                                        <div id="pc-builder-component-name-product-1-4"
                                            class="component-name-product">
                                            <div id="pc-builder-component-name-1-4" class="component-name">Graphics
                                                Card </div>
                                            <div id="pc-builder-component-product-1-4" class="component-product">
                                                <div class="component-product-empty">&nbsp;</div>
                                            </div>
                                        </div>
                                        <div id="pc-builder-component-choose-1-4"
                                            class="component-choose hidden-xs hidden-sm">


                                            <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=4"
                                                class="btn btn-md btn-info hidden-xs hidden-sm"><i
                                                    class="fa fa-plus fa-fw"></i> <span
                                                    class="hidden-xs hidden-sm hidden-md">Choose</span></a>
                                        </div>

                                        <div id="pc-builder-component-choose-1-4-mobile"
                                            class="component-choose-mobile hidden-md hidden-lg">

                                            <div class="clearfix">
                                                <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=4"
                                                    class="pull-right hidden-md hidden-lg"><i
                                                        class="fa fa-plus fa-fw"></i></a>

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div id="pc-builder-component-container-10"
                                        class="pc-builder-component-container clearfix" data-product-selected="no">
                                        <div id="pc-builder-component-image-1-10" class="component-image"><img
                                                src="https://www.ultratech.com.bd/image/cache/catalog/website/featured-category/power-supply-48x48.png.webp"
                                                class="thumbnail"></div>
                                        <div id="pc-builder-component-name-product-1-10"
                                            class="component-name-product">
                                            <div id="pc-builder-component-name-1-10" class="component-name">Power
                                                Supply </div>
                                            <div id="pc-builder-component-product-1-10" class="component-product">
                                                <div class="component-product-empty">&nbsp;</div>
                                            </div>
                                        </div>
                                        <div id="pc-builder-component-choose-1-10"
                                            class="component-choose hidden-xs hidden-sm">


                                            <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=10"
                                                class="btn btn-md btn-info hidden-xs hidden-sm"><i
                                                    class="fa fa-plus fa-fw"></i> <span
                                                    class="hidden-xs hidden-sm hidden-md">Choose</span></a>
                                        </div>

                                        <div id="pc-builder-component-choose-1-10-mobile"
                                            class="component-choose-mobile hidden-md hidden-lg">

                                            <div class="clearfix">
                                                <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=10"
                                                    class="pull-right hidden-md hidden-lg"><i
                                                        class="fa fa-plus fa-fw"></i></a>

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div id="pc-builder-component-container-2"
                                        class="pc-builder-component-container clearfix" data-product-selected="no">
                                        <div id="pc-builder-component-image-1-2" class="component-image"><img
                                                src="https://www.ultratech.com.bd/image/cache/catalog/website/featured-category/casing-48x48.png.webp"
                                                class="thumbnail"></div>
                                        <div id="pc-builder-component-name-product-1-2"
                                            class="component-name-product">
                                            <div id="pc-builder-component-name-1-2" class="component-name">Casing
                                            </div>
                                            <div id="pc-builder-component-product-1-2" class="component-product">
                                                <div class="component-product-empty">&nbsp;</div>
                                            </div>
                                        </div>
                                        <div id="pc-builder-component-choose-1-2"
                                            class="component-choose hidden-xs hidden-sm">


                                            <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=2"
                                                class="btn btn-md btn-info hidden-xs hidden-sm"><i
                                                    class="fa fa-plus fa-fw"></i> <span
                                                    class="hidden-xs hidden-sm hidden-md">Choose</span></a>
                                        </div>

                                        <div id="pc-builder-component-choose-1-2-mobile"
                                            class="component-choose-mobile hidden-md hidden-lg">

                                            <div class="clearfix">
                                                <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=2"
                                                    class="pull-right hidden-md hidden-lg"><i
                                                        class="fa fa-plus fa-fw"></i></a>

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="pc-builder-category-container">
                                <h4>Peripherals &amp; Others</h4>
                                <div>
                                    <div id="pc-builder-component-container-7"
                                        class="pc-builder-component-container clearfix" data-product-selected="no">
                                        <div id="pc-builder-component-image-2-7" class="component-image"><img
                                                src="https://www.ultratech.com.bd/image/cache/catalog/website/featured-category/display-48x48.png.webp"
                                                class="thumbnail"></div>
                                        <div id="pc-builder-component-name-product-2-7"
                                            class="component-name-product">
                                            <div id="pc-builder-component-name-2-7" class="component-name">Monitor
                                            </div>
                                            <div id="pc-builder-component-product-2-7" class="component-product">
                                                <div class="component-product-empty">&nbsp;</div>
                                            </div>
                                        </div>
                                        <div id="pc-builder-component-choose-2-7"
                                            class="component-choose hidden-xs hidden-sm">


                                            <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=7"
                                                class="btn btn-md btn-info hidden-xs hidden-sm"><i
                                                    class="fa fa-plus fa-fw"></i> <span
                                                    class="hidden-xs hidden-sm hidden-md">Choose</span></a>
                                        </div>

                                        <div id="pc-builder-component-choose-2-7-mobile"
                                            class="component-choose-mobile hidden-md hidden-lg">

                                            <div class="clearfix">
                                                <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=7"
                                                    class="pull-right hidden-md hidden-lg"><i
                                                        class="fa fa-plus fa-fw"></i></a>

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div id="pc-builder-component-container-1"
                                        class="pc-builder-component-container clearfix" data-product-selected="no">
                                        <div id="pc-builder-component-image-2-1" class="component-image"><img
                                                src="https://www.ultratech.com.bd/image/cache/catalog/website/featured-category/case-cooler-48x48.png.webp"
                                                class="thumbnail"></div>
                                        <div id="pc-builder-component-name-product-2-1"
                                            class="component-name-product">
                                            <div id="pc-builder-component-name-2-1" class="component-name">Case Fan
                                            </div>
                                            <div id="pc-builder-component-product-2-1" class="component-product">
                                                <div class="component-product-empty">&nbsp;</div>
                                            </div>
                                        </div>
                                        <div id="pc-builder-component-choose-2-1"
                                            class="component-choose hidden-xs hidden-sm">


                                            <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=1"
                                                class="btn btn-md btn-info hidden-xs hidden-sm"><i
                                                    class="fa fa-plus fa-fw"></i> <span
                                                    class="hidden-xs hidden-sm hidden-md">Choose</span></a>
                                        </div>

                                        <div id="pc-builder-component-choose-2-1-mobile"
                                            class="component-choose-mobile hidden-md hidden-lg">

                                            <div class="clearfix">
                                                <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=1"
                                                    class="pull-right hidden-md hidden-lg"><i
                                                        class="fa fa-plus fa-fw"></i></a>

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div id="pc-builder-component-container-6"
                                        class="pc-builder-component-container clearfix" data-product-selected="no">
                                        <div id="pc-builder-component-image-2-6" class="component-image"><img
                                                src="https://www.ultratech.com.bd/image/cache/catalog/website/featured-category/kb-48x48.png.webp"
                                                class="thumbnail"></div>
                                        <div id="pc-builder-component-name-product-2-6"
                                            class="component-name-product">
                                            <div id="pc-builder-component-name-2-6" class="component-name">Keyboard
                                            </div>
                                            <div id="pc-builder-component-product-2-6" class="component-product">
                                                <div class="component-product-empty">&nbsp;</div>
                                            </div>
                                        </div>
                                        <div id="pc-builder-component-choose-2-6"
                                            class="component-choose hidden-xs hidden-sm">


                                            <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=6"
                                                class="btn btn-md btn-info hidden-xs hidden-sm"><i
                                                    class="fa fa-plus fa-fw"></i> <span
                                                    class="hidden-xs hidden-sm hidden-md">Choose</span></a>
                                        </div>

                                        <div id="pc-builder-component-choose-2-6-mobile"
                                            class="component-choose-mobile hidden-md hidden-lg">

                                            <div class="clearfix">
                                                <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=6"
                                                    class="pull-right hidden-md hidden-lg"><i
                                                        class="fa fa-plus fa-fw"></i></a>

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div id="pc-builder-component-container-9"
                                        class="pc-builder-component-container clearfix" data-product-selected="no">
                                        <div id="pc-builder-component-image-2-9" class="component-image"><img
                                                src="https://www.ultratech.com.bd/image/cache/catalog/website/featured-category/mice-48x48.png.webp"
                                                class="thumbnail"></div>
                                        <div id="pc-builder-component-name-product-2-9"
                                            class="component-name-product">
                                            <div id="pc-builder-component-name-2-9" class="component-name">Mouse
                                            </div>
                                            <div id="pc-builder-component-product-2-9" class="component-product">
                                                <div class="component-product-empty">&nbsp;</div>
                                            </div>
                                        </div>
                                        <div id="pc-builder-component-choose-2-9"
                                            class="component-choose hidden-xs hidden-sm">


                                            <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=9"
                                                class="btn btn-md btn-info hidden-xs hidden-sm"><i
                                                    class="fa fa-plus fa-fw"></i> <span
                                                    class="hidden-xs hidden-sm hidden-md">Choose</span></a>
                                        </div>

                                        <div id="pc-builder-component-choose-2-9-mobile"
                                            class="component-choose-mobile hidden-md hidden-lg">

                                            <div class="clearfix">
                                                <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=9"
                                                    class="pull-right hidden-md hidden-lg"><i
                                                        class="fa fa-plus fa-fw"></i></a>

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div id="pc-builder-component-container-5"
                                        class="pc-builder-component-container clearfix" data-product-selected="no">
                                        <div id="pc-builder-component-image-2-5" class="component-image"><img
                                                src="https://www.ultratech.com.bd/image/cache/catalog/website/featured-category/headphone-48x48.png.webp"
                                                class="thumbnail"></div>
                                        <div id="pc-builder-component-name-product-2-5"
                                            class="component-name-product">
                                            <div id="pc-builder-component-name-2-5" class="component-name">Headphone
                                            </div>
                                            <div id="pc-builder-component-product-2-5" class="component-product">
                                                <div class="component-product-empty">&nbsp;</div>
                                            </div>
                                        </div>
                                        <div id="pc-builder-component-choose-2-5"
                                            class="component-choose hidden-xs hidden-sm">


                                            <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=5"
                                                class="btn btn-md btn-info hidden-xs hidden-sm"><i
                                                    class="fa fa-plus fa-fw"></i> <span
                                                    class="hidden-xs hidden-sm hidden-md">Choose</span></a>
                                        </div>

                                        <div id="pc-builder-component-choose-2-5-mobile"
                                            class="component-choose-mobile hidden-md hidden-lg">

                                            <div class="clearfix">
                                                <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=5"
                                                    class="pull-right hidden-md hidden-lg"><i
                                                        class="fa fa-plus fa-fw"></i></a>

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div id="pc-builder-component-container-16"
                                        class="pc-builder-component-container clearfix" data-product-selected="no">
                                        <div id="pc-builder-component-image-2-16" class="component-image"><img
                                                src="https://www.ultratech.com.bd/image/cache/catalog/website/featured-category/ups-icon-48x48.png.webp"
                                                class="thumbnail"></div>
                                        <div id="pc-builder-component-name-product-2-16"
                                            class="component-name-product">
                                            <div id="pc-builder-component-name-2-16" class="component-name">UPS </div>
                                            <div id="pc-builder-component-product-2-16" class="component-product">
                                                <div class="component-product-empty">&nbsp;</div>
                                            </div>
                                        </div>
                                        <div id="pc-builder-component-choose-2-16"
                                            class="component-choose hidden-xs hidden-sm">


                                            <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=16"
                                                class="btn btn-md btn-info hidden-xs hidden-sm"><i
                                                    class="fa fa-plus fa-fw"></i> <span
                                                    class="hidden-xs hidden-sm hidden-md">Choose</span></a>
                                        </div>

                                        <div id="pc-builder-component-choose-2-16-mobile"
                                            class="component-choose-mobile hidden-md hidden-lg">

                                            <div class="clearfix">
                                                <a href="https://www.ultratech.com.bd/index.php?route=extension/pc_builder/pc_builder_search&amp;pc_builder_component_id=16"
                                                    class="pull-right hidden-md hidden-lg"><i
                                                        class="fa fa-plus fa-fw"></i></a>

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


</main>



{!! Theme::partial('footer') !!}
