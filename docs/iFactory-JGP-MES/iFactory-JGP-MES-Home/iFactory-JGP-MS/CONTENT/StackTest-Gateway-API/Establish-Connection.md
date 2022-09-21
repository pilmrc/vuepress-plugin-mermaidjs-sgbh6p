# Introduction

Prior to calling any function in the IFactory API, a user needs to be authenticated with username and password to determine if the access to the IFactory MS instance is allowed. Therefore a user must be configured in the corresponding IFactory User Maintenance module before the IFactory API can be utilized.


### Pre-requisite



- Create user in IFactory User Maintenance module

- Assign permission "
Can Access From External Client Gateway" under "Can Access NG" to the user's User Group



#### How To



- At the start of each individual session, prompt user to enter the username and login

- Encrypt the password as describe in the function detail


- Call the

[Retrieve Security Token](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/StackTest-Gateway-API/Establish-Connection.md)function , passing the username and encrypted password
- On successful user authentication, retrieve and store the returned

**Token** 
- On failed user authentication, display returned error message


- Within all subsequent function calls to API, a HTTP header entry with "

**Authorization** " name shall be added, and assign to it the value "**Bearer** " + **Token** 

#### Related Functions and Details


<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p><strong>Function</strong></p></td><td colspan="3" class="confluenceTd"><p><span class="confluence-anchor-link" id="EstablishConnection-funcToken"></span>Retrieve Security Token</p></td></tr><tr><td class="confluenceTd"><p><strong>URL</strong></p></td><td colspan="3" class="confluenceTd"><p>api/tokens</p></td></tr><tr><td class="confluenceTd"><p><strong>Http Method</strong></p></td><td colspan="3" class="confluenceTd"><p>GET</p></td></tr><tr><td rowspan="3" class="confluenceTd"><p><strong>Parameter</strong></p></td><td class="confluenceTd"><p><strong>Name</strong></p></td><td class="confluenceTd"><p><strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Remark</strong></p></td></tr><tr><td class="confluenceTd"><p><em>userLogin</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em>Mandatory</em></p></td></tr><tr><td class="confluenceTd"><p><em>password</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em>Mandatory - need to encrypt with AES algorithm, 128 bits key length, 128 bits block size, CBC (Cipher Block Chaining) operation modus, PKCS#7 padding</em></p><p><em>Key = YGjDImfP5bf8F7kGbdqWcA==</em></p><p><em>IV = bDA11yRcbUsTC9jl5LnuiQ==</em></p></td></tr><tr><td rowspan="3" class="confluenceTd"><p><strong>Return</strong></p></td><td colspan="3" class="confluenceTd"><p>Single object with the following property</p></td></tr><tr><td class="confluenceTd"><p><strong>Name</strong></p></td><td class="confluenceTd"><p><strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Remark</strong></p></td></tr><tr><td class="confluenceTd"><p><em>token</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em> </em></p></td></tr></tbody></table>


