;; Bignum's quotient, remainder, and modulo 


;; quotient
;; TODO add more specialized tests for Knuth's algorithm(s)
(test-display "bignum's quotient:")
(test-display (quotient 3883786360950680064225125 205117392984896)) ;; (quotient pos pos) => pos
(test-display (quotient 8412848862694560424196528 -502221066118630)) ;; (quotient pos neg) => neg
(test-display (quotient -6744278622039194945047123 713786960956364)) ;; (quotient neg pos) => neg
(test-display (quotient -3719172874677646575739624 -138908658326459)) ;; (quotient neg neg) => pos
(test-display (quotient 958133904780275900994657640789 5126)) ;; bn/fx (quotient pos pos) => pos
(test-display (quotient 946839835259570982582262052248 -9407)) ;; bn/fx (quotient pos neg) => neg
(test-display (quotient -726719478268482601476990902640 1363)) ;; bn/fx (quotient neg pos) => neg
(test-display (quotient -944374553050682034962524517493 -9965)) ;; bn/fx (quotient neg neg) => pos
(test-display (quotient 1431429809190659250937221696461515709858 1)) ;; (quotient a 1) => a
(test-display (quotient 3874105978859597729754989301617539284681 -1)) ;; (quotient a -1) => -a
(test-display (quotient 382686838647250242952244 -894277415599185592524595395943)) ;; (quotient a b), |a| < |b| => 0
(test-display (quotient 85225499546667278239864565961163548862305774564980 355936345681743241125150760694))
(test-display (quotient 85225499546667278239864565961163548862305774564980 -355936345681743241125150760694))
(test-display (quotient -79451096596094025228879710893145669136867228748940 560101503308617928680920874760))
(test-display (quotient -91782493858900971490967598526136554978189312978482 -168299894872265880485756401427))

;; remainder
(test-display "bignum's remainder:")
(test-display (remainder 31415926535897932384 626433832795028)) ;; (remainder pos pos) => pos
(test-display (remainder 84197169399375105820 -974944592307816)) ;; (remainder pos neg) => pos
(test-display (remainder -40628620899862803482 534211706798214)) ;; (remainder neg pos) => neg
(test-display (remainder -808651328230664709384 -460955058223172)) ;; (remainder neg neg) => neg
(test-display (remainder 10499725246808459872 7364)) ;; bn/fx (remainder pos pos) => pos
(test-display (remainder 46958486538367362226 -2609)) ;; bn/fx (remainder pos neg) => neg
(test-display (remainder -91246080512438843904 5124)) ;; bn/fx (remainder neg pos) => neg
(test-display (remainder -41365497627807977156 -9143)) ;; bn/fx (remainder neg neg) => pos
(test-display (remainder 535940812848111745032 -535940812848111745032)) ;; ;; (remainder a b), |a| <= |b| => 0
(test-display (remainder 47755513237964145152374623436454285844479526586782 105114135473573952311342716610))
(test-display (remainder 21359695362314429524849371871101457654035902799344 -037420073105785390621983874478))
(test-display (remainder -84784896833214457138687519435064302184531910484810 537061468067491927819119793995))
(test-display (remainder -20614196634287544406437451237181921799983910159195 -618146751426912397489409071864))

;; modulo
(test-display "bignum's modulo:")
(test-display (modulo 841027019385211055596 446229489549303)) ;; (modulo pos pos) => pos
(test-display (modulo 819644288109756659334 -461284756482337)) ;; (modulo pos neg) => neg
(test-display (modulo -867831652712019091456 485669234603486)) ;; (modulo neg pos) => pos
(test-display (modulo -104543266482133936072 -602491412737245)) ;; (modulo neg neg) => neg
(test-display (modulo 59977001296160894416 9486)) ;; bn/fx (modulo pos pos) => pos
(test-display (modulo 85558484063534220722 -2582)) ;; bn/fx (modulo pos neg) => neg
(test-display (modulo -84886481584560285060 1684)) ;; bn/fx (modulo neg pos) => pos
(test-display (modulo -27394522674676788952 -5213)) ;; bn/fx (modulo neg neg) => neg
(test-display (modulo -870066063155881748815 -209209628292540)) ;; (modulo a b), a,b < 0, |a| > |b| => neg
(test-display (modulo -9171536436789259036000 -9171536436789259036000)) ;; (modulo a b), a,b < 0, |a| = |b| => 0
(test-display (modulo 94231961567945208095146550225231603881930142093762 137855956638937787083039069792))
(test-display (modulo 77346722182562599661501421503068038447734549202605 -414665925201497442850732518666))
(test-display (modulo -21324340881907104863317346496514539057962685610055 810665879699816357473638405257))
(test-display (modulo -14591028970641401109712062804390397595156771577004 -203378699360072305587631763594))


;;;run: -l nums/nums -f+ nums/bignum -l r4rs -f+ scheme-bignum
;;;expected:
;;;bignum's quotient:
;;;18934456529
;;;-16751286296
;;;-9448587591
;;;26774233654
;;;186916485520927799647806796
;;;-100652687919588708683136180
;;;-533176433065651211648562657
;;;94769147320690620668592525
;;;1431429809190659250937221696461515709858
;;;-3874105978859597729754989301617539284681
;;;0
;;;239440283580566865841
;;;-239440283580566865841
;;;-141851246830730585008
;;;545350868629840110843
;;;bignum's remainder:
;;;269821227278184
;;;954407672116060
;;;-217962738234140
;;;-174365045185644
;;;4452
;;;1090
;;;-1536
;;;-1592
;;;0
;;;5975323008975327512344064272
;;;14577110881247298898268851848
;;;-371670919999668461747445868975
;;;-241207608238831296814278237947
;;;bignum's modulo:
;;;5022568170073
;;;-140995282932867
;;;17877788765252
;;;-161526792658162
;;;778
;;;-1902
;;;1404
;;;-4897
;;;-39981787375855
;;;0
;;;90585486260603582098162526050
;;;-199297470662073675185825870173
;;;250862680531323455278163770696
;;;-180913516359088603385344241858
