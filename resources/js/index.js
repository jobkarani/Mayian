import React, { Suspense } from 'react'
import ReactDOM from 'react-dom'
import { BrowserRouter as Router } from 'react-router-dom'
import './i18next'

import { Provider } from 'react-redux'
import { store } from './src/store/store'

// context & layouts
import App from './layouts/App'
import Helper from './src/helpers/Helper'

import HighlightOffIcon from '@mui/icons-material/HighlightOff'
import { SnackbarProvider } from 'notistack'

// add action to all snackbars
const notistackRef = React.createRef()

const onClickDismiss = (key) => () => {
    notistackRef.current.closeSnackbar(key)
}

ReactDOM.render(
    <SnackbarProvider
        anchorOrigin={{
            vertical: 'top',
            horizontal: 'right'
        }}
        preventDuplicate
        ref={notistackRef}
        action={(key) => (
            <div onClick={onClickDismiss(key)} className="cursor-pointer">
                <HighlightOffIcon />
            </div>
        )}
        maxSnack={3}
        autoHideDuration={3000}
    >
        <Provider store={store}>
            <Router basename={Helper.getBasename()}>
                <Suspense fallback={''}> 
                    <App /> 
                </Suspense>
            </Router>
        </Provider>
    </SnackbarProvider>,
    document.getElementById('main-app')
)
