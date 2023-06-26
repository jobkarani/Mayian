export const trackAddToCartEvent = (product) => {
    window.fbq('track', 'AddToCart', {
        product: product.name
    })
}

export const trackPurchaseEvent = (order) => {
    window.fbq('track', 'Purchase', {
        value: order.grand_total,
        currency: 'BDT'
    })
}

export const trackSearchEvent = (searchKeyword) => {
    window.fbq('track', 'Search', {
        keyword: searchKeyword
    })
}
