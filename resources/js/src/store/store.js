import { configureStore } from '@reduxjs/toolkit'
import appSlice from './slices/appSlice'
import authSlice from './slices/authSlice'
import dataSlice  from './slices/dataSlice'

export const store = configureStore({
    reducer: {
        appServiceProvider: appSlice,
        authServiceProvider: authSlice,
        dataServiceProvider: dataSlice,
    },
    middleware: getDefaultMiddleware =>
    getDefaultMiddleware({
      serializableCheck: false,
    }),
})
