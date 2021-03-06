test('haddock.base',
     [unless(in_tree_compiler(), skip)
     ,stats_num_field('peak_megabytes_allocated',
          [(wordsize(64), 274, 10)
            # 2012-08-14: 240 (amd64/Linux)
            # 2012-09-18: 237 (amd64/Linux)
            # 2012-11-12: 249 (amd64/Linux)
            # 2013-01-29: 274 (amd64/Linux)
          ,(platform('i386-unknown-mingw32'), 133, 1)
            # 2013-02-10:                     133 (x86/Windows)
          ,(wordsize(32), 139, 1)])
            # 2012-08-14: 144 (x86/OSX)
            # 2012-10-30: 113 (x86/Windows)
            # 2013-02-10: 139 (x86/OSX)
     ,stats_num_field('max_bytes_used',
          [(wordsize(64), 96022312, 10)
            # 2012-08-14: 87374568 (amd64/Linux)
            # 2012-08-21: 86428216 (amd64/Linux)
            # 2012-09-20: 84794136 (amd64/Linux)
            # 2012-11-12: 87265136 (amd64/Linux)
            # 2013-01-29: 96022312 (amd64/Linux)
          ,(platform('i386-unknown-mingw32'), 47988488, 1)
            # 2013-02-10:                     47988488 (x86/Windows)
          ,(wordsize(32), 52237984, 1)])
            # 2013-02-10: 52237984 (x86/OSX)
     ,stats_num_field('bytes allocated',
          [(wordsize(64), 6294339840,  5)
            # 2012-08-14: 5920822352 (amd64/Linux)
            # 2012-09-20: 5829972376 (amd64/Linux)
            # 2012-10-08: 5902601224 (amd64/Linux)
            # 2013-01-17: 6064874536 (x86_64/Linux)
            # 2013-02-10: 6282746976 (x86_64/Linux)
            # 2013-09-17: 6634886456 (x86_64/Linux)
            # 2013-09-18: 6294339840 (x86_64/Linux)
          ,(platform('i386-unknown-mingw32'), 3358693084, 1)
            # 2013-02-10:                     3358693084 (x86/Windows)
          ,(wordsize(32), 3146596848, 1)])
            # 2012-08-14: 3046487920 (x86/OSX)
            # 2012-10-30: 2955470952 (x86/Windows)
            # 2013-02-10: 3146596848 (x86/OSX)
      ],
     stats,
     ['../../../../libraries/base/dist-install/doc/html/base/base.haddock.t'])

test('haddock.Cabal',
     [unless(in_tree_compiler(), skip)
     ,stats_num_field('peak_megabytes_allocated',
          [(wordsize(64), 246, 10)
            # 2012-08-14: 202 (amd64/Linux)
            # 2012-08-29: 211 (amd64/Linux, new codegen)
            # 2012-09-20: 227 (amd64/Linux)
            # 2012-10-08: 217 (amd64/Linux)
            # 2013-06-07: 246 (amd64/Linux) (reason unknown)
          ,(platform('i386-unknown-mingw32'), 116, 1)
            # 2012-10-30:                      83 (x86/Windows)
            # 2013-02-10:                     116 (x86/Windows)
          ,(wordsize(32), 89, 1)])
           # 2012-08-14: 116 (x86/OSX)
           # 2013-02-10:  89 (x86/Windows)
     ,stats_num_field('max_bytes_used',
          [(wordsize(64), 95356616, 15)
            # 2012-08-14: 74119424 (amd64/Linux)
            # 2012-08-29: 77992512 (amd64/Linux, new codegen)
            # 2012-10-02: 91341568 (amd64/Linux)
            # 2012-10-08: 80590280 (amd64/Linux)
            # 2013-03-13: 95356616 (amd64/Linux) Cabal updated
          ,(platform('i386-unknown-mingw32'), 44224896, 1)
            # 2012-10-30:                     44224896 (x86/Windows)
          ,(wordsize(32), 46563344, 1)])
            # 2012-08-14: 47461532 (x86/OSX)
            # 2013-02-10: 46563344 (x86/OSX)
     ,stats_num_field('bytes allocated',
          [(wordsize(64), 3808466816, 2)
            # 2012-08-14: 3255435248 (amd64/Linux)
            # 2012-08-29: 3324606664 (amd64/Linux, new codegen)
            # 2012-10-08: 3373401360 (amd64/Linux)
            # 2013-03-13: 3626604824 (amd64/Linux) Cabal updated
            # 2013-03-28: 3517301864 (amd64/Linux) fixed #7796
            # 2013-04-26: 3658801800 (amd64/Linux) Cabal updated
            # 2013-08-26: 3808466816 (amd64/Linux) Cabal updated
          ,(platform('i386-unknown-mingw32'), 1906532680, 1)
            # 2012-10-30:                     1733638168 (x86/Windows)
            # 2013-02-10:                     1906532680 (x86/Windows)
          ,(wordsize(32), 1733638168, 1)])
            # 2012-08-14: 1648610180 (x86/OSX)
      ],
     stats,
     ['../../../../libraries/Cabal/Cabal/dist-install/doc/html/Cabal/Cabal.haddock.t'])

test('haddock.compiler',
     [unless(in_tree_compiler(), skip)
     ,stats_num_field('peak_megabytes_allocated',
          [(wordsize(64), 1250, 10)
            # 2012-08-14: 1203 (amd64/Linux)
            # 2012-08-21: 1199 (amd64/Linux)
            # 2012-09-20: 1228 (amd64/Linux)
            # 2012-10-08: 1240 (amd64/Linux)
            # 2013-08-26: 1250 (amd64/Linux) Cabal updated
          ,(platform('i386-unknown-mingw32'), 653, 1)
            # 2012-10-30:                     606 (x86/Windows)
            # 2013-02-10:                     653 (x86/Windows)
          ,(wordsize(32), 663, 1)])
            # 2012-08-14: 631 (x86/OSX)
            # 2013-02-10: 663 (x86/OSX)
     ,stats_num_field('max_bytes_used',
          [(wordsize(64), 477593712, 10)
            # 2012-08-14: 428775544 (amd64/Linux)
            # 2012-09-20: 437618008 (amd64/Linux)
            # 2012-10-08: 442768280 (amd64/Linux)
            # 2012-11-12: 420105120 (amd64/Linux)
            # 2013-06-08: 477593712 (amd64/Linux) (reason unknown)
          ,(platform('i386-unknown-mingw32'), 238529512, 1)
            # 2012-10-30:                     220847924 (x86/Windows)
            # 2013-02-10:                     238529512 (x86/Windows)
          ,(wordsize(32), 241785276, 1)])
            # 2012-08-14: 231064920 (x86/OSX)
            # 2013-02-10: 241785276 (x86/Windows)
     ,stats_num_field('bytes allocated',
          [(wordsize(64), 25990254632, 10)
            # 2012-08-14: 26070600504 (amd64/Linux)
            # 2012-08-29: 26353100288 (amd64/Linux, new CG)
            # 2012-09-18: 26882813032 (amd64/Linux)
            # 2012-11-12: 25990254632 (amd64/Linux)
          ,(platform('i386-unknown-mingw32'), 14925262356, 1)
            # 2012-10-30:                     13773051312 (x86/Windows)
            # 2013-02-10:                     14925262356 (x86/Windows)
          ,(wordsize(32), 13773051312, 1)])
            # 2012-08-14: 13471797488 (x86/OSX)
      ],
     stats,
     ['../../../../compiler/stage2/doc/html/ghc/ghc.haddock.t'])

