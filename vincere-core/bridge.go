package main

import "C"

func GenerateKeyPairHex() *C.char {
	priv, pub := GenerateKeyPair()

	privHex := myHexEncode(priv[:])
	pubHex := myHexEncode(pub[:])

	result := privHex + ":" + pubHex

	return C.CString(result)
}

func main() {}
