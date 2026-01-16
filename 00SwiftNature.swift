
//_______________________________________________________________
//_______________________________________________________________

print( "Hello World!" )

//_______________________________________________________________
//
// Immutablity and Mutability
//_______________________________________________________________

print( "\nImmutablity and Mutability")

// Immutable State
let somConstant = 99
print( somConstant )
// somConstant = 100
// error: cannot assign to value: 'somConstant' is a 'let' constant
// print( somConstant )

// let somConstant = 777
// error: invalid redeclaration of 'somConstant'

// Mutable State
var someVariable = 111
print( someVariable )
someVariable = 999
print( someVariable )

// error: invalid redeclaration of 'someVariable'
// var someVariable = 777

// In C/C++/Java/Swift
//		Redeclaration of Identifier Is Not Allowed

//_______________________________________________________________
//
// 	Type Inferrencing and Binding
//_______________________________________________________________

print("\nType Inferrencing and Binding")
// In Following 

// What Is Type?
// Implicit Type Specification
// 		Compiler Will Do Following 2 Steps
//			1. Type Inferrencing
//			2. Type Binding

//		1. Type Inferrencing
//				Inferred Type From R.H.S. Value
//		2. Type Binding
//				Inferred Type From R.H.S.
//				Binded With L.H.S.

// Implicit Type Specification
//	1. Type Inferrencing - By Default Type Inferred For 99 Is Int
//	2. Type Binding - Type of something1 Will Become Int
let something1 = 99
print( something1 )

// Explicit Type Specification
// 		Using Type Annotation - After Colon Specify Type
let something11 : Int = 99  
print( something11 )
//Above something1 And something11 Equivalent Are Of Type Int

// Implicit Type Specification
//	1. Type Inferrencing - By Default Type Inferred For "" Is String
//	2. Type Binding - Type of something2 Will Become String
let something2 = "Good Morning!"
print( something2 )

// Explicit Type Specification
let something22 : String = "Good Morning!"
print( something22 )
//Above something2 And something22 Are Equivalent Of Type String

// Implicit Type Specification
//	1. Type Inferrencing - By Default Type Inferred For 99.99 Is Double
//	2. Type Binding - Type of something3 Will Become Double
let something3 = 99.99
print( something3 )

// Explicit Type Specification
let something33 : Double = 99.99
print( something33 )
//Above something3 And something33 Are Equivalent Of Type Double

// let something4 = 'A'
// `- error: single-quoted string literal found, use '"'

// Implicit Type Specification
//	1. Type Inferrencing - By Default Type Inferred For "" Is String
//	2. Type Binding - Type of something2 Will Become String
let something4 = "A"
print( something4 )

// Explicit Type Specification
let something44 : String = "A"
print( something44 )
//Above something4 And something44 Are Equivalent Of Type String

// Explicit Type Specification
let something5 : Character = "A"
print( something5 )

// Explicit Type Specification
// let something6 : Float= 99.99
 // error: '=' must have consistent whitespace on both sides 

let something6 : Float = 99.99
print( something6 )

//_______________________________________________________________
//
// 1. Swift Is Case Sensitative Language
//_______________________________________________________________

// Experiment Type Conversion Code In Swfit/C/C++/Java/Python

print("\nExplicit Type Conversion")

let label = "The Width is: "
let width = 88
// let labelledWidth = label + width
// error: binary operator '+' cannot be applied to operands of type 'String' and 'Int

// Explicit Type Conversion
let labelledWidth = label + String( width )
print( labelledWidth )


let someFloatValue : Float = 10.10
let someDoubleValue : Double = 99.99

// let someValue1 = someFloatValue + someDoubleValue
//  error: binary operator '+' cannot be applied to operands of type 'Float' and 'Double'

let someValue1 = Double( someFloatValue ) + someDoubleValue 
print( someValue1 )

let someValue2 = someFloatValue + Float( someDoubleValue )
print( someValue2 )

let someIntValue1: Int8 	= 100
let someIntValue2: Int16 	= 99

// let someIntValue = someIntValue1 + someIntValue2 
// error: binary operator '+' cannot be applied to operands of type 'Int8' and 'Int16

let someIntValue11 = Int16( someIntValue1 ) + someIntValue2 
print( someIntValue11 )

let someIntValue12 = someIntValue1 + Int8( someIntValue2 )
print( someIntValue12 )


//_______________________________________________________________
//
//
//_______________________________________________________________

//_______________________________________________________________
//
//
//_______________________________________________________________

	
