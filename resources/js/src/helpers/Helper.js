// constant keys
import { LOCAL_STORAGE_KEYS } from './Constant'
class Helper { 
    
    static getBasename = () => {
        if (
            window.yestSetting.generalSettings.basename == '/' ||
            window.yestSetting.generalSettings.basename == ''
        ) {
            return '/'
        }

        return window.yestSetting.generalSettings.basename
    }

    static staticPath = (path) => {
        if (
            window.yestSetting.generalSettings.basename == '/' ||
            window.yestSetting.generalSettings.basename == ''
        ) {
            return path
        }

        return `${window.yestSetting.generalSettings.basename}/${path}`
    }

    static pathWithRootUrl = (path) => { 
        return `${window.yestSetting.generalSettings.rootUrl}/${path}`
    }

    static pathWithPublicUrl = (path) => { 
        return `${window.yestSetting.generalSettings.rootUrl}/public/${path}`
    }

    static getFromLocalStorage(key, def = null) {
        if (!JSON.parse(localStorage.getItem(key)) && def !== null) {
            this.setLocalStorage(key, def)
        }
        return JSON.parse(localStorage.getItem(key)) ?? def
    }

    static setLocalStorage(key, data) {
        localStorage.setItem(key, JSON.stringify(data))
    }

    static removeLocalStorage(key) {
        localStorage.removeItem(key)
    }

    static formatPrice(price, symbol = true) {
        let currency = this.getFromLocalStorage(LOCAL_STORAGE_KEYS.LOCAL_CURRENCY);
        if (currency !== null) {
            price *= parseFloat(currency.exchange_rate);
        }

        price = Number(price).toFixed(2)
        
        if(symbol){
            if(parseInt(currency.alignment) === 0){
                price = currency.symbol + '' + price
            }else{
                price = price + '' + currency.symbol

            }
        }
        return price
    }

    static isLoggedIn() {
        if (this.getFromLocalStorage(LOCAL_STORAGE_KEYS.USER_TOKEN) !== null) {
            return true
        }
        return false
    }
}
export default Helper
