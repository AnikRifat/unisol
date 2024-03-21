<?php

namespace App\Http\Controllers;

use App\Models\Invoice;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Ecommerce\Models\Product;
use Botble\Ecommerce\Models\ProductCategory;
use Botble\Ecommerce\Supports\ProductCategoryHelper;
use Botble\Media\Facades\RvMedia;
use Illuminate\Http\Request;

class InvoiceController extends Controller
{

    private $productCategory;
    public function __construct(ProductCategoryHelper $productCategory)
    {
        $this->productCategory = $productCategory;
    }
    public function index()
    {
        $categories =  $this->productCategory->getAllProductCategories(['condition' => ['status' => BaseStatusEnum::PUBLISHED, 'parent_id' => 0]]);
        //   dd($categories);
        return view('invoice.index', compact('categories'));
    }

    public function getCategoryProduct($id)
    {
        $category = ProductCategory::find($id);

        if ($category) {
            $products = $category->products;
            foreach ($products as $key => $product) {
                $product['imgUrl'] = $this->getImageUrl($product->image);
                $product['categoryId'] = $id;
            }
            // Check if there are products associated with the category
            if ($products->isNotEmpty()) {
                return response()->json(['products' => $products], 200);
            } else {
                return response()->json(['message' => 'No products found for this category.'], 404);
            }
        } else {
            return response()->json(['message' => 'Category not found.'], 404);
        }
    }
    public function getProductDetails($id)
    {
        $product = Product::find($id);
        $productDetails = [];
        if ($product) {
            $productDetails['img'] = $this->getImageUrl($product->image);
            $productDetails['id'] = $product->id;
            $productDetails['name'] = $product->name;
            $productDetails['price'] = $product->price;
            return response()->json(['product' => $productDetails], 200);
        } else {
            return response()->json(['message' => 'No products found for this product.'], 404);
        }
    }

    public function getImageUrl($url)
    {
        $image =  RvMedia::getImageUrl($url, 'thumb');
        if ($image) {
            return response()->json($image, 200);
        } else {
            return response()->json(['message' => 'No product image found.'], 404);
        }
    }
}
