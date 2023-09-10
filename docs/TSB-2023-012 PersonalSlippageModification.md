
# TSB-2023-012 PersonalSlippageModification
## Description

Individual transaction taxes can be set for each address.

## Pattern

```solidity
function _transfer(address from, address recipient, uint256 amount) internal virtual override returns (bool) {
  require(_balances[_msgSender()] >= amount, "TT: transfer amount exceeds balance");
  _balances[_msgSender()] -= amount;
  if (addressFee[from] > 0) {
  fee = addressFee[from];
  }
  _balances[recipient] += (amount-fee);
  emit Transfer(_msgSender(), recipient, amount-fee);
  return true;
  }
  function setFee(address _address, uint256 _fee) external onlyOwner{
  addressFee[from] = _fee;
  }
```

## Samples
 
- [01.sol](https://github.com/cryptousersecurity/token-security-benchmark/blob/main/src/TSB-2023-012/samples/01.sol) 
- [02.sol](https://github.com/cryptousersecurity/token-security-benchmark/blob/main/src/TSB-2023-012/samples/02.sol) 
- [03.sol](https://github.com/cryptousersecurity/token-security-benchmark/blob/main/src/TSB-2023-012/samples/03.sol)