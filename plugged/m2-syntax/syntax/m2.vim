" Vim syntax file
" Language: Macaulay2
" author: Manoj Kummini.

"if exists("b:current_syntax")
"  finish
"endif

syn keyword m2Command clearAll clearOutput edit exit help listLocalSymbols
syn keyword m2Command clistUserSymbols profileSummary quit restart
syn keyword m2Command cshowClassStructure showStructure showUserStructure
syn keyword m2Command viewHelp

syn keyword m2Boolean true false

syn keyword m2CompiledFunction BesselJ BesselY Gamma abs acos agm alarm
syn keyword m2CompiledFunction ancestor any append apply applyKeys
syn keyword m2CompiledFunction atEndOfFile atan atan2 characters class
syn keyword m2CompiledFunction commandInterpreter concatenate
syn keyword m2CompiledFunction cpuTime csc csch currentDirectory
syn keyword m2CompiledFunction deepSplice difference disassemble drop
syn keyword m2CompiledFunction erf erfc exec exp expm1 fileExists
syn keyword m2CompiledFunction flagLookup floor fork format frames
syn keyword m2CompiledFunction getNetFile getc getenv groupID hash
syn keyword m2CompiledFunction imaginaryPart installMethod instance
syn keyword m2CompiledFunction isGlobalSymbol isInfinite isInputFile
syn keyword m2CompiledFunction isReady isRegularFile join keys kill
syn keyword m2CompiledFunction locate log log1p lookup lookupCount merge
syn keyword m2CompiledFunction minimizeFilename minus mkdir mutable
syn keyword m2CompiledFunction openDatabase openDatabaseOut openFiles
syn keyword m2CompiledFunction openOut openOutAppend override pack pairs
syn keyword m2CompiledFunction prepend printString processID protect
syn keyword m2CompiledFunction readlink realPart realpath recursionDepth
syn keyword m2CompiledFunction relativizeFilename remove removeDirectory
syn keyword m2CompiledFunction scan scanPairs sec sech select separate
syn keyword m2CompiledFunction sinh size2 sleep splice sqrt stack substring
syn keyword m2CompiledFunction tanh times toCC toList toRR toSequence
syn keyword m2CompiledFunction values wait wrap xor youngest zeta EXAMPLE
syn keyword m2CompiledFunction gradedModuleMap hold html hypertext ideal
syn keyword m2CompiledFunction length makePackageIndex mathML max
syn keyword m2CompiledFunction monomialIdeal net options package pretty
syn keyword m2CompiledFunction toExternalString toString transpose
syn keyword m2CompiledFunction pseudocode read readDirectory regex
syn keyword m2CompiledFunction registerFinalizer removeFile reorganize
syn keyword m2CompiledFunction reverse run sequence set setEcho setGroupID
syn keyword m2CompiledFunction sin symlinkFile take tally tan uncurry
syn keyword m2CompiledFunction unsequence unstack utf8 chainComplex code
syn keyword m2CompiledFunction export exportMutable expression flatten gcd
syn keyword m2CompiledFunction gradedModule info intersect isSorted lcm
syn keyword m2CompiledFunction maxPosition commonest directSum examples
syn keyword m2CompiledFunction methods min minPosition runLengthEncode tex
syn keyword m2CompiledFunction texMath undocumented unique vars applyPairs
syn keyword m2CompiledFunction applyValues ascii asin clearEcho
syn keyword m2CompiledFunction collectGarbage combine connectionCount copy
syn keyword m2CompiledFunction cos cosh cot coth currentLineNumber
syn keyword m2CompiledFunction currentTime debugError dumpdata echoOff
syn keyword m2CompiledFunction echoOn eint erase fileLength fileMode
syn keyword m2CompiledFunction fileTime firstkey functionBody get
syn keyword m2CompiledFunction getGlobalSymbol hashTable horizontalJoin
syn keyword m2CompiledFunction identity isANumber isDirectory isFinite
syn keyword m2CompiledFunction isListener isOpen isOutputFile linkFile
syn keyword m2CompiledFunction loaddata localDictionaries mergePairs mingle
syn keyword m2CompiledFunction newClass newNetFile nextkey openIn openInOut
syn keyword m2CompiledFunction openListener parent plus power powermod

syn keyword m2Constant EulerConstant Constant ii Constant pi infinity

syn keyword m2File stderr stdio

syn keyword m2FnClosure End SYNOPSIS addEndFunction addStartFunction
syn keyword m2FnClosure ancestors applicationDirectory
syn keyword m2FnClosure baseFilename beginDocumentation benchmark
syn keyword m2FnClosure columnate delete demark error even first getNonUnit
syn keyword m2FnClosure globalAssignFunction globalAssignment
syn keyword m2FnClosure load makeDocumentTag method mod monoid
syn keyword m2FnClosure notImplemented number odd on pager peek print same
syn keyword m2FnClosure stashValue subtable synonym syzygyScheme table
syn keyword m2FnClosure isPrimitive isTable last lines
syn keyword m2FnClosure applicationDirectorySuffix applyTable assert
syn keyword m2FnClosure cacheValue ceiling centerString
syn keyword m2FnClosure getSymbol globalAssign
syn keyword m2FnClosure globalReleaseFunction groebnerBasis
syn keyword m2FnClosure infoHelp input integrate inversePermutation
syn keyword m2FnClosure toAbsolutePath toLower toUpper tutorial uniform
syn keyword m2FnClosure monomialCurveIdeal needs seeParsing showHtml
syn keyword m2FnClosure temporaryFileName userSymbols vector zero

syn match m2Keyword /\v\+/
syn keyword m2Keyword SPACE and break catch continue do else for
syn keyword m2Keyword from global if in list local new not of or return
syn keyword m2Keyword shield step symbol then throw time timing to try when
syn keyword m2Keyword while

syn keyword m2Method Fano Hom LUdecomposition Proj
syn keyword m2Method Spec TEST Wikipedia accumulate acosh acot addHook
syn keyword m2Method adjoint adjoint1 all ambient apropos asinh autoload
syn keyword m2Method baseName between binomial borel capture char clean
syn keyword m2Method coefficient coefficientRing coimage cokernel
syn keyword m2Method columnAdd columnMult columnPermute columnSwap
syn keyword m2Method commonRing comodule complement complete components
syn keyword m2Method compositions compress cone conjugate content contract
syn keyword m2Method contract' cover coverMap debug decompose default
syn keyword m2Method degree degreeLength degrees degreesMonoid degreesRing
syn keyword m2Method denominator depth describe diagonalMatrix dictionary
syn keyword m2Method diff diff' dim dismiss divideByVariable
syn keyword m2Method eagonNorthcott elements endPackage entries euler
syn keyword m2Method eulers exponents findSynonyms fittingIdeal flip fold
syn keyword m2Method frac fraction fromDual gbRemove gbSnapshot
syn keyword m2Method gcdCoefficients genera generateAssertions generator
syn keyword m2Method genericMatrix genericSkewMatrix
syn keyword m2Method genericSymmetricMatrix genus getChangeMatrix getWWW
syn keyword m2Method heft height hilbertFunction homogenize homomorphism
syn keyword m2Method httpHeaders image index indices inducesWellDefinedMap
syn keyword m2Method insert installAssignmentMethod installHilbertFunction
syn keyword m2Method instances inverse irreducibleCharacteristicSeries
syn keyword m2Method isAffineRing isBorel isCommutative isConstant
syn keyword m2Method isDirectSum isField isFreeModule isHomogeneous
syn keyword m2Method isIdeal isInjective isIsomorphism isModule
syn keyword m2Method isMonomialIdeal isPolynomialRing isPrime
syn keyword m2Method isPseudoprime isQuotientModule isQuotientOf
syn keyword m2Method isQuotientRing isReal isRing isSkewCommutative
syn keyword m2Method isSquareFree isSubmodule isSubquotient isSubset
syn keyword m2Method isSurjective isUnit isWellDefined jacobian koszul
syn keyword m2Method leadCoefficient leadComponent leadMonomial leadTerm
syn keyword m2Method liftable listForm listSymbols lngamma makeDirectory
syn keyword m2Method match member memoize methodOptions minimalPrimes
syn keyword m2Method module monomialSubideal multidegree
syn keyword m2Method newCoordinateSystem norm nullhomotopy numColumns numcols
syn keyword m2Method numRows numrows numerator numeric numgens ofClass pad part
syn keyword m2Method partition partitions parts pdim peek' permanents
syn keyword m2Method permutations pfaffians pivots poincare poincareN
syn keyword m2Method positions precision preimage presentation product
syn keyword m2Method profile projectiveHilbertPolynomial promote
syn keyword m2Method pseudoRemainder quotient' quotientRemainder
syn keyword m2Method quotientRemainder' rank reduceHilbert relations
syn keyword m2Method remainder remainder' removeHook removeLowestDimension
syn keyword m2Method replace reshape ring rotate round rowAdd rowMult
syn keyword m2Method rowPermute rowSwap runHooks scanKeys scanLines
syn keyword m2Method scanValues schreyerOrder searchPath selectInSubring
syn keyword m2Method selectVariables separateRegexp setRandomSeed setup
syn keyword m2Method setupEmacs sheaf sheafHom show singularLocus size
syn keyword m2Method someTerms source standardForm standardPairs sublists
syn keyword m2Method submatrix submatrix' subquotient subsets substitute sub
syn keyword m2Method sum super support switch symmetricPower target
syn keyword m2Method tensorAssociativity terms toDual toField
syn keyword m2Method topCoefficients topComponents trace truncate
syn keyword m2Method truncateOutput ultimate unbag use value variety
syn keyword m2Method wedgeProduct weightRange width GF Grassmannian SVD
syn keyword m2Method Schubert annihilator associatedPrimes basis betti
syn keyword m2Method check codim coefficients cohomology copyDirectory
syn keyword m2Method copyFile cotangentSheaf determinant document dual
syn keyword m2Method eigenvalues eigenvectors extend exteriorPower factor
syn keyword m2Method fillMatrix findFiles flattenRing forceGB gb
syn keyword m2Method gens generators getPackage graphIdeal graphRing
syn keyword m2Method hilbertPolynomial hilbertSeries homology
syn keyword m2Method independentSets inducedMap installPackage kernel lift
syn keyword m2Method loadPackage map markedGB matrix mingens
syn keyword m2Method minimalPresentation minors modulo monomials moveFile
syn keyword m2Method mutableIdentity mutableMatrix needsPackage netList
syn keyword m2Method newPackage newRing position prune pushForward
syn keyword m2Method quotient radical random randomMutableMatrix
syn keyword m2Method regularity res resolution rsort saturate showTex
syn keyword m2Method smithNormalForm solve sort sortColumns status
syn keyword m2Method symlinkDirectory symmetricAlgebra syz tangentSheaf
syn keyword m2Method tensor trim uninstallPackage

syn keyword m2Ring QQ ZZ CC RR

syn keyword m2ScriptedFunctor Ext HH OO Tor hh id sheafExt

syn keyword m2Symbol AbsoluteLinks AfterEval
syn keyword m2Symbol AfterNoPrint AfterPrint Algorithm Alignment Ascending
syn keyword m2Symbol Authors AuxiliaryFiles Bareiss BaseFunction BaseRow
syn keyword m2Symbol BasisElementLimit Bayer BeforePrint Binary Binomial
syn keyword m2Symbol Boxes CacheExampleOutput CallLimit Caveat Center
syn keyword m2Symbol Certification ChangeMatrix CheckDocumentation
syn keyword m2Symbol ClosestFit CodimensionLimit CoefficientRing Cofactor
syn keyword m2Symbol Complement CompleteIntersection Configuration
syn keyword m2Symbol Consequences CurrentVersion Date DebuggingMode
syn keyword m2Symbol Decompose Degree DegreeLift DegreeLimit DegreeMap
syn keyword m2Symbol DegreeOrder DegreeRank Degrees Dense Density
syn keyword m2Symbol Descending Description Dispatch DivideConquer Down
syn keyword m2Symbol Email Encapsulate EncapsulateDirectory Engine Exclude
syn keyword m2Symbol FileName FindOne First FlatMonoid Flexible
syn keyword m2Symbol FollowLinks Format GBDegrees GLex GRevLex Generic
syn keyword m2Symbol Global GlobalAssignHook GlobalReleaseHook GroupLex
syn keyword m2Symbol GroupRevLex HardDegreeLimit Heading Headline Heft
syn keyword m2Symbol Height Hermitian Hilbert HomePage Homogeneous
syn keyword m2Symbol Homogeneous2 HorizontalSpace IgnoreExampleErrors
syn keyword m2Symbol InfoDirSection Inhomogeneous Inputs InstallPrefix
syn keyword m2Symbol Intersection InverseMethod Inverses Iterate Join
syn keyword m2Symbol KeepZeroes Key Left LengthLimit Lex Limit Linear
syn keyword m2Symbol LinearAlgebra LoadDocumentation Local LongPolynomial
syn keyword m2Symbol MakeDocumentation MakeInfo MakeLinks
syn keyword m2Symbol MaxReductionCount MaximalRank MinimalGenerators
syn keyword m2Symbol MinimalMatrix Minimize Monomial MonomialOrder
syn keyword m2Symbol MonomialSize Monomials NCLex Name NewFromMethod
syn keyword m2Symbol NewMethod NewOfFromMethod NewOfMethod NoPrint Options
syn keyword m2Symbol Outputs PackagePrefix PairLimit PairsRemaining
syn keyword m2Symbol Position Postfix Prefix PrimaryTag PrimitiveElement
syn keyword m2Symbol Print Projective Quotient Reduce
syn keyword m2Symbol RemakeAllDocumentation Repository RerunExamples
syn keyword m2Symbol Result RevLex Reverse Right RunExamples SeeAlso
syn keyword m2Symbol SeparateExec SizeLimit SkewCommutative Sort
syn keyword m2Symbol SortStrategy SourceCode SourceRing Standard
syn keyword m2Symbol StopBeforeComputation StopWithMinimalGenerators
syn keyword m2Symbol Strategy Subnodes SubringLimit Sugarless Syzygies
syn keyword m2Symbol SyzygyLimit SyzygyMatrix SyzygyRows TeXmacs Toric
syn keyword m2Symbol TotalPairs Truncate TypicalValue Undo Unmixed Up
syn keyword m2Symbol UpdateOnly UpperTriangular Usage UseHilbertFunction
syn keyword m2Symbol UseSyzygies UserMode Variable VariableBaseName
syn keyword m2Symbol Variables Verbose Verify Version VerticalSpace
syn keyword m2Symbol Weights WeylAlgebra Wrap argument baseRings cache dd
syn keyword m2Symbol end incomparable indexComponents
syn keyword m2Symbol minimalPresentationMap minimalPresentationMapInv oo
syn keyword m2Symbol ooo oooo order pruningMap returnCode subscript
syn keyword m2Symbol superscript topLevelMode debugLevel defaultPrecision
syn keyword m2Symbol engineDebugLevel errorDepth gbTrace interpreterDepth
syn keyword m2Symbol lineNumber loadDepth maxExponent minExponent
syn keyword m2Symbol printWidth printingAccuracy printingLeadLimit
syn keyword m2Symbol printingPrecision printingTimeLimit
syn keyword m2Symbol printingTrailLimit recursionLimit

syn keyword m2Type AffineVariety Array
syn keyword m2Type AssociativeExpression BasicList BettiTally Boolean
syn keyword m2Type CacheFunction CacheTable ChainComplex ChainComplexMap
syn keyword m2Type CoherentSheaf CompiledFunction CompiledFunctionBody
syn keyword m2Type CompiledFunctionClosure ComplexField Constant
syn keyword m2Type Database Descent Dictionary DocumentTag EngineRing
syn keyword m2Type Expression File FilePosition ForestNode FractionField
syn keyword m2Type Function FunctionBody FunctionClosure GaloisField
syn keyword m2Type GeneralOrderedMonoid GlobalDictionary GradedModule
syn keyword m2Type GradedModuleMap GroebnerBasis GroebnerBasisOptions
syn keyword m2Type HashTable HeaderType Ideal ImmutableType
syn keyword m2Type IndeterminateNumber IndexedVariable
syn keyword m2Type IndexedVariableTable InexactField InexactFieldFamily
syn keyword m2Type InexactNumber InexactNumber' InfiniteNumber Keyword
syn keyword m2Type LibxmlAttribute LibxmlNode List LocalDictionary
syn keyword m2Type Manipulator Matrix MethodFunction
syn keyword m2Type MethodFunctionWithOptions Module ModuleMap Monoid
syn keyword m2Type MonoidElement MonomialIdeal MutableHashTable
syn keyword m2Type MutableList MutableMatrix Net NetFile Nothing Number
syn keyword m2Type OneExpression Option OptionTable OrderedMonoid
syn keyword m2Type Package Partition PolynomialRing
syn keyword m2Type ProjectiveHilbertPolynomial ProjectiveVariety
syn keyword m2Type Pseudocode QuotientRing RealField Resolution Ring
syn keyword m2Type RingElement RingFamily RingMap ScriptedFunctor
syn keyword m2Type SelfInitializingType Sequence Set SheafOfRings String
syn keyword m2Type SumOfTwists Symbol Tally Thing Time TreeNode Type
syn keyword m2Type Variety Vector VirtualTally VisibleList WrapperType
syn keyword m2Type ZeroExpression Holder Minus NonAssociativeProduct
syn keyword m2Type Parenthesize Product Sum

syn region m2String start=/\v"/ skip=/\v\\./ end=/\v"/
"syn match m2String /"[^"]*"/
syn match m2Comment /--.*$/

let b:current_syntax = "m2"
hi def link m2Command Function
hi def link m2Boolean Boolean
hi def link m2CompiledFunction Function
hi def link m2Constant Constant
hi def link m2File Keyword
hi def link m2FnClosure Function
hi def link m2Keyword Keyword
hi def link m2Method Function
hi def link m2Ring Constant
hi def link m2ScriptedFunctor Function
hi def link m2Symbol Identifier
hi def link m2Type Type
hi def link m2String String
hi def link m2Comment Comment
