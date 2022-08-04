import React, {useContext} from 'react';
import { GlobalContext } from '../context/GlobalState';

export const IncomeExpenses = () => {

    const { transactions } = useContext(GlobalContext);

    const amounts = transactions.map(transaction => transaction.amount);

    const income = amounts.filter(item => item > 0).reduce((acc,item) => (acc += item), 0).toFixed(0);
    const expense = Math.abs(amounts.filter(item => item < 0).reduce((acc, item) => (acc += item), 0).toFixed(0));

    return (
        <div className="inc-exp-container">
            <div>
                <h4>Income</h4>
                <p className="money plus">{income} PKR</p>
            </div>
            <div>
                <h4>Expense</h4>
                <p className="money minus">{expense} PKR</p>
            </div>
        </div>
    )
}
