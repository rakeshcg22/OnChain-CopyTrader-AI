import pandas as pd
import yfinance as yf

def simulate_agent(ticker='AAPL', short_window=10, long_window=50):
    data = yf.download(ticker, period="1y")
    data['SMA10'] = data['Close'].rolling(window=short_window).mean()
    data['SMA50'] = data['Close'].rolling(window=long_window).mean()
    data['Signal'] = 0
    data.loc[data['SMA10'] > data['SMA50'], 'Signal'] = 1
    data.loc[data['SMA10'] < data['SMA50'], 'Signal'] = -1

    capital = 10000
    position = 0
    for i in range(1, len(data)):
        if data['Signal'].iloc[i] == 1 and position == 0:
            position = capital / data['Close'].iloc[i]
            capital = 0
        elif data['Signal'].iloc[i] == -1 and position > 0:
            capital = position * data['Close'].iloc[i]
            position = 0

    final_value = capital + (position * data['Close'].iloc[-1])
    return_pct = ((final_value - 10000) / 10000) * 100
    return round(return_pct, 2)

if __name__ == "__main__":
    print("Return (12M):", simulate_agent(), "%")
