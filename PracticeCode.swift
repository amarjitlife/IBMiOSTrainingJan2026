
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
// Type Conversions
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

// Thinking Assignment :: Why Following Line of Code Crashes!
// let someIntValue12 = someIntValue1 + Int8( someIntValue2 )
// print( someIntValue12 )


//_______________________________________________________________
//
// String Interpolation
//_______________________________________________________________

print( "\nString Interpolation" )

let apples = 30
let oranges = 77

let appleSummary0 = "I have (apples) apples" // Here () Are Treated Charaters 
// In Following apples Value Get Substited
let appleSummary1 = "I have \(apples) apples" // Here \() Are Treated As Substition Place 
// In Following apples + oranges Will Be Get Evaluated And Than Result Value Get Substited
let orangesSummary = "I have \(apples + oranges) fruits"

print( appleSummary0 )
print( appleSummary1 )

print( orangesSummary )

//_______________________________________________________________
//
//_______________________________________________________________

let pi : Float = 3.14
print( pi )

let π : Float = 3.1415
print( π )

let नमस्ते = "Namaskar!"
print( नमस्ते )

let hello = "नमस्ते"
print( hello )

let vaankaam = "வணக்கம்"
print( vaankaam )

let வணக்கம் = "Vaankaaam!!!!"
print( வணக்கம் )

//_______________________________________________________________
//
// Arrays and Dictionary
//_______________________________________________________________

func playWithArrayAndDictionary() {
	print("\tArrays and Dictionary!")

	// Array Of Strings
	let shoppingList = ["Eggs", "Milk", "Chocolate", "Sprite", "Beer"]
	print( shoppingList )
	print( shoppingList[0] )
	print( shoppingList[1] )

	print("All Shopping List Items")
	for item in shoppingList {
		print( item )
	}

	// Dictionary : Collections of Key, Value Pairs
	let occupations = [
		"SE" 	: "Software Engineer",
		"TE"	: "Testing Engineer",
		"SDE"	: "Software Design Engineer"
	]

	print( occupations[ "SE"] ?? "Uknonwn" )
	print( occupations[ "SDE"] ?? "Uknonwn" )

	print("\nAll Occupations")
	for item in occupations {
		print( item )
	}
}

print("\nFunction: playWithArrayAndDictionary")
playWithArrayAndDictionary()


//_______________________________________________________________
//
// Small Algorithm Using Swift
//_______________________________________________________________

func calculateTotalScores( playersScores : [Int] ) {
	var teamScores = 0
	var teamPoints = 0

	for playerScore in playersScores {
		teamScores = teamScores + playerScore

		if playerScore > 50 {
			teamPoints = teamPoints + 3
		} else if playerScore > 0 {
			teamPoints = teamPoints  + 1
		}
	}

	print( "Team Score  :: \(teamScores)"  )
	print( "Team Points :: \(teamPoints)"  )
}

print("\nFunction: calculateTotalScores")
let playersScores = [ 90, 100, 10, 0, 20, 22, 10, 55, 44 ]
calculateTotalScores( playersScores : playersScores )

//_______________________________________________________________
//
// Small Algorithm Using Swift
//_______________________________________________________________


// In Swift
	// 1. Return Type Of Function Comes After Arguments Lists: Specified By ->
	// 2. Function Arguments With Arguments Type After Function Name

func calculateLargest( interestingNumbers: [ String : [Int] ]) -> (Int, String) {
	var largest = 0
	var largestKind = ""
	
	// Iterating On Dictionary
	for (kind, numbers) in interestingNumbers {
	    for number in numbers {
	        if number > largest {
	            largest = number
	            largestKind = kind
	        }
	    }
	}
	return (largest, largestKind)
}


let numbers = [
    "Prime": [2,3,5,7,11,13],
"Fibonacci": [1,1,2,3,5,8],
   "Square": [1,4,9,16,25],
]

let result = calculateLargest( interestingNumbers: numbers )

print("\nFunction: calculateLargest")
print("Result : \(result)" )


//_______________________________________________________________
//
// Small Algorithm Using Swift
//_______________________________________________________________

// In C/C++/Java
	// 1. Return Type Of Function Before Function Name
	// 2. Function Arguments With Arguments Type After Function Name
	// int sum(int x, int y ) { 
	// 		//Body Of Function
	// }

// Use a tuple to make a compound value- for example, 
    // to return multiple values from a function. 
    // The elements of a tuple can be referred to 
            // either by name or by number


// In Swift
	// 1. Return Type Of Function Comes After Arguments Lists: Specified By ->
	// 2. Function Arguments With Arguments Type After Function Name

// -> After Function Name Means Return Type Of Function
// Function Returning Tuple Of Three Values Of Int Type
//		Each Value In Tuple Have Label
//			Labels Are: min, max and sum
//			You Can Use Labels To Access Indivisual Tuple Members
//														 // Labelled Tuple
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}


print("\nFunction: calculateStatistics")

// Here statistics Will Be Labeled Tuple Of (min: Int, max: Int, sum: Int)
//		
let statistics = calculateStatistics( scores : [5, 3, 100, 3, 9] )

// Here Accessing Tuple Member Using Label
print( "Accessing Tuple Member Using Label" )
print( statistics.min )
print( statistics.max )
print( statistics.sum )

// Here Accessing Tuple Member Using Index Followed By .
print( "Accessing Tuple Member Using Index Followed By ." )
print( statistics.0 )
print( statistics.1 )
print( statistics.2 )


//_______________________________________________________________
//
// Swift Optional Types Introduction
//_______________________________________________________________

// Command To Launch Swift Shell
// 		swift repl

func playWithOptionalTypes() {
	// In Swift Default Types 
	//		NonOptional/NonNullable Types
	//		Default Types Cannot Store nil
	// e.g. Int, String are NonOptional/NonNullable Types
	var someNumber = 777
	print( someNumber )
	someNumber = 1000
	print( someNumber ) 

	var greeting = "Good Evening!"
	print( greeting )
	greeting = "Good Good!!!"
	print( greeting )
	// someNumber = nil
	//              ╰─ error: 'nil' cannot be assigned to type 'Int'	 
	// greeting = nil
	//            ╰─ error: 'nil' cannot be assigned to type 'String'

	// e.g. Int?, String? Are Optional/Nullable Types
	//		Optional Types Can Store nil
	var someNumber1 : Int? = 777
	// print( someNumber1 )
	print( someNumber1 ?? "Uknonwn")

	someNumber1 = 1000
	// print( someNumber1 )
	print( someNumber1 ?? "Uknonwn" ) 

	someNumber1 = nil
	// print( someNumber1 )	
	print( someNumber1 ?? "Uknonwn") 

	var greeting1: String? = "Good Evening!"
	// print( greeting1 )
	print( greeting1 ?? "Uknonwn")

	greeting1 = "Very Good!"
	// print( greeting1 )
	print( greeting1 ?? "Uknonwn") 

	greeting1 = nil
	// print( greeting1 )
	print( greeting1 ?? "Uknonwn") 
}

print("\nFunction: playWithOptionalTypes")
playWithOptionalTypes()

//_______________________________________________________________
//
// while and do-while loops
// For Loops
//_______________________________________________________________


func playWithWhileAndRepeatWhileLoops() {
    var n = 2
    while n < 100 { // while Loop
        n = n * 2
    }

    print( n )

    var m = 2
    // repeat-while loop
    repeat { // Similar To do-while Loop
        m = m * 2
    } while m < 100
    print( m )

}

print("\nFunction: playWithWhileAndRepeatWhileLoops")
playWithWhileAndRepeatWhileLoops()

func playWithForLoops() {
    // For In Loop
    // For Loop With Range Operators
    var firstForLoop = 0
    // 0..<4 Range Operator: It Means 0 Included and 4 Is Excluded
    //		Hence Loop Will Run With Values From [ 0, 1, 2, 3 ]
    for i in 0..<4 {
        firstForLoop += i
    }

    print( firstForLoop )

   // var secondForLoop = 0
   //  // Indexing Loop
   //  // For Loop With Indexes
   //  for var i = 0; i < 4; ++i {
	// // `- error: C-style for statement was removed in Swift 3
   //      secondForLoop += 1
   //  }

   //  print( secondForLoop )
}


print("\nFunction: playWithForLoops")
playWithForLoops()

//_______________________________________________________________
//
//
//_______________________________________________________________

// print("\nFunction: ")
// print("\nFunction: ")
// print("\nFunction: ")
// print("\nFunction: ")
// print("\nFunction: ")
// print("\nFunction: ")
// print("\nFunction: ")
// print("\nFunction: ")
// print("\nFunction: ")
// print("\nFunction: ")


//_______________________________________________________________
// :: NOTES ::
// 		1. Swift Is Case Sensitative Language
//_______________________________________________________________


