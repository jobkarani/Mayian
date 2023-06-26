import { useEffect, useState } from 'react'

function getSavedValue(key, initialValue) {
    const savedValue = localStorage.getItem(key)

    if (savedValue) return savedValue

    if (initialValue instanceof Function) return initialValue()

    return initialValue
}

export default function useLocalStorage(key, initialValue) {
    const [value, setvalue] = useState(() => {
        return getSavedValue(key, initialValue)
    })

    useEffect(() => {
        localStorage.setItem(key, value)
    }, [value])

    return [JSON.parse(value), setvalue]
}
