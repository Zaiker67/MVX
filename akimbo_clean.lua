local httpService, players, marketplaceService, replicatedStorage, virtualInputManager,
  starterGui, v1, v2, runService, virtualUser, lighting, httpRequest, localPlayer, addWindow,
  localPlayer4, killing, spyStats, match3, v119, addDropdown7, v120, strength2, rebirths,
  durability2, kills, agility, evilKarma, goodKarma, brawls, sessionTime0d0h0m0s,
  customTimerNotStarted, v128, v129, v130, v131, strengthPace, durabilityPace, rebirthPace,
  strength3, rebirths2, kills2, misc

do
  httpService = game:GetService("HttpService")
  players = game:GetService("Players")
  marketplaceService = game:GetService("MarketplaceService")
  replicatedStorage = game:GetService("ReplicatedStorage")
  virtualInputManager = game:GetService("VirtualInputManager")
  starterGui = game:GetService("StarterGui")
  v1 = game:GetService("Workspace")
  v2 = game:GetService("Stats")
  runService = game:GetService("RunService")
  virtualUser = game:GetService("VirtualUser")
  lighting = game:GetService("Lighting")
  local userInputService = game:GetService("UserInputService")

  local v3 = {
    "VFW33yFN4bSj/6cUgzpGIWsKv+PMC82jlC==", "cuQmveHP", "6I2fpkuHcp==", "NH93ZaQ3DvQi",
    "hO15jt==", "8MwTZvr9", "ngPWjFJ0vpTrss7=", "5GbN", "8LJrHlV=", "L0c+jrRuXBweg7+1",
    "pJIdu/NzfWkNtOkkFMtU0RGEDFDujkzp", "KrB8GPV=", "O0A1zQ5PWP+U9BbK1JMr",
    "czJBIUR1SNoH4JZnJvM=", "i/jfIXNySMspChg=", "wSXX/FhMot==", "At==", "8NV3OT4mKVC=",
    "eREGR68hNy==", "wkL61C==", "d6BdXzQU4d6=", "hyM2bAuT7kPo", "bmdKTk1+yM4GGDC=",
    "LgGgtlgryIqHJVI9Tb6=", "Cjaquy==", "RYn6C4R6MOd5a4Rd", "zw9lYJJ9eRis6d3RSy==",
    "Kxx0nE5iap==", "9Ucw0rE3vQsY", "e8wQYyUPst8gJaoY+t==", "eOnZIiiTe+d6SJw0Qt==",
    "ArR6MizBQ4iUQ4L6", "BclDoRDNUNA2", "42FKzvCW1p==", "EJyFCbcUjbVWtCT=", "Q4jBuJ9=",
    "q/eR3d0l", "8pvpal0OZt0bGJdWqp==", "FvLZUGmCSJAirDt=", "80Gkk43kmp==",
    "lO3XG0R9AlX3K/yVO+XILp==", "XYfl", "VDj37bCt", "St6yfQp=", "RDc5u49BuvU9arnn",
    "I4z8U4OQhNQ3Xy==", "KRHuGA6gQKXg", "bdVBl8JYjzg8csv8ul7=", "CqV68kU9AG/Y",
    "hFmtBu+TyXienC==", "ZIBnfFvvXyGds58VqSxwxdQV+jc3uPa2qMj4", "JkdzApy=", "BLQO8a3u+lv=",
    "Id103LtqjkV7Cc6GoNSX", "+rnQTdLZInwcovqTTOv=", "M2eaZg9=", "KMEQ1Hjm9p==",
    "ekzXSTzFRUiiG4cO", "+pHrmoz4BGP=", "ymgUr28FQN0INv7ODy==", "swzT", "0lkEYyzqA6SZgsp=",
    "g/OIXzodCIU4nOShLs3Dfp==", "IIml9vG2+yXl", "ofOC/W4eHeUT", "/BNS9Rp=", "iEcF0tbyQ5S1",
    "TErv0nZ7hGhanxUvWt==", "btzw0PqmNXZScoC9fiUPkp==", "DJ1utt==", "xKWjkp==",
    "9F1FX/Y+Kn42hXab3ZA2Gy==", "RCrLLLJkp1x3tEV=", "Egxvrxjn", "orTJoVRNuOzVL2VZT4C=",
    "EvbEzVhKFtv=", "G00GWl2lOXS=", "ZYWIBOw0mOpkkLyPikaZ", "/YQyd19VVG8lBt==", "w0zdjmVHLckJ",
    "4JEXr6M=", "u+i6Ap==", "R+HUuC==", "TSUJSVjzbC==", "mysQllhAECGqMiNOhC==",
    "PheJwI6xSCcIBTp=", "hOQXzwY27FqZBPv=", "WVq4Lv1NuYM6uJq2", "dafBJ4sduoy=", "MkiqMbe=",
    "8ejPW2h1tVYU", "STj4Tv6YLZjAa4jvIDT=", "d89WusLJcZC=", "Pmvv+tG+HtP=",
    "B4+eRE5vy+w4X/hMbzV=", "/MIYZRDAm/9=", "Z1NwP36XJ97nTc/i27aU", "rdYAz91c", "zpyLOMsB",
    "z98NIe/H4t==", "nMPaT3TWHn8NP3ms", "9oaIkSjp4WC=", "RijRWvjcRDRhMTeZWy==", "As8rEPHg+lHM",
    "8necwKcLuqpckBWSgC==", "Q2a3LnieQ+QLn29lAp==", "lhMh9NbdbLC=", "1+jPt/5H", "uH2yPFwhV+K=",
    "hA7UvFw7Kug=", "ZyluQTyf4khaQl5FctMHSp==", "mCFg8oS=", "FzmYkY5lfY6=", "eC==",
    "0Sj7/ORA9Jv=", "kW5NyC==", "8Gh2D9JFJwG8FPx6orbGFt==", "EbvUXenW", "IqZQUCZ8",
    "Utj/++ykmQzksV1YhWsZGfT=", "iC5fZMVT+iP0Ns7G9p==", "aqP0yZh4IlXAuYkr", "qluuZn/DScp=",
    "eOzQSvcGIrpZWZc9Cy==", "LoKKoIlGFIzbQQZp1y==", "DzTl4y==", "iBJIy+vwNw6ZzqBt+oXZ",
    "W6CK5OtA5mbSpt737jg=", "Uyv6Mp==", "pxuBiuDU7py=", "zcXgAp9XIC==", "OIdAwWg=",
    "KPC+9GCuL4OhXHo+i/8osy==", "Dl/aVFMvb0Hcq4v=", "hv7re7IU4y==", "+1oBtC==",
    "L4jrIYUXQDjjCYdBoC==", "nHJ1yp==", "myRHZt==",
    "B3jA2N8+oTH7R6LEfRVnUmICQjTNzM6YNXKs9EXelHmGtASF", "hQ/2eWkfACRhdogz5TYb",
    "45oSXsH0uDM9/EOG", "hqdz7+Jsop==", "EVizo/c5N5qe5QD5ft==", "hAWj1ug=",
    "j528wWuML5Ur7nzqljp=", "KYbWiN7GGC==", "WaJy4/OSync6HcWP3A2UrBtont==", "L+QmWYlyMrcgR2aK",
    "1fzMtZC=", "MOuv7FmIwwTmTqALBSAEN03OL4dWNy==", "tRPF2zC=", "mHM/yt==", "St9H0wUutp==",
    "kjI4uUlkRBKiKp==", "GWYEhGmhDAV=", "iImNGJ2LGEC=", "2x/F8p==", "nH5mkwT=",
    "Ai6EYj6KSZD7jtrDbZHhRp==", "a+iGGWT6LVj1Wkqy", "3efMESOLzpS=", "MOi/Qkz1",
    "UhFcsf0g3Rkl2Og=", "55NaYcWK", "QnmMHnN0tVVu2jn3kc7=", "NUD07WhaNPPM", "xtzWhEIhOC==",
    "sSOKZC7BXHEAgWRAZC==", "JM0n7dfQ", "GbLiZ7VPHC==", "MV1gIZi3Q2nbMiQV", "+eyg5mizVP9=",
    "mIqSwj+sGUHaLMTi", "0DP+2aGwJPCAevp=", "HeO8f9t=", "xmbivIw8EbPQjO6=", "KYiLxwXgHZ+L",
    "VKojFkf0Ot==", "daChCgL/", "XnjRVUbxKWu2DhF+XIGNG1K=", "/uzLzuEUuiECUt==", "ZF6gq6X8",
    "fzm+y93jap==", "QYn6Q4cdSJn6uJj/S+Ud", "kuROle2Z", "TIFRRMtoOzp=", "AkzEAYUdaki1Q4RguYC=",
    "UKIgaSKdN9dT", "MVL22TNdXW8nyGOEkGmgWy==", "6d7D", "WFBu7LxA7WhRPt==", "WuZC9++xyMP=",
    "C+RvTJaqakLg", "AnnFROaDW4qGRbLC", "fGzzaThR/6V=", "4gFb81yociclJ5x7mC==", "FKoLBMjSlt==",
    "LZ2zigs7CS9=", "RZZUWvS=", "pmdI", "TnRcRYH/WbLJSbRTuiM=", "+k4ZnOWRpOV=", "d4U+0zS=",
    "Ad/HaVsehOt=", "KckqwmfJsg1a1ZM=", "T6xyT344jMe=", "2g13lJsZ5t==", "22iBDUvUQA6=",
    "ho3CaCdp5hvPyiT=", "C6qrA6d5WnLOn+Rv", "oylAbeE7CYVQCQLSMOKHD3g=", "QptYpVt=", "WFQafp==",
    "RkdZSYz/uOn2ap==", "Khe=", "++jIIVSZWVHXS2QQ", "Sw7CSWK7uGFf", "s+i/VrRoKn0zFy==",
    "ardyQC==", "YjjJoVfeXiXupngk77QNRMignWtfrFt=", "tHhuXpZBLt==", "WVUEurjyRWRCQVRSQv6=",
    "wapBnboWGj7I", "rs1tHA01IkYg", "I8pOaljdUDI3dip=", "tDUvDDYmCt==",
    "ROd/QVQqMbL6CYcqukRhQvL7S4LZ", "Qwq+OnL2OM7Y", "hxgprbyt0S4tNDOHkf1je1p=",
    "TVzgnUQe+ORkTvqqot==", "4LRRjhADqBHQrsK=", "2FBuOvWnnC==", "/WF2Scv=", "PXKc", "o4yyvn1o",
    "UPdjnwuywwt=", "C8rj", "h37Tby==", "pec/Pjg2mHP9IyKbOce=", "Jej67p0teTt=", "e5pO0y==",
    "uXGIo0g=", "ivLJCt==", "hPPH", "PzlwnhwcWRVLIfOi75S=", "ia+D0DC=", "V0M4XhOMHsK6",
    "x8jW5lfHyjg=", "n4tH", "Pc6/bAQK", "nJa6VL7hoeY2B3EXSqxWr6y=", "KvvAOIqbAiG9rp==",
    "piKsvrbflEOZ", "yXkkqQd5E5e37Yt=", "IaCmKIcI", "WmXblH01CGV=", "K9cW5l2Tfvc0llC=", "C6T=",
    "tcdegLbFNp9=", "MakcyThv4Nzbgf7ix7SlPNT=", "2XPWu3DtqWxFSyy=", "RYn6TrjEQrn2aVd/QOP=",
    "0IzrgU7=", "PlN6ev9z", "padOE4lh8Zb7fp==", "gro1Js38Ln9mO/e=", "q0ZN7kFmE8gfn8t0FZaSFy==",
    "ZYwewWMRDBvPVC==", "6klPTxCr", "4+t4lTax6nJJwJe=", "IQlxuctLXh4IId8tiKV=",
    "faExSKqJRhRfKa1V", "LvjNAnMKW6HXAdd5aUS=", "f+/8XxTkVsi6HYjK8lw6mBQzNHKE",
    "L4R9IVzhQ4adArVU", "tyIsWxbWuuCXVSK=", "j+qPsC==", "YKboz20gvIdenp==", "fb90kwLaDF+q",
    "PdhLRby2BXBbgUT34C==", "uZTpCt==", "ZQIGfA1WNkT=", "myljfeYV2kp=",
    "+Mtonuv6XvfZUQTFcmPmwC==", "W2RFWC==", "p7aniGwTErWIKwA/s0M=", "7CJvdj4xcfOZsC==",
    "5q3LHvG2uy==", "WYaETktYMTqvnOQR", "YtEduzhxAy==", "cf3d+3f006P=",
    "l3Q18n8Ung0x4Z3tofE0LpV=", "L/JIKN5Ixy==", "Jt6guCO9Pp==", "sp2PO5dJEpXz",
    "hjZCwtc/JT6GPsP=", "6+e3r4KgOhd3", "LCadmrsWS+UKn2mKudScet==", "6SQTkPQXTy==", "YeL2mPNB",
    "KuR3wC==", "jUeEgC==", "C+L6A4QcakT=", "tOkMXJsEaH51s7BeTmDn", "LniKWJcICWdbeWdkLC==",
    "Dddv0ehIEK8UJbV=", "DfqbkvT=", "6tUg1fjnpyPc", "ZOT2uTc0bJmAHMjcZweEi1p=",
    "L15GkaUkHiFTI60ScD1tJEfZporsGx7=", "MsPQn/mzQktYwQv=", "7LcyAludh0lH2bp=", "GwFxXIe=",
    "K9B/PKof", "BXOaJM6OiTuw", "C+RvnYd/QkzJ", "GclOazvxmZLar4C=", "ywn7kRDANQ6=",
    "WTQCADccA6a4SYL5Rt==", "CrM6m5T95wM2fPdYt1bHGC==", "UJeEqTihLs5l2MgjKJINdD1Z3u8kcIy=",
    "OiR3MNK3efs8BKnfXyqAy9uCha/3NXO7mJcBD1GT2k6=", "uPSEn9q4byrTGjP7", "W+6qh+4S",
    "oMWc76YGx1p=", "Te+yadp=", "h7mS9keff+V=", "XF46usEuBhJ29p==", "AZCLoCGz3t==", "Sy==",
    "cHR+JufWqtVjYt==", "qkx3LkufIy==", "2sDheC==", "Hkd5m1/oMKS=", "Hp==", "Wm+YpQ4dUC==",
    "zB/ohp==", "UgIdpqv50aC=", "dqckIzQKm9C/", "dCA/rUNWIp==", "MJwcaYK=", "F7K/pjpm",
    "7zUzap==", "ymXL/tcRVxlhldl2tC==", "GX/y2XeVM7wxYjmd", "TYnXAbRmLY14Q+a2",
    "MOd/QDjnSZiwa2iVTC==", "fVFDpPQe/+e=", "OP//wdNLqPBverYMuC==", "dyuLlci3FR6GyigltSP8KMNA",
    "zzK8LmDqBYtAVC==", "ktjvxDnja1oF+V7=", "o3tlLk0sgUDZxUab60y=", "+aWnc2hP81ZxOvC=",
    "Xw4MM8yqusfE", "R8dvPlwV", "WiTYTvQVLZtJR2Lwep==", "ihn24SC=", "WsXQvpL7W/aR",
    "LrjSyk0SI56=", "cJs+", "Z0846p==", "ITeUWWjXITLQIkd2+p==", "CbkNDt5Eno/Qlp==",
    "iOAFWaDjBvED", "eiVURp==", "e4nVakcveDLnQ2RUnUV=", "WWx0LhgD", "XQ30gCIQ",
    "uVUb+bCBGWjrWOj7", "jDViLwO0", "YjsLYUnT", "dEAL2y==", "u8gZDzgmTCiJmEv=",
    "LJpUarw3ATqVW+c/SWM=", "+dVDgWsSjte4", "yLL0UQLy6+S=", "ZW+FhaVp", "JCfj5qT=",
    "aPRu9csYSP7x", "rU/Y8sdq9gOiGLt0V+tX", "8h8uP+rRLeoU6/oxutFobt==", "m5eu/rP=",
    "TyeC0BoqLiRVQ5ImacK=", "S70Osnv4", "BpZQ/gszQ6EbVkP=", "k2NXRunq9gd4", "RT/D1mWb/y==",
    "eiHbnRE15Gbc", "q6DwbP0HriZLry==", "QbdNW4wUuZLeGWwy", "w7H5AwRYpNxFVy==", "SkCAkjT=",
    "hRSm6p==", "+Yxkcf0Pyy==", "akzZarjquOM=", "+V2EwLoYiytpHxt=", "nvGsbsi3ImLw",
    "LS5i8P8Sl3darjjZXVK=", "ITRmIOdXCTz7SWRm", "C1Dqke7xPct=", "ky==", "bxDwMcL3Sz7=",
    "PT21xGT7", "bdnhTsv=", "GnabnntBuYlVLbwA", "tIUq3qed8RCwp6BI/p==",
    "pPojXLlQCixs0pGkCSCxnt==", "1VEJpt==", "I9s8lmDkDy==", "wIeb3iauU+4F6TAqKVSpgC==",
    "gMgNKb/rpSt=", "MkiBaiLqoOT=", "QJmt++bdE0p1FW5KVtIgPeiK", "9rO68Sv=",
    "IDRZ+TiwG4iruDLZCOK=", "ukq0RUR5niiFe6Qe", "lpn0o8g/rPFOkp99LZEoVC==", "zsmKNy==", "MwT=",
    "zyEpLfw5FXK=", "aTTUAdwJMV1R+WRZ", "aCKsGpZaJ+VWTe/4qng=", "aitYLTTYTraAR+RVWT7=",
    "GUrUjgbR3C==", "FJ+97S7=", "jaDec9jp1jM=", "dc8MuCIG", "UL+tOgxgbgvB", "x9Ruz11J", "wVT=",
    "uOnAVijSvdaKbAv=", "ZVClpV8aG0k/ma/+7p==", "88sZQBBDVEy=", "WgLx", "+sptDu2ikDKWp42tvt==",
    "XavQEOjwlJg=", "cthhfT3Q", "pKkR1mHHAJj7nbK=", "IrWVGaxS", "ILbcaoBzLmK=", "J6z3j+TMYt==",
    "eYnn+i9ZSdjTQ2vBLbp=", "whTD8y==", "lJXMBlha6C==", "S6CyRDiQavlcCbdbCt==",
    "uVq4CTzm+2pyC2cQTp==", "3BPl6Q3zOtP=", "aYcqakn7A4L6", "cFkaADDINQByba6=",
    "RYn6Tklco+d/Q6i/A+UcakdEudRBS+L3My==", "XU2FD2o6TZcRcXe3c1nmVrxH1Lw+06w8UJ4LOIK=",
    "SDtomkVYNdyP", "mjRygib1g5k/XIgp2cOhLY9S0IK=", "bz/y/8ukp8t=", "yepgtLT+V4N7Op==",
    "e7ABecf/", "PW06MaZ5vmpoAt==", "9uUUld7qut==", "cIQmr12c", "CGTE4dOt", "842eWJk22C==",
    "UhobCIpLGM3fKP9=", "45mcOnI3", "xeFHv8H93pv2Tq9=", "CZHQZ2odTNA1EoUYR88O2hSPiC==",
    "YRxVQBVXQYJXDrt=", "kJ9Ce82JhMHLqkK=", "dhdmIt==", "pW6=", "f1CIHjZKwEbv5qbt7p==",
    "djNeFu6dSp==", "MOnYQ4jZQC==", "C+RvROz7QknB", "RknZarjEoC==", "eoo6cRbIKCE9",
    "oZFKWSrAdt==", "M0Jg4h+VzhmWuHyp4Idr4yOb", "HRkBztgWnnsLV9Q1dq0FFakI8y==",
    "+CU5lDN37yUtUptc", "huxRupBKWn18", "pExMWB4nAe0Cbuz6jP7=", "GRNYtICC/p==",
    "57Sy+i7qPlgNhfnK", "AriQebRyAdjAQTanTt==", "Q97OPmIeVSC=", "ULbitdG35WN5cJI/yIecty==",
    "TZE+8WhIgRrfRmrekENX", "tLP53nV=", "uYi+AYqbnZnOQvjUT2v=", "Yzt/vQeiCIIGby==", "QXgz+t==",
    "6KgVYC==", "iEdve8ZjQ1tU", "Cx328UaSKt4BZFSiKScOAKLbyYwe0K7MllVQBZtZWt0Rg7MNFHbv",
    "D0TPrkK=", "T7oG1I/ZkmGG9BK=", "VLGVWMRPVw68Hat=", "yHbZS4OU+TQsJsS=",
    "etBhTGMAYqRzLfffBsSv3MhCvqFm6HBM6t==", "HqFB+BOAiqNE4O6p5adwFt==",
    "SJOazgkHu2Y8XWpZN8KD24UP", "7hK19NsSvNy=", "TYn6C4R6MOd5a4Rd", "okw2KcIroC==",
    "g9DuPfEF9Dg9", "+TjnCbtHCJMyekjR", "QKiIXRFWFMZEQB70/yab/t==", "/pDW8z032BVX/BM=",
    "WgJ6oAT72A01Lfn+vp==", "EfKI0p==", "IqDDG4CThAv=", "TWbXSn2NIpGW", "BY6VNYXZP+MJ",
    "2n/Peje+", "yjjgpaba0go7LmM=", "MvCUWklgnbwB+OaBSb9=", "RiO+Lra569EBkVVMaw9=",
    "Oza//ppDw4u8ENC=", "8MoTdC==", "MWcZRijCTk17WbjRWTt=", "uVxzTp==", "Qkn7akV=", "8p5u",
    "y1ZZXh8WrIxfkzN2", "JsJ7", "ROdBQnLdMbQdMt==", "0UcQwolyI/aDoLf2", "aMpOhJO1H9U5j3e=",
    "QMdEnp==", "tJdxaak/h/hugy==", "+4CZRijYCJaWabQw+Oy=", "OhvgDKaO", "vrdmC3Z9sS6=",
    "xtI/xp==", "Qr9ee/3iGC==", "9YT/rp==", "++nbevqH+TvYWJq5Ap==", "TEut7p==", "dykaph8Wq5hy",
    "m7PeaHpAjUZp4B/P1jzuKrmn", "YU74wJpVKztU6mEDrwO6+KV9UA82gC==",
    "t/0NJhpYw28n3MKagQvTdjvxs9WCk8s+3p==", "VIPhZCZV0t==", "5MQDyz9=", "I0g8ztnUl1wc",
    "a5Aly3WhObdy", "pxB47rb5et==", "lCmXVwtkBkP=", "ukz2AUjUuOHquOM=", "jcbBBt==",
    "ns/H39YgYiCIu8iRGUr7Gp==", "wEkx+Sy=", "bY1nQC==", "qSgsmonGTi7T", "jdKK/f9CQDjsUwC=",
    "i9+PXFpAgpMofIUkBCuJ", "ADajL6QBnViJQvar", "ldAWsUd1cAFnEgEePgV=", "TYn6CYzBQC==",
    "6FqeajQ2", "DpPD43dXAiWCr+7=", "XiRHvBULUC==", "c492", "c7rZP7oUWSvJvxK=", "/PeIfv+9dVp=",
    "hIvpGXXB", "RENv5YGj4ul2", "CnqTIb9KGTLqoki4Ct==", "tk/U5+0zfjjpvt==", "viiACt0arzp=",
    "PDojRy==", "hLE2Hwp=", "oWCHW+qm+nilodRi", "ytpH", "CsQCRKcLtiFwcYQES8OrwaLEQ6PnYVS=",
    "Q8D+", "RQkW6MyEmDUYA4T=", "lvRfO8FFOxN+dlcU", "UxIudz/pIp==", "c7JcnAEz6p==",
    "BjgIsmtOeQNlI20mLIC=", "2HUtsmlL1+hb3XgWnX8v5RddxbgIat==", "ag816rBpXp==", "yiwL",
    "Tv9yu+QdLdQmG4c7", "lhj5TZGFynWrpSTPRy==", "lbUEn2Y9JadgaQrXNP4453as8C==", "S5zeAY0SLt==",
    "hn+OJk2kg27=", "7nmBxef5ssqyHC==", "TOlmRTR5uOR7TWnDoO6=", "6dRMptEy", "lkAlpIGPWUvB",
    "SJn5A4t=", "nRHoZC==", "LYTEfrGRk9uE988v4bRZruJmdrddzM22qnyHjrMNfxwehp==", "yd4jkyK=",
    "OfVtodySvNx7nshANphfPGJlDsJZ9j0++0C=", "jw8yjveVV96=", "ZfNOrp==", "LtGAJfch",
    "AWRqu+LZ+kSlekiH", "a9v+UZisNs62VHN2", "++aA+bwGSdaLAULHA4v=", "LfyIqoEF6CODZp==",
    "qIA+d80fc868oEp=", "PE9LrM0x", "B/z1Odp=", "58Rw6fJJr2DiUUK0OqxXJy==", "xMcaW4ij",
    "8NM7Np6fGeZC", "DPh+gOkG", "K0AX0PvmeGgGpVv=", "TXvYBV1Ho39=", "4DRsw587F2lV", "tP77hG11",
    "v7hj4LEfrLt=", "QOd/Qp==", "VdD0ysf2O87bZoV=", "nJLKQ+RjIZjYT6qrC2e=", "SCkw4HlnEXfO2C==",
    "gLO+x0bJkJjU21C=", "yEZp3RD2Ey==", "ztGmbbsmgoLIYC==", "OS6m5T5HJ9S0",
    "Kud3/MpXllvl3uKrtt==", "IdD7fqpTBt==", "rOzqR4pMwf71aCX55qPtWy==", "dnCQAO7=",
    "dFTcRlkJc4jQrWS=", "8dBbV14+m81S", "6+GS0fJOVGe=", "SZTjiaC27gqavs9QrR+5", "PMzupQp=",
    "LTXeQNMO8hp=", "b5Huut==", "Wsaxip==", "b8gszeEihbBURp==", "3ne5ID4fvqM=", "1c9PKKbyksg=",
    "9rCaYCk678jKBhg=", "9WRkKd1W1+NPL6lCrAP=", "zjqByDx4w1YRg568UcO6lp==",
    "a2jEnJa5eT1OLJdZ+OT=", "6hUTodlUtzPm/p==", "t6JHkrSvZ9LHra0z0HbAEG7/Rp==",
    "nJKS32yV8mlxqnxPHJ0RA+Vn+iftFuyQ7t==", "C+RvCbn6akz/", "yMALBt==",
    "+hTbcQHOH8/mNFta3Z/z2C==", "gRc0/bBWby==", "Syweay==", "dz/Emq3axTKQ",
    "MrjdaOdEa4L+S+lUQ4e=", "aAn9WIQ2yD8GDhokR4RXEyg=", "50OO/PpubmJI9/O+LeSB6DQD",
    "Z+KTmeXB1sEpKbBp", "/NnDMJR/apzFInwFR4dyJk0RLd50", "MJRcMbRCuJLqakdEut==",
    "LohAwcAXZ9zdY1yABsaR/qYmoRUJ", "WD8Lex+wRZ9gcxv=", "8FZXsFQ9bp==", "w9a7QEAJJv4ofIVlEk/9",
    "WvARQUqY0C==", "BObWlT2BAC==", "98OVTW45NPk6gp==", "+ydV", "QYL4IbcDLDRconir",
    "t2y/St2p/C==", "fztu", "o+ADBl264AYPqYsuFupp91KYzmTgJC==", "hzh2cVK=", "CuJJGST=",
    "0ovrXMK=", "+30kXTc9CC==", "8C==", "OTYRaKhfHyDHHKLmLuyG", "QYUcakLg", "auSHU1Q3hNzf",
    "MMQucc6fKw0uxSwgit==", "ukzJQ49=", "m6YgU+nkxC==", "Lf5qrneEr6HZ1t9=", "jDJ/x0xi",
    "B3lOr1fozPauX8Twc+S=", "GDRj+rdgaOzIeOq9TiV=", "o9+/FA4xqDy=", "YjIX2p9mWHe=", "WByQgd6=",
    "JXF5PwOeeI6K3x9m1C==", "m9MX3U+bhtjwO6+ioU7afZx6", "woBjYaw4oJ0T",
    "BKPge5sNQZBn/1wgnJ6qak9=", "xO9k8Tnq6CP5HJV=", "dv77Z3MxDXmCYMxi79p=", "8pp0fvzP4m2JVmT=",
    "WvMSyEHh38OrMEe=", "N21FAdqIU+WJ", "PK2IECHij0S=", "atVBs9isTmQM", "YBN2", "sZv=",
    "eo0rKoMlcYjUs4Ix2p==", "2GMRV5a/6i8gbZtz", "uyzsonV=", "5fuiLX11iO9=", "DnSJUGvG",
    "YUA5Qf+kVjh630ha", "WTcHuOdCu+dFuOjY", "phPTGWebgt==", "GlXt", "gRM4Jto2ey==", "wxxm/Fh3",
    "2NpLYVEMpy8hPAtPmcc7Z76KQt==", "wh3rMp==", "5LYXWsBOLp7=", "g7OLjNg=",
    "a4wvS4RdTOn5A4j6Ap==", "8nBkp+b3fIOiePLyUCy=", "x9Kajj/Yip==", "BuEwuMmeKcTtqC==",
    "1/PaQy2AWmM=", "SWJ93pnUfdI9Ul+7blvsRy==", "twZROXpBpt4gx0p=", "FBQgMS/7KAt9N6+zXOp=",
    "WJjAeOnV+rLHaUR/Wt==", "lp8t9tDExy==", "aVjXMTVZ+T1qRrRruC==", "0X/5it==", "GCjp2DbTSt==",
    "cGEt+uEn", "t2+/aiYY", "WbQ5eij2enwco2iZ", "8aMj8NOn", "eKZX4t==", "TtzfoNM3FPaB",
    "qUkE9KuM/inItYC98gfBKd526p/+IqvVTsLxy39nrSK=", "NQQ5Hl7ae9qU8MqtElewit2g", "NRZwtBe=",
    "esXgHVuDWVSM", "Zu5oR+XwdKoLArS=", "qJR/tIIVkusT", "VLH0XtUNgJy=", "EaodWp==",
    "f6xB5OC/nWe=", "QreHniiyuVRGM2nl", "akiZAy==", "4Uz1Q4Rcaki5ukT=", "ZEyByuQ8lvt=",
    "Kd84Dit=", "pEAOYat5Ti3qg92WGSg=", "y6wAF39QNK6=", "PC==", "vUqP6ZGTRRMz0Qnxs1vx",
    "dOOsXYlxsC==", "eCBJ", "MkLcuky=", "XNlHyk8ViC==", "Wp==", "0+Rzap==", "Y/5yV79=",
    "E17uy031IQM=", "R2QyTk1VROQiCY9yIC==", "RveGlBe=", "Yce/rvxFKvl4ZixFxpm8Ry==", "zK/e",
    "uEZn3PpzeOp=", "FyJL9re3S2ZXAa3WNxN7IC==", "3C==", "e1gPKy0JZp==",
    "a9ZNsN05OD2bE6DRPsY+Lp==", "cUBzZ9CClVb03KO+", "j0izMN0m", "Sya+/Xp1iTt=",
    "iHlO6aH+4PQfQEWwRrl0ypYve4MoSKXPAC==", "0uwNO3CBo4V5/fhs9qM=", "MX3hytNZxRJg", "FdyN",
    "I4pJGrjnWiRvo4jNedt=", "26V=", "8w5gOEo0fFnezciYPJ7=", "C+RvWki5Q+y=", "MYn7Q+L6MOz2Ay==",
    "Tve6TrLIWTa5R6VUW2V=", "2W6efy==", "AzQeZLAZzLfyJtr7MpvA", "RAN5OAe=", "aRoSKp==",
    "72s7KHVHmoe=", "qE1m7SF7pO3y", "zUqdvt==", "2agHWRGFoXLAlfv=", "3ZQQuqQe8uZY3s7=",
    "Y+AymzKPONSGQaT=", "1n2MeFqfGnN5j/vw5t==", "2BdZNoLjZOT=", "4oFDHiNX0BdK3C==",
    "hkpaiFd4q5iFEC==", "3Zte0J7GGxvKniV=", "6zmHVLt5Y5ooywytkfe=", "eoVH2+y0mxFN6C==",
    "V1Plkt==", "mXHI8+zjCdGZuCwJ", "TOaRLOjTQDaDRYUDup==", "+KBkoZcaYPIgJuOMqz9=", "cjgjat==",
    "it6wluNC", "5vE31ABJhoFTkpV=", "QrGk+wg=", "lFZ/5TV=", "TP5YR5Khb2bqGYLJ", "oeom",
    "4YIM6qy=", "q8km6eXGF8p=", "9ZAr1gdjXXrLC57CFp==", "9faZnCKw3+RBWdG6P987HMU3nYqept==",
    "ef+S/Bm6ip==", "PRQFoFe=", "VFvz/6g3XkpZagXCgoS=", "ElspTvFP/6TaGEMPVVt=",
    "nWRRa4q2R6Q4ArqjIWv=", "8YEE8t==", "fPIB", "zsB1bAJBNS3g2/oYfZT10p==", "97rbjbG1ZGOn1nJ0",
    "nfsrFAmpqf8R", "Z5arMAz3YfHR", "sf/fdC==", "8x8b", "+Iu0K1ryOMEm9p==",
    "aVUgWbgBn6qGA+aDuJC=", "1MDc6t1lXWNUGNa0T86=", "oVH/aWa4MJjdn6vJWiv=", "+XxBOHaL",
    "Ve/SChxOhdPq", "5U0AS4UM9BdqaHvukC==", "NK0PWp7i", "nlmF+pVbNVMp", "TTy2t+glA+6=",
    "Fc9yphihiGfk2OaRpP16MOG+pNdl", "WZj9a2aYT+LYudRc", "L+Kd98JqSWI5jEBIZxUNXqSmYz0H9y==",
    "S2QWe49YnO1SeWn9Wy==", "POvcomS=", "ELr2", "14ZLiC==", "x2FYBGoO",
    "RNsnUEr89u46i6hxgSs64wx0LfxbIuaE9+fMaC==", "xrML0wbGdTwAnsM=", "Z1/nglZ/hWji3LT=",
    "TQXeGhKR", "q++gD4Y8jBZoe0v=", "cn6Keo+D1xxvxWxRv92h", "zQCt290X4CRx", "VG5I",
    "AkjYoOdyubdUn4QbG+K=", "st8MSp84BuFx", "GZ+hD6NRWCfy7pt=",
    "Ij3pOuN/t/AMLFb4PEybRypnJ4O1UPF1HGpySp==", "btVFJhwp7fG84C==", "KR3a4JLm",
    "Lknn3cjghPUNUp==", "uv1Jo4j3TdSYIkqq", "IrMi7p+QE77dObUGUbWNlswt7QxFxMmx1p==",
    "/+gz/oCnAC==", "6ZdNiRKFTIF2", "GXK+QX6q8y==", "pEQQLs7=", "If3d", "sPa6Rcn+Ht==",
    "l5i7K79iCEv=", "5QNqbQFKtEXpaDSt7tP=", "zjDN7K9=", "1IW7Up==", "CZc0GiiET6HNQVlWQ+M=",
    "itIIE8NgaEcj4nylLt==", "k0eRXW+YXcq6XG0VMd9gRPn3R4aW", "GTMlTkLQSOaVa4wZCC==",
    "/L4faOYW/vbU", "Et1VdlOl", "ZQJTSt==", "dcAFwUfYHWK=", "PQmPDB2y", "VtYZPp==",
    "mg4en1PvRlC=", "kroXLRv=", "KonX56iraY7j4ev=", "YBurHTXFomeJ", "eXxStaFH", "Aq1iiZSAo1M=",
    "LIaDWgR4fXUq", "nM3MRng=", "GRP7", "5azJynwM", "R5RlrpGfkj6=", "TkOEdTiivwmNAAP=",
    "nTdfOlaV", "2KztrC==", "2/SwdkaevlQn", "IbLL+VLhAOQQ+DjrTC==", "ybl2bLs/IeQOL6g=",
    "lcjl9t==", "dkATBstRCOxX2p==", "OJgLXey=", "uBhgdp==", "TVeaIn7cqC==",
    "Cx6u0mOivMM9rE/DqpAE", "43yT8beE+4jX", "//sHHCBjhy==", "0lpCQsVjRC+Br+fhpTP=",
    "AWID1vdc0pTML6sDQLUr6VWeFNy=", "pN0FY7LD", "8ry0wkRJTt==", "RgzKs/Gkty==", "Sns1go1kDy==",
    "J8pErtPyAwp=", "ZY7HoOSioC==", "JS0LJy==", "Ibn00C==", "A4wcA4jZ", "RyBkJTek/Gt=",
    "nTRquW9=", "/fxeNuUh", "nw8xz0rq0oyTDYg=", "EQfZdRFBF87YsKYma3XiWxt=",
    "WVd6eT1weViwWTlWekT=", "m0vO4qKmqrCk2NYPvz3/", "MYn6u+n6S4RcSOld", "dNkIHlFL7eCg",
    "9/WRu3AUimfk", "8JWKnp==", "C8/VFn4bsl1QOZP=", "COccuhA8iVb6KEhWpiDP", "8Z3Lip==",
    "0TcgwEjmDNi3n4GEX4y=", "I1dcUb+Z", "kZRVnhkDOsI0fl8x", "A0XU2C==", "C+Rv",
    "R4awMOqXA6jyaTnyRZv=", "jWZpW0c8HuqOkt==", "73cRN5S1C0Rjxec2RNByXp==", "n+oF70e=",
    "zI662IC2n7nSMcQQmP9=", "MYccMOnv", "l05Ijc3GF5v=", "A5fvXy==", "4RdIz4+3AHf+U6QDwaT=",
    "rVwtNp==", "eHG5wIVV", "jDo8T56lP2VmxFK=", "2+RoU/aCI/JajC==", "FrUNJxhJfX25pMxb",
    "4Uz7Q+K=", "ZAO6QJe9yy==", "udQGakqJTJdKurqvakS=",
    "pf+YHqoEbhNAu5UkLpPhXfRuIxp0xUKll8zdsReHZUtTRqSpdp5jaS5ZES01j9KXpZCwXcT45tb3jt==",
    "QOdBQ4REa+LgA+H6Q4jdMJC=", "pP0j/x8tuf65dAaz", "YuaORp==", "5/9uNp==", "HshtB+sg",
    "eFnkCHucetCU1mR03uT=", "TUSZuWRyWiQbL4Rkup==", "VfoZ4xKfFa4RIF0Bol88ZC==", "Oolt1o4I",
    "mCC+KaC=", "tC==", "Efrs5GP=", "DmBRxC==", "pScGSGeWBgp=", "TByCQBQBh4KRwPAN7kxMSt==",
    "cdAB/y==", "SC==", "vUwid7TrEEmWFJv=", "WY1KoTC6u2dNIVgY", "b4UyCfmmycej+U7=",
    "GDon1FEsHvC=", "0zAt2oehoo2lB+1YqqKH3p==", "1qStjIMfjae5it==", "g1K3CzyVZZM=",
    "9/gyxDLULC==", "1L8XLZmMxMInFtP=", "TftREXEPiewr4g740BzYx5zANy==", "OFD0njt=",
    "DCkiQiWl3mlE", "SDXweFibIlqBPze=", "tuT2XPy8bp==", "ZdgHS5gv8C==", "etjPm/iOKsO9N9M=",
    "6RkLcCBMzZNu", "k/z/Kydxh3Vq", "nITVo+T=", "WMdL4mpTa0g=", "f9Nw6zAFVZJDxEX7",
    "2F7QkWewKnF+", "0vwhmLqZ/R97o16=", "6IyZPM/Tqp==", "MFPdsC==", "2knIOmV6",
    "QYH7lFedb9rmup==", "UkYRbWp=", "h4OEBehU", "BZYIxVnfQvSaNv+smP/Aw+BNWbiEby==",
    "HtS7fPux4vsp", "ZgWK", "u//Njgy=", "9cc8cXBjXZM=", "vQuwayWzEy==", "w6EyyYRyoEh2",
    "AEksNC+3Dy==", "LZTNet==", "cT4dBp==", "CYl8MJ15Cd7yrugjTbv=", "zIdLkt3YYZK=",
    "TDSkmoqYNPz3uFv=", "wUVv7azHPxlRPVFWVjWiFEC=", "xNFboOd1thGhP5a7AB881p==", "nYiqap==",
    "AiRY+VcvQnd+e6jdQrT=", "BuQIV8MwAC==", "EmkwFz8MFtugLy==", "udijS6eJQDdXM4jY", "aQ/J9bS=",
    "5y0JmhcxsaITOwyFJiS7Ay9ycSp=", "MEWV0rdxS3kK78UfB4p=", "GVadn6RqLvLFG4Qguy==",
    "85MkTjapxPD/", "2/g5lbGRk2V=", "H84Tb/56QgLbhwy=", "MJRcare=", "qoP4E5nlTcnq08y=",
    "3xZjXskP", "Inu7eCb4imRaHc7=", "MraTLHuMwnVNBe1mEuy=", "PhB/mRA3mmP=", "TYn6",
    "pmVshy479go3exS=", "Osv0ex/SHt9Wop==", "CRXOo/GGhh8DRcZqcjjcvLT=",
    "vFc+2+TIdXBB0Ow91M6ruC==", "+radRWdJu6iJe6iU", "g8soQQmf2GxU9p==", "ora7TdelaUwgMkQ5QC==",
    "YnXVd7vOAscgqRNggRu0R1p=", "0bEjU+yAvdw2G45tEHK=", "D+09dp==", "S6BBvPn3",
    "wYQh1ZiZ3nhLUWtRqee=", "M3C/yDEmJmduTKPh3TGuXp==", "hItDyhp=", "TbcjT4dvWWjTRDiyop==",
    "Gy==", "MOaES+l2W+QETDQkop==", "LzI6TLE0bYBQJr9=", "97YibCyCAha4", "DB+gpa4UMusfBy==",
    "m9D7waJGoEH5iTLgh3CWaq63Et==", "DZcntYnBGkDWWOK=", "LuysoBDJDvMeCC==", "pOJMNt/yJW/o",
    "hRgaNyWjiY9BKkP/", "a+HyS+L3", "vzkgZvIphHPQ5w36Tt==", "U5IbZ67PkRhm", "no5m+oU5jev=",
    "Vsw7oy==", "MOReoewR/wZB3mv=", "M6ig52NfUEp0", "W8ZdZt==", "QWrJXnDJDC==", "pRzaot==",
    "QnqyC8ce1l/wAcVNxdby2C==", "zRzcWuitJf7bD2x5zf9QGp==", "pGzv++u9hng=", "Ba1HdUupmt==",
    "Y0ITTt==", "KPRipK54+vN9", "R6glo2dh+ri9L6zCQr9=", "d9ffT5uV96ydM/WFK3AEcNeWRGwNyff5",
    "yJ6iA2pznQe=", "ogv1", "qa04NA8eIfaI/B/8FSxf", "2QEKOL7=", "Xp1KybF8Jt+Q",
    "LvRDa4d5aDdkAUMl+ig=", "CJNwxPa7qp==", "tmi+Hrir6t==", "PJbw+hp=",
    "aJMW3SDXd2+mL3RRgMokBeV=", "B09nNTCily==", "8uA74BfwNiNG", "Md1cYpP=", "DdH7uVFNWgC=",
    "aYiqap==", "fS2CzTJLHiS1TDUuooKRRqyhWEaQ", "my3Zewg=", "iu7gLYd0HJS=", "U+WZDc4AsC==",
    "zkOX0neS+E0lp4R45ip=", "IU6w85lsBOKd", "6FR5", "whbknIxh8SnWJC==",
    "W1ioVIBtSqi+ETIyLpUi+O5qFwv=", "I+HYuY1dTYnBaOnB", "Yw0ddJS6P9PsvbK=", "TC/qKhaWd8kV",
    "Xz6+IKazu1koKEY8", "rD05hLz6Ly==", "cGJhn4M=", "eqsSyUbeZjFT9AhG5cyKDkym", "S/cv4p==",
    "hNUdd6GhRb+wiy==", "lgo8kP3ZRTokv2tE+LV=", "uOn0a49=", "ukc0uknEaTQrRWtlRYy=",
    "PQVhBCXebmK9Gi6NPCS=", "YRf3AiieRs9=", "RXuHyZpC9+QXjAvqAug=",
    "TmyHaL+OSoIL5TTv8UNXgwgOzSH7gkTOAzpQut==", "szKongeVDouNbIT=", "Vpy2/7D4QGrPYqp=",
    "DP8t8wyR2C==", "kHDCWzt=", "qlfqNVwu0t==", "Q614W9FpmUV=", "gN+4y1raXy==", "AE1Oit==",
    "VLJqmm7ZSp==", "r35ZOt==", "0qvDN89=", "itDjviUnL+XE", "TsIeD5m32xZQOtAWgL28Pmr5U8Mfo0Sk",
    "hYWiiyt=", "a0WtXSuJNTxt3Ng=", "H7OoCCXLHp==", "W6zneDR6orQ9uiLnAt==",
    "JHOUltQ5mPpbyGRttVjhl2QY", "ARgFSoK=", "6II9CBK=", "VIc0", "l3k+7YXyH/zRnle=",
    "pkbfw5hisC==", "Fu8zkhA3yy==", "bhK8lJphRp==", "aeeyq69y7TiQ", "9efACddBpindPY0u5ee=",
    "QUSH+Vi7+OLKWrcm", "RC==", "u4ehO+P=", "/Awnxp==", "awTnGKLQY4mZwswwD43+",
    "r76QFy9dHmbjbIp4JMKDjvQ/", "p+GQL+rHmVXPWUyt3t==", "xRGcNjdUrf0Mlp==", "1HH7hp==",
    "ED/7NTvj2p==", "TYcEay==", "TnL7kIoZioS+Y7PU8t/zOt==", "Gkd1nkzjAiLKerSJQC==",
    "jct4tyNgL2t=", "L2QDebSJLOU/TOLqGC==", "0MfDEqCDwC==", "XvmG", "O5tuP92lzXe=", "m+VVGp==",
    "C+cOLWLWLrLrSniY+t==", "xRMR4E7=", "8DxY9tvgdNPQVQP=", "d7x6SC==", "nURwo+qZI4q3nTTKIy==",
    "LkY1YTz7", "WkqkunRdu4wAMrjhuDV=", "HE5o", "/Dion8mW4p==", "N5OwOD26", "g6ZrC/aQWDYV6t==",
    "AJ0gXQgAlzHY", "5bPqWqJDTZ5V2lP=", "rVKIvvPb6V7=", "NRaIbJ2SZ1JOCu26z1DcRy==",
    "CUqFnYqJLZQyuVq9It==", "rDM=", "t73MG/fAIy9d", "u4nZSYldR4QdubC=", "+8WuQgBPg4j39K9=",
    "AJCHnTLLo4L7C+dGMp==", "UDcgibxevrzG", "HTlQhmijNl36", "O/hfOp==", "HK4ejMV=",
    "OJiGwwJR7BzYcdIJCNBF0s1x", "dWpTBvzBFxf49Ak0CLMOat==", "1oUl", "g+FifWN1",
    "aVLNLYiFeYiOMvjmRrS=", "kB2XD/ur38Cwk3M=", "Yz1Bwp==", "H7PxM8Foku2LADjs",
    "MTg8xh5NYuHCMg9=", "js7ogxdUt9uA", "K9gbESnUx9l0p86pPD7=", "0SkQxp==",
    "OiBDGyBaf777mjr429v=", "XYQT7C==", "wkRX2E8GWM2Jjd9FotDYb1BeulfF519=", "QZCMqJyprKjb",
    "PeawZ1MB/ET=", "qzBqpsuPMZyOsC==", "iue2dby=", "Dt==", "IQCP97ibIQe+EkfHxC==",
    "rOqxORLMQUL9m5SQ", "YONnJm0kcy==", "V7OIUVy=", "4g+ddC==", "yZNcjp==", "lzzTaGwJMy==",
    "VyfTn7VKnyeB", "6vUR+2lf", "B3Jf8vZXFy==", "Xcs1NzGClDhErOPJneDI", "9kwWl2ir+3A+hJC=",
    "gxDL/iKekZy=", "Y5bTfkuZzQrUnbAP", "GkgBR2n/L2MJoviqRp==", "YJeGUMkug/ikfy==",
    "zRyDQmPuufimWru7G4Kj2cAyaO7bVNTnZ8XtGoxD", "hsc7AuClhFm9/1p=", "7ghvD94DRN/sTy==",
    "3OKdFRC=", "HMFY2t==", "7PixVGg1", "ZrNnwUrcSVmrdcS=", "RYn6CYcqukRBQ+K=", "QruSvkSu",
    "7qPFUHUfUiC=", "Wc42u8PgmC==", "lpnjlFK=", "33P3qCMt", "I8v26grF/y==", "sLq+vWB6ST5XZgC=",
    "ZE7R4DzBNFM4AqU3mu76", "3nxj14gfuB3r", "6USBVBZ8uke=", "IJLYWOH9AriieZcG",
    "fNOpSzqEFHYu13YK", "VagRvdNKnl67", "XsxfHFPvQmdB", "IRdHvt8tdoxPiZu2R1LFF8Go",
    "Fbu4TVce+lM=", "wfb0jZaLXdjN", "q89OEOYFd6+uJRn1LyPSey==", "1ukakdpDKmggDviknJT=",
    "YdoJbLXC", "wyZvqfaZVepuYbretpDSvy==", "EYTyY4FVweFHmxK=", "bYuRgBq6oC==", "+nxr/1oy",
    "dMZP1p==", "rrgZi1UzOOcr", "WR7WV5/zelq8Ty==", "EC5qoiD+qa3R", "JOAm7XysAwLLWC==",
    "XYCHlIA1at==", "ERMO7uPucAP=", "r5zjiJvF2ZOf+D6=", "RWlv7+9q+C==", "9GFd10iCXNe=",
    "ZCo8GnLz/Dg=", "AcT3K1AncIbF", "OpuTI9s2fc/JqBNdPp==", "nO5N/6E6", "eJ24RzUI3NAnKlp=",
    "FSr+Vaw0ct==", "dp==", "LdL/IVnYLiLBT4VHL49=", "0ic4+h8gW4e=", "d0Kv+5et", "IfP3Hdrm3ot=",
    "5ryOMlE/3uxdHFGiOIepDy==", "j48iCxtTyp==", "n4ceTiQKIvlUL61I", "4Q8kDGTEjA3wsp==",
    "Z1Ow70rHaPkF", "t1zHtkSZZNGw6BYw4quupsYQL/WfbpFSxQeecmWP47ZMoR1kVGJ56tHeRO4/OS172HQ7+/dG",
    "juLJDMTOFO2H5KCx4TS=", "yQqs8Hv9KEg=", "5xAGsQwj3VU9", "6GKnkyt=", "TXGR", "MxlhfAv/",
    "R7a+ZOXuyC==", "GGajLvv=", "fBp9mp==", "emE1rWS2nGpw3nZA1IRs1Sv=", "ptOokC/MQZJ60I/vyfGk",
    "sDaNsrS=", "AvHRWWdAIOiDLYz0ay==", "pR2gyXmVXe+tSSrYVTLHJC==", "IVl+uncRLYahovRV",
    "vBkkPpxu/Jp=", "EoxzlsRBPp==", "Jns1mp==", "ebd4aJq6akcIMOjS", "E7ZqDIt=",
    "cuQK5mn6D9lzLSqnallelrp=", "ZAVM", "ejBswwGF", "cGS=", "CiKAEaD8lGjIJx0M2t==", "wxIcCqV=",
    "LwIlRFsONDLDV7g=", "+WadrA7=", "TVdERVvyIki+uVzL", "JP2eXGqMdsFAfIt=", "3fjws06bnYb5HWt=",
    "VG1To5qWvJPNOxf85t==", "bv5J9Lv=", "wnJNfzdcKp==", "NH8yay==", "1nHEWL/BKCK=",
    "Ocrv5/tw7t==", "fakevt==", "lmxPCY33Rw+ijWpbDWp=", "l8jq6LWa+gfRRdHrpo1oGDM=",
    "x8oPKR0rfy==", "496JWrAvty==", "wBEE60ZZR7Ok", "YNoI4yM8Sih6Dt==", "TZaFMVc6u+RdnOLdnp==",
    "uNnJ/jA20m4JAbeLEZ0d0t==", "z/v=", "Ru7AFOFV", "bpPV7wJg3/xzhbg=", "5WDRGqM=",
    "GmI7Ihen3t==", "o/JtEwAL1Csx", "DpJSyT+hXb38orKnJIIeuy==", "CIHaRE6FfA7r",
    "DYQqSYs31hU/7p==", "gUmCujpcvp==", "V8/cty==", "itbKNX5IVI390VK=", "ZnGBpV1naF5oGLV=",
    "A9KzlhkGMQv0", "Je45F/ECht==", "cE0hs9v=", "ybE/hzbhF3K=", "a6lcSOn7",
    "AfXB6Bsd9I1MbWZRSGM=", "PY/K", "cz3Hby==", "pET8PyZtV6rFkJ7=", "aJLfk47=",
    "HK7CgXjAZ+BlqJK9C3k9InNx7jO83EVq", "Xv0z/dumHHy=", "RYn6Tklco+nBMy==", "E6fnLce+tCNd0fg=",
    "p4lqh1yw8Ge=", "jNuKv/9wmap9YJrWFOvxobIQLJVoIbSCLZ/J8p==", "DoEhOt==", "w20ZK2y=",
    "v7GBOUkmhDbA2dyM2C==", "ofUdjuIuS8t8", "ypmZ8Re=", "iIqN3kS3KMYQU9MfUZmS",
    "QWWTrYrnvBE/9L2AWA6BKzM=", "+a0Ady==", "2jSVosLHUsvEy5g=", "EHr5myOK6Dw3Zjf3Ot==",
    "Egx/njBQ/+Fa", "W4dCorjVAO19LYHCny==", "Tis+xShqV5lfduT=", "Ya5PNEGm", "SYzvQ4t=",
    "aZTHG+iOSO1YAbi6", "7rcWsDM=", "N33Db1k/WmE2ShWW", "FluSz6e=", "4X1aXYnOwlS=",
    "3Zq7Iuof3R7=", "zZAIpKhnFQ3B", "odcGa+j/eJcjnOHm", "3Vzhct==", "fJSS", "SYccMt==",
    "UAU1dmUpH+S8k7kbMW9=", "AddbGWajI6jHRTi/LOe=", "VAyXWm+XU/7Ovdv=", "T/ysxxg=", "aYiBut==",
    "ti8Gip==", "eK2lRt==", "YtuCLFzfoys1", "l6mHTzIV1K7u5xR+ZuM=", "MFVhO/NPzjPzgXAwtt==",
    "BYwLMSZ99jRy", "ALl1tbT7Y0t=", "n9SK+y==", "Uew1LnTPHmv=", "y8D4oWGHky==",
    "/oaz5mMVPgC/qkCasy==", "YoAh8Fy=", "CYGnfp==", "8psOIp==", "AVUrMYlXuOjG+vzqSt==",
    "GPvfmW5fXX+DIvIQLp==", "23KC9MaF", "/XfqxZJBTbJqHFKc213o7ZXy", "6oUlpd3RdWFsvaV=",
    "hPhcry==", "N/6YNhELIH4vZog=", "MN0BODaVNsP=", "gkBhMNNlbmuZ+n6=", "mEQV8tYpdUuvWxd4kp==",
    "EUabQ+5elbJYNtRjct==", "y4wtMD6AqX9DV9e+mC==", "+kSBAUiDS2LZLvQ3MYV=", "yt==",
    "5Qf+EIMMX1qjlzFOQlg=", "p1P6HzYhjt==", "k/281p==", "5QrjYI+WE+NUc7ILrxlQouIYYTYYT3Z2",
    "ADjbGrtloVlBRbpKuTT=", "Omxcb3QtxJSt", "09tVR36XyUdy6DrSDzwPCIJA7MUxAT+dWn9=", "K93G/p==",
    "gTaR75nYOC==", "2CMp2PY22ThP3y==", "aYLmecMjyQjY", "LXfftAaSih1gdMS=", "6f5CAuVJ/y==",
    "4FJIees9mhCt/q0Y9y==", "R4VrJMcymsC1reemc8+Srt==", "wZnUfuoQRC==", "5NChdoKbYPXo9L5npxt=",
    "1cIK7t==", "+DakI2L+GnwiIkzdGp==", "uqT7lo/cfNP=", "T+aZTUagITlSnVMZIy==", "ZwSMBnOs",
    "qygKD7zIkSAp/t9=", "zh3i8ODD/stw", "nOdBarncuVd/Mrn6W+i/S+adMt==", "LO5wyCYe+1PIi9lwToj4",
    "FZidmf1WUmxsZ+A2peI7CD6=", "8NY2Oy==", "46M=", "NJE4dkEBNzaFTEygocC=", "oDD71knVjp==",
    "F932onQe", "CUi4eYSHQrLZe+gUMp==", "BYKW9fewrHv=", "yK60VJ2fRR0k5j841uO97t==", "R8Ejxt==",
    "CtH7mWb9dfC=", "+VU1aTzES4aJuJc3SYy=", "LhEheq5eVfCo", "9oq5ADF6g0BFLv9=", "QLwzKqIC",
    "crL4gVJFCt==", "A+RdubRqQbddokn2a4REMt==", "WSAmQ6sI9p==", "VvQSBQS+Tur2",
    "M4tyaOaiM+RV+Dj4urC=", "QRRCQy==", "eWaTRYjXonw6TUSJnC==", "kCG5St+4Acra37O/",
    "sr7Le0km2EvqGfV1yByiOUHI", "NexXvt==", "KHWBg0jS",
    "I0gtxxOnx2g+YCMBZsY2Q0JGXI3772OQ0PvdFO2qFtiN/LbNX33lRSG0EjS=", "A2ccMvqRSJaVLinI+nM=",
    "+s9U89taQzmggdC=", "R6pvBI6=", "NOkffGgo", "pSNQ97RhyyxL", "E8i1fy==", "MkiBare=",
    "I8Y4QIAjaa9=", "QUSpOc9vEwlYKbtUUktWmC==", "EvSL5RSxzV6=", "RvH7aiwA+TTKnVaE",
    "otg5K2awrOrbs+T=", "qO1PxeJJy7Rfz38a6au+Mdt=", "AHU3DHO1", "CY7g", "C+RvnknKaVjEop==",
    "C6QSCnS6CUdnQZwnet==", "p+8PKxzHqy==", "h2M+u5niWgZs71yyovM=", "lZuze9dk", "O/wOat==",
    "PIJ28opudU87", "WnjQvNIT6KSV/59=", "jUxUvP9f", "HsMDWVVcyAV=", "PgkllkCksC==",
    "LrL2I2cCnkcBSYjT", "cNkyPuuCW1VAmKGbaHZo/ge=", "ESq6zgy=", "X3OJarQj+3z3",
    "/Cee/aJT/My19y==", "rKKbF4Eu0C==", "IGgC5Za9nkHfFzmufPS=", "68+W5o5JtptMwiyz/y==",
    "GQv6tuIbUC==", "HCSznRy6DWMYIW7PceMe", "yz7IGMm3v/C7", "MYn6SYlqMkjES4jv", "OkJaSeT=",
    "SQzxbLK9", "fvSe/DPdm4UWMzy8iF8RYWA2", "eGluIbKE352R", "7gGf+AXrE6KlbDTRtKC=",
    "FUK/fqPibrEM9PGlIC==", "wiFg+le6", "STjNLZC6o2tBGka0", "CHl6iQiHhr4Qb4T=", "+MNVJH9=",
    "s3NMy3scRT8H", "RTRC+bdSn4jRaZa2Ry==", "9mW9kd1Fly==", "LZw+IZMHIvCy+Dw6Qp==",
    "6DEVBhOr4c+7ERt=", "IgCLDKqiM0gHIrLvAcp=", "JF24oZv=", "ypZqbN1umP04rt==",
    "0vLo5bZ880QkYFe=", "7oLkbC==", "pHt/k0ecFUTv", "74abOIUR2y==", "evjSuncQnb9KRndc",
    "KOhmGqaIfp==", "VEoRyUK=", "vfCuR1bIeCPejt==", "SJjdS4RdC+l7TkiBare=", "/KIA5+NBXp==",
    "vlNq9R8U1po9HuV=", "JTDa5p==", "G1Eo/OsZ", "Tmn+PPL8Rmi5U1wV/XYdzc/copA2OuskUA9aep==",
    "TUHFiMxe+C==", "bPtm8t==", "R71aph8tCyS=", "MJRBA+Hb", "7CL9Yfy=", "ToNcMwNguOp=",
    "BDv00p==", "aaX6/ZVFSle=", "HeJ8pJg=", "p2ZeCMrmet==", "FIePPKpJILS=", "R4iUA4wTuYz7",
    "J4G/V1DRZu9=", "yE338AXf6y==", "ciiuVOoKOEcwoMlyqLr3R66=", "DK9r56Lq0tm9lyp=", "0xinfC==",
    "Z+1Wst==", "1jceeAg=", "FdOPHDmRUSN8", "YHSkUpWx4PAHJG1AWXNV6Huf", "awYRiX2onzYB",
    "I+dAMUaFWrcSLWw7At==", "Wv2IKC9=", "zxQ/8ho7v4Zgn5oArmj96C==", "Tm2Ed6VpsIFCd4CeucYDe/nn",
    "dVV3fyHjdt==", "P66yDqV2", "aYzBAJLyS+Ld", "eNVLx0bjayv=", "mvFaJU9=", "+viTnYgYS2dAn+RV",
    "7pFAQH5OPhnO", "UKIKNH0YJRW0k4g=", "QGVVv/zViH3XFLfsinn1it==", "OXyNXFg=", "7N7Aoy==",
    "SOiJATjno2cvRbRA", "jmY1r8tS7IdVJuy=", "QOrDkt==", "mH9UR1av/ST=", "18kVUUgO", "4q+4ot==",
    "a1yRS56jdDy=", "7/Hm8iEGspm4Ej/E", "HXa5Yr4VA19ZXR5l5BWtNpxYwwdDTwC=", "+rQAIdQ/MTz5nURA",
    "KVm0FY53Y7nU1KP=", "W+tCn77G", "IuGs4GsQ5t==", "NXOVOgariH7gqHzb/y==", "akd1QTRBuJwvuJa/",
    "1DIVEp==", "c0EMMC==", "AIK=", "bGK1q9M=", "W4QXoOz+Ibc4SdQNLt==",
    "Zq97nbEqdck/SKindIZEt5wF", "aVz4e4n+SUa6STlN", "fhKR3+yqKp==", "cn2BnRW4urmqNLM=",
    "Kw3MlzAM", "XS/evAZI", "c2qGdD32pAC=", "tmisxy==", "eZLUoij7IJwYubciov6=",
    "0ull8Bd+ty8Gyp==", "naXOnA7q0lnS4p==", "OaY8txoVAyIhxrtVFQV=", "o3z+5m1JkNxzm+ZLey==",
    "x49L7C==", "o4P0ypMJeToZWAGdTC==", "nTRbLnj3nbRjWvlIut==", "JW7nBlNH+1MCpt==", "QuVb1Ep=",
    "GYT=", "0GqsK9QA2t==", "v45gPujgpy==", "xf6G", "QCcS8VboN05hf5lkAS8W0XHnEqDEjQBH",
    "1HeQyp==", "3JxQiK0dvmCjuQJW4I6=", "IvHbaijIoWaYMdcNap==", "ca6PRzuJ56JXqC==",
    "ftFp16QbI64DSiqB3Zy=", "bV/TeUtiGZN7", "CWcOnicEAdLNRrR1", "eYi0eVdle+jAukqAnUV=",
    "dNujnxHIry==", "Bc92qHHZUkso", "Jolz55Znn9fJeC==", "uVvvu9rzJt==", "LNsYdp==", "EzSh",
    "LFgX5AAbZ1qggBikcJy=", "Gh1V1uq8Gr8062QVelC=", "F/uLwVLWQC==", "ypz2psx60RfBi0T=",
    "GsqzbHrQCpFFIINQ9xqjsgHO8k4c1p==", "ta7TzishQBNj6p==", "yrDHKvV4+y==", "Dj8I288HCJy=",
    "iQgeKp==", "z6/np2XwoW67UBP=", "1/txHr6Z", "MrQKCnaQoOarLnwhTJp=", "wWJ1qTxTg0lh/y==",
    "Cjs9YALCmjnHSi6=", "v3DeiF6=",
    "Rcr7EPI7YtaRc9Os7LdJ1fXhIVWAi5aX/X71fgGESkjmak8PGFscQxBiiRxtTxwHY7iSFA0WH5Gviq/ScGqNg0Sper2p/e0Rh8Z8xJojQifc4Io5CEqq3u5vZQw3qxsv8C47zvel3lat4i2uzInLzWDq2GYEjxuUNC==",
    "bB/Q+qE4dO6=", "evjOTJdIoiTUe+cWC+6=", "GKU2D0kziOpE", "JfFtGy==", "Tkn6MURcSt==",
    "QoxdhY54KitAN+UQtvTGrGfg", "XwOXijFCPy==", "mAcZ5gTpvt==", "J54a5C3u8BR2T5G9YXcXMC==",
    "gWHl5Fre+CSd3/oahC==", "B5PQSy40qt==", "mc3M1hu3RHdd6qv=", "TXUGF+6H/tY1",
    "nn9Kok6lQdqGoTqB", "FKgewtRGkJe=", "wD88ixTtZvv=", "vqR6", "ChR75mKLyOqZ", "9qBmypM=",
    "oB00", "9O65sIC=", "cyms370H9OuZ", "CYlEuOT=", "BJ8RC9M=", "wOF5j9ePdp==", "tZe+6z0b",
    "Qxv7v0btKX/Af0T=", "GVlBRdLgSnj7abwee2p=", "ZzA4puHx", "ua2jrFZKO/Q3n3ecHxp=", "k0BAbFwt",
    "DaIXqC==", "ysTOcU5LYYC=", "/TgvAEBc", "yxiQXYz/cJT=", "2WfwSSHQgGQ76KV=", "MOn1uJQd",
    "Fmj89t==", "/5V/ub+6y3O7pZ596M72ap==", "G+ceu666IDjZTrqkSt==", "UGS6F+zVb7yC", "I5PzTt==",
    "RPIMbEea/ntFA1wPyHQc", "UziWP0lyXgZGTCW/Skg=",
    "V4Xj851af+EfyANEn6RM1Xb2LayXHfCbXtgmhBdWKVV=", "X6Q+Su1+nTuQ", "iqr3CjgN1pYA",
    "GmwHdCiVsQwIMY0g", "GgXp", "gEZE5gTyfERdNS7TFy==", "L+aqLdaDTbQynWQ4Aiv=", "6DSyaSyK2MS=",
    "R14PW36=", "uwat6y==", "jnXSHL5KFA6wzTg=", "eTSThu2zCKp=", "s+9iTHvlWBRo6FK=",
    "TdLHRrLIMUcARvd4", "XS2NTC==", "Lc7u7C==", "akii+dL7RUc7SvKKGC==", "dbeXdk5HUgt=",
    "8fbLTSxPcJ0R1hp=", "xjW2WtBAEb61Ci9xp0/i9p==", "Xv0KDy==",
    "A2VwKT7XXpxI5Hm4Qd+b+Zgjf0kbR4C=", "+V/rjPb+dfXXDppqH1SJfJqFvMm1j70lEsFost==", "FtDg",
    "qBFIl6B7GAP=", "4f61D8WM", "KTVBazVlNgp=", "zm+iEg/KvfM=", "NG6cBMFu", "C4j2Q4nZ",
    "oU+tbQvD20M=", "drH+nvCpBsCe/0P=", "ligcHZrsvBQr7y==", "MgyFjgUGFC==", "krGukgyKtp==",
    "EowR+y==", "fmBOFDlIsC==", "sjkzpp6uA1MyIIT=", "4PZGXYO1fXix9t69FGuO3UzZPfMB1D0q",
    "+hYkKeedh+Kd", "QpVYhrZ+Du9/9xmC", "6+kikZbRT6CZIC==", "NS9P3cHPogNk", "FCwevQxZGSTZv8K=",
    "oWn1Mkngu6T6WiSUMZe=", "czgdACVtyoUFvp==", "HeBzeNIVZt==", "uHTXHINNnoa7aG02y/C=",
    "4UzquORdop==", "qmcYJfgXuH6=", "HJoLzpvouUOMYeRUDE0KOTUzTDnPVSv=", "cBphloc7Pre=",
    "JYoEGhU5s4vH+1ogqm6=", "YJc/4y==", "LkRYAWwQ+iQjS61w", "0DQ4Kh6=", "FY1q+y==", "cQWvGy==",
    "WoIBP2ftBHWc", "4WxD03x3uv/YvNBp5cMswuK=", "gmonnj57WmedFQP=", "HWw4sssCxy==",
    "IUsLqkSd6by=", "WQ7aKhjMgzpYdZC=", "jn+uLy==", "imLZyy==", "z3sZ3Kr+eQrWvClYluM=",
    "SxB1vy==", "Hl2IRt1on0UknPlspJK=", "cmWYZEJwqBKK", "ENDyH75k28e=", "kPeC4ANWcSoE",
    "slRGYMp=", "yndwB/Ujo4wDJaYciZKU", "/P2V8GK=", "ajiQ", "ESsX8wd6+y==",
    "WEJyZn1OTSzlKsh6v4p=", "o5vJ1bj84IC=", "NnTXVkTsYKAqicT=", "8Gu9ee0g", "IsqmKEOYJqt=",
    "MF7pA9C=", "d/cTSuKWlt==", "+6yVoze22mymaqt=", "7U7bWJkhNRbSQDjMHZkTM4vbkea4",
    "AOaHanplWO9yukccnOM=", "NdUT3Rv=", "b3ySA2EF", "aAUw", "0iSMat5IHv5GkbBOfUaR", "WDiG9+v=",
    "AAHYvaPsay==", "mAfGYm9jfkD9jZZF2Ma7cS+FdiVOot==", "qSmBv2Lu7aj5FHCyXUwG2gsabvqTrB7A",
    "bY6JF9Ca0w2R9v1gv4K0qRKpZcQXQMT30eg=", "SQla8u+RuvzYB29=", "7/ckbOVY6eB+", "yQrziLzblp==",
    "ziFW1sg6JQlAzJP/", "R6iBAbMZodRdnYn4", "oY48tOkWb7K=", "2siD6nDWWCk61V7eKy==",
    "GO8g0kIFmpGB3C==", "3vnTniwhTCG+Mt==", "nOn2akzBey==", "EMEAD+KRafcQsQAYwW7=",
    "f6Sn2nI86vKUjrbpVpAPBLcQ", "lrfVP666", "dti/iEsasTv1", "q3QkHy==",
    "4nJj5JylpLGiOQC73l3H4/3RqNMYMKyvQHsmdt==", "ofOC4BZJnC==", "xQrjPJpUwlg=",
    "Zv7HLXww9QUj+mnqzp75ra0E", "lMIcNy==", "EtfkNfNPo+K2", "fjBify==", "iPgmnH3FPC==",
    "AVRnu2aN+Oa+uJaWQp==", "LvCZTOj+MbMyAT1r", "mqjTrakLsXIQy9T=", "F/N8BrWA",
    "xlv383dyfCAn/aS=", "SbYjcHy9QHxuQbV=", "WdCVYp==", "l5sJuVKWc+BL5LT=", "w4yuTKv=",
    "3BvciYwJhyzye0QIaR5SJt==", "0vNVxPGo", "7OVT0WYb1fTy", "RYoJky==", "RYn6TYnBaOd2QC==",
    "+ni1LYU9oveHnZQY", "QcRTPEyriIyAqKS=", "yEj2AyGbwWmWsEmcKxJq5zT=", "nbZD9t==",
    "SWwKAYzhM+HcurdV", "3itPVECR1je+cDM=", "Prtg6wZHaPP=", "QOzBu+i6Wbn1SOnB", "/1kx6y==",
    "Xezx3G/JpwO4", "feJ8mbvjIy==", "ebeBA4aro+iFeWcT", "usQIgnsuMBE0", "7etHgp==", "rSP=",
    "t9uFgMGERXY4gC==", "VOsSRLPeoAwTviV=", "4FhcK4Y9", "T6UHuDLdeTH5MiCHLiM=",
    "3cEtWProMI5zRqe=", "9gESFVS9iBIGay==", "vcfICp==", "AYJbydxRw1e=", "NYa74YH9meyKd6Df",
    "KeI1GCfBq7w9", "VqeTYYcyqj+AnJwWVQgBhP6fwHHh3DC=", "I+HZaki/SYT=", "Wumtg1lF2nwaqtbG0y==",
    "CJnC3y==", "ta2Gsj7=", "DIPGokvbecBv", "WYj/C4ajSUw7SZn3Iy==", "gKpcNV8BmdeCcC==",
    "8qNpk6vihYjc", "A4acoVqnTbL9MvL/n6K=", "SNBQ64VGPkb6s7p4MSNcAnkr7C==",
    "aDpKTOR4GinenJqeet==", "eXp+Pt==", "Cqm69QBkfC==", "qi6O1Ov=", "7ewpi62zjFP=",
    "MtSkW736TpZDrt==", "qYgp8HM6/C==", "4zpJYCLgHwV=", "aCti7WAVKxBF", "bZTAExxEDt==",
    "WOqgTvLkGre6eTUVM6K=", "nvzCuWnhordwIbn7RYM=", "LzLIjv5BjVwKxYN2aqP=", "3IVsuTy=",
    "ob/ddCQMRav=", "JGNbfj9=", "oNIMtAxF", "S6nEaYvK+Oz9WkjYWp==", "VJpaD5patC==",
    "6sT4FV7X2LUnkOYnlqv=", "tuSgNGrdJNsKk7J57a1D5wt=", "MrjqubC=", "CCQzowHcqmLS", "I4Lw",
    "+BrW3UPFSJ7h", "A+U+e+RKWba+ercv", "Wsio/Idl", "QYn6QYn/at==", "n+dWM+KBobdcuTz6IOP=",
    "4z/spRK=", "fgi1cZ4kNt==", "QOlUornZ", "27l/D1q2FDZpUPfJHKe=", "iLop/7bTVjA56C==",
    "WpiSbgBYe/QL7/M=", "g57x", "Z2BhFYoKw5dM9rt=", "o8amyi/cbHK=", "2exrfkT=",
    "Tj0KCux9j3WZSmp=", "xuhSNI6aLUueOjN9VAEfbye=", "WAsA78FfJAFagp==", "mHtXr+St",
    "rA6VYPlRiuy=", "8oZcX8pilsj74ae=", "Gilm0J0cl2tvT6biGy==", "/qx3UTH3tC==",
    "54DoO2UIjBdjOpC=", "uPuvVmaCrt==", "Bs/v2DlDYK00B80jDC==", "K++BUSqwfvBBageQ5jL3",
    "820JDJkhc0D8", "kJZx1GzXClP=", "vbCuJ83l", "MgRD4Q8Qjg7=", "6I0SK+nCr92iTC==",
    "MyQDc5eQRRrxJC==", "Bp==", "1YBtCj83FLXAOj9=", "LjJNg0NI", "sQgGN4Bs8bhJF+e=",
    "NIDNSfQH/esixEv+ZLTjuy==", "mGp+mvMgbukzft==", "mrA91hiQ8C==", "jS65c5Ti/TRte49=",
    "2l0lxrfHyBO2krv=", "hqwuCCSHDn4LrVv44RyT", "Oe90LC==", "VLoWMfdIQxC4Y6Vb", "LFVlIZlrYt==",
    "va5+0jH24SrTGnXfmR0vEC==", "VDVi4t==", "Yj94Rj1BhPSC3p==", "u7+dnoRjAaSR3cK=",
    "9I9lpb61sp==", "uH7jERUexH5E", "hSOpDH2bq1B2WOAUNh6=", "Cbn6akz/edny", "6c8JIRN5C/oa",
    "YOvCvJUkOYrr0Hp=", "dXyUOGP=", "l+HxK8vLnA46ri9=", "ZuK3w4K=", "wHR7QhafPE7=",
    "8qvYBGm50ZMd", "WIp7rBwNE3V=", "lfYPI3C=", "9WfUP9iwdQQtU72SMsla96XTP6tjG8p1Xt==",
    "SEH74+t=", "E0DI5ae=", "lYN28t==", "xDqSiMpkJ+V=", "UhZ+RLC=", "sEuTt3iHdIFOZt==",
    "Wsemnt==", "D5LYAifJYY7=", "cuAXBW0eL06YDAP=", "nOn2akzBet==", "H4JPumpbOPS=",
    "YxQAfIKU7S2v", "qHIKpcxBPoeB4t==", "o+U7/C==", "XOqjP9Qd9T7=", "QRfBMSQvzMhPly==",
    "lbrnvJXlj/fn95gaVda4", "iRbOUiv=", "zup=", "oNmOhfe=", "leUmmLUD/cemToM=", "aikKgSfsaC==",
    "2DTT1IZt0BIO", "C6QBS+Ud", "z3Ij7/RHiOp=", "TriyC+dqoOq+QTQy", "pAx8Irg=",
    "TYn/QV1doTnYQ+H6", "iVfP4Tvsoxd4agql", "nnLpaadiyy==", "iq/lJk3jk+D/xC==", "wxCGmuC47p/b",
    "zsGAQcVt", "akiBQYn6TOn5A4j6AVLEa+H6", "0GxXgm19bC==", "Wvn3aUq1nddGT6Rw",
    "+kz3SlWxe3hs40R9hXhnPZAb", "9wCWd23Va7yx2xBjbC==", "5B2DT6MxKz8IlF74sQV=", "5uDU8ZLrJy==",
    "RVjkobw3uvgBTiR2", "Ni2opxMOEik80Qo8ezJoyGV=", "wWwety==", "nULZSvc6IbLULnR3",
    "QTzWevKlSUwIuVL5uy==", "jWpsSPV=", "GcNuq84n", "nV5FY2nkep==", "/fWEPOteuFt=", "EXV/zp==",
    "f/9wQiryc2M6", "VmcFkGftO1ah", "nnQKLbQDQ6q0QnjiQC==", "ID9lkvLZZuLx11v=", "vFoGigt=",
    "7Q1W6y==", "JNfyoVwE", "MiqHLUnOSdjDMYid", "BFAW/C==", "pK4uZnVU", "mXn7", "4DdwrsnWwC==",
    "blZdtbCiie5BZ0udbbcmlBmS", "cIQCdJIibxMWUjsPUWv1/NB1", "qcWTndPy034fYCF50qT=", "acrp2y==",
    "V3weGAP=", "RYn6TJRcakT=", "21On9/7=", "LVqwAvU6A4dAIUnIGC==", "KebxJJcqdC==",
    "kf+WilZPop==", "SEDBno/h+uGBhc9=", "MmG+wKC5+ze=", "++HXTnqduvHVT+1Fuy==",
    "zIuvgExJqztXDYcZ+y==", "kCXdOy==", "r3rvR+eP9LPG", "Ln+X+VI65HsL2p==", "lxi6Vijzuht=",
    "NoZl4cVd3zw8XySPX/scGR2cXt==", "Uh0UGcSbly==", "omBzHsX9ot==", "A+qER+nUWij2aWRme+K=",
    "eYGzDVNhy9C=", "PG+L1Xg/iVe=", "rARlorjj0AT3", "e8QtmgYhLhHERF5KcEemoD5i",
    "dc6WDWFbDrEcLN67lBjrRy+lRgjTPGM=", "Jn+v+2k9iy==", "Il0W1PDuvp==", "LUnQoWiD+dQUGWSUuC==",
    "SbjjnbjHMidwLiRUn4S=", "LvzTL+L3u6tYekqGCO6=", "ZdZ4gD6Gwp==", "o31R84PWnQ8Aj5avmPIebrp=",
    "1vD5Fp==", "YCCZ3dVT/eHHyIRELxv=", "J7XQicXC6C==", "aVfqmV6=", "r0nNTwV1", "gmXomtzK8t==",
    "UWOn", "VJOADM7CPp==", "GsBHEam8+t==", "Px0OsfTWkmS=", "fMijPcpLEAsp",
    "MUaIonwHo2TZWinSaC==", "6OV=", "ig7W4Zy3AayS", "q7UplBoc3Ij0", "I+zcnDcdLYaBIbT6",
    "+Wd3cFJLpt==", "EhNidp==", "YCv6n+x5St==", "3epfMS3vPC==", "aIZ+mXCflC==",
    "ANuOK1ERz2QauH5ePIc1", "q7cyXSQgfsa4S8f0I9WbuhlUygwmCh81jgotpt==",
    "J+cBYwQRUJRRRFe9YVvfq9MTXrgVUlp=", "QRMyCXZBoMB3Fqy=", "Y3znbjXGbrNN3t==", "uCW0vhdggp==",
    "UEL9fo47wPgq", "IdLhWvn/SYzvQC==", "FfmX", "nDDcvVJjf+t=", "nYiqaVQEMvLgA+lv",
    "fY+liUCxLLwXlt==", "cU9ws+kYYjP=", "HjrcDWM=", "AHqTCE6=", "tXw4Osg=", "GZmeiC==",
    "qzW7ZVsR/AX7i67Hf06=", "7UYZ", "15M=", "Ivo4WBo/GYyq", "TxYNgF3YOrbt7C==",
    "ukv/ierTAPRWH/t=", "RK/qhj3eSaF3xxugOi9v2EK=", "TbS6RkqgIVQjuknhut==",
    "h9S77SUyCQqtX1I6aY0kNy==", "cdENfxv=", "5o77T5C=", "CYz/uOn2ap==", "Mg7Uvkwdlv0WED6T",
    "RJLIQrglQOvyabdFa+S=", "6xI2uWquTyK6eyACwSYPUC==", "LvU5IdLCAZLKnkdETYK=",
    "2QpyWT1UFJAJdXYUMqqnAC==", "Msd7eEeiFp==", "hw2n5ZCp1t==", "AKsA8B97nMYIoI7=",
    "U/uHX1oxeQy=", "uUj3uklNWVcJR4ahRn9=", "Sbd6QC==", "SYz/SYi6", "Ira4ornhebjLIJi9Tp==",
    "ytfyZp==", "irgt", "HRfyuDPtzHT=", "lnkosWtwOlK=", "pOL/8lV8wcpElAaunvP=", "KHjSCKM=",
    "4mh7WC==", "nki1MknB9VRdakn2aknv9C==", "Idi6WWVHCvUWQJdOnC==", "akd2Ay==",
    "iBFx/ZBCvPFLdE3aHXxdhWDl/4mpkCv=", "SDVcJQ7=", "dKc99Up=", "QYi1QC==", "+TwaMCxIvezA",
    "tQfXAWyR2L4CSfT=", "XE8xu6Yl", "q1tEtp==", "eVH6TvlGWYqCarwRMDT=", "wk1sUC==", "Dy==",
    "53PStte1", "fASNsOBXiNeiHkUNqy==", "y0Jn9SOv0C==", "1+Sc2g7szvyx", "ZkAoooKF4Hp=",
    "sOCvnkRYMeS=", "wnjZwSVN/p==", "Svujwew9BdBFBcr2WShMFC==", "v0gQsC==",
    "ycdewxD89IPEl1n/COaqSqH0YGhclN/+gSAG", "LeZo", "QYn6akzEup==", "EpCu48tq", "A1E1",
    "qNJq8p==", "cPb6O7+Y6Nli", "xNyPf2V=", "W4QcAOHdM6j9aTH9u+6=", "hZrHusjIBJC=",
    "n+cneULqa+c3oT1U", "GxVPIVp=", "ZdBK2nJ76wUW1y==", "WAj7y88tSwNO4S6=", "gOWE9yNfdJQd",
    "TPCz1Wsh4+M=", "tnFRf2OPjo7=", "", "P/XxizM=", "0XtrfJrt0t==", "+uME+gc+wrE7AFFpPp==",
    "1NZvfqB6ap==", "5V34YlsIv//WHOV=", "X87wuL1L1MEu", "ggDo0C==", "c3GtLy==", "TQp1",
    "RNIcxxmBx5ekuadB3y==", "hxYxqIDXlC==", "gb3kAuV=", "NijYDIzq6aS+UV6dUV8LXy==", "WogNyse=",
    "iwcY8p==", "ru/h4gt=", "u8IQAUg=", "awKKcUWodt==", "RLYrXB7=", "MirLpPtJ6zyRLqp=",
    "fnKRty==", "JY6A5hr4fiS/", "Z7Zt5Rehy6aEyPXmKC==", "okaXL+9YMDjyS6zK", "7kgmalZHHC==",
    "7x3P/bYf", "vAoSo8HKh/WOsqsrFa3eT+K=", "nbajenjYLbqV+VRIMy==",
    "6XDZHEqjQw65+p8bnRsBTvnzF8hILwka6U+3", "HFNptkG/x6M=", "jKPDgt==", "Z//Vz1a7Y+V=",
    "e/1HDk3MYyg7GjN2uEnR9kscjC==", "O0XDDIzO6BK1", "RVEbzqIx", "gy==", "ko16lCg=",
    "3/8EPluLNlMM", "GpAspEJkyHA2", "702oauh2WCkB", "gvSS/JjLgy==", "VbM7TwhdwJohyZbzR9wf50K=",
    "o8Ogp+1+jt==", "TDRSAvnSAdiTaJjcWy==", "ukjwu6dAevR9u2iBet==", "5TcMG9QmVMKho+gLXu9P",
    "iD0F95m1LwV6braHJVe=", "Y6Z4XYv=", "QZSBaZdBuJj/oVL/eiM=", "Fdd//2i6XEPY", "9dfJsnod0IOM",
    "ezr2b4rsMdW0RmV=", "/Em4zmS0F40Y", "2U2HNDa7", "C4RQnvnRo4wbuTglaC==", "QC5QI7wSBUgGly==",
    "o+190FrHpoTIgxvvcD3quy==", "t3n0tCNSek4BKy==", "UcVOtt6+hC==", "RrCHQVL0ovlkLUnJ",
    "VEiFypgQ", "WrRiLDd7AkCHIJjTWTt=", "agEqwyT=", "SykalIurTpQyCDp=", "JMoUzDs1gr2yooPk8ZQW",
    "4IiAJaq+12Io8wS=", "Prl1NI4ZeDp=", "2CU327nCrRrp", "CZjH+ViWLYQFTbL+GTg=",
    "s7YN9hDl/rDL3E2F0M9=", "rgfsLt==", "uD9=", "oAzbQkp7lbj4", "ra0OPgS=", "+tkSiLMs2lyGcXC=",
    "+/TWvfq8Cy==", "Q3ktwp==", "C8QBLlDQmVFf", "fxWDVt==", "Txh+xkt=", "NRh23KV=",
    "C+TJU1nZkJlC", "BSW0", "YPV+tfRNjunE", "RhRheDYz7uxj", "tjZKXrFS0p==",
    "LbpJRYllQdel+nwwG+T=", "otJ9djKJtbP=", "Za9MjJsY", "5DZ0Jv0PZDZDNguCoJz+py==",
    "AZoerfGvoogJOi0oV8hXz6RznjOtGRwspot=", "iyfHRkiuny==", "tgWeRIbrNp==",
    "z+PaCSetELaZWln1UQXJ", "MndFMv6JTbRKL+KKAYT=", "eZRFeO1WWJw7a2Qm", "WtF2gv8xMC==",
    "C1/ODKXDiLLeUD+pjk9t0pEKJmjRb66=", "vlcLx9CV9t==", "uDV=", "DNRiiBfZyjbIRD6=",
    "+nw6RnRHenCKTJn5WUM=", "BXaM3n3s", "EJDin2WX", "yh6dCv0kMbp=", "91xI9t==",
    "ODV5Yy3ZyCcxcy==", "y9aVEt==", "eFuiTabo0p==", "1s0u3JJJmlepyyv=", "E3oOl4gyQ8noUWbYVy==",
    "BDQZ48T4NrP=", "sXxpKvti2y==", "xU0jF5g=", "zfiRft==", "iMQpD27Usbi5PFkmlp==",
    "muNfIqYf0nQCGp==",
    "O03qUVM9cAtn8mUbgCGobLLCFHhCjZDIX6NfcOb8A09nDOiLibHLd+eKens9bc2Ogq2o1d3vHmj0a/tgtnK5dShkWPO9XKRoTcL2WDn8YEzBwUK=",
    "oIBGeK/lry4Z", "KGal/y==", "pbuhkp==", "Gt==", "0yyv43vW7984dBZozp==", "7+vxk79FGC==",
    "eEdcgK4/t8ZK87haS97=", "8bWBVd+jm3gCwBM=", "QQ273TEWKoLzKetjEC==", "yao+FLimAjEpFpC=",
    "ftgzUp==", "Sk2s", "unqekiHU", "DHxXrlSI3PtRjVaGMRgx", "BKu5VFH+BSqZNve=", "JF1umL6lBrH/",
    "NvAk5GQ+puVy9HjOHiY7/MX5u2Z/", "lGhO5l5fcv7MuY062L1ywZ5DJrrxUKL5D9M=", "QSlFBEt78xj04Hp=",
    "wahjX3t=", "XIlr1DLR+t==", "sTdH6G3vWi6=", "LnLAnZcCaJqRRUq/S6S=", "X70/tB3mUail",
    "5vbvT4nq", "RYn6RknZSYn/Qki/are=", "MYjnQDeUaJCyedq6At==", "eqk4", "LOidSJimG+PyuvQbLTK=",
    "S57F1rl0hiZH00g=", "obWgxaM=", "t3Utt9PXRC/cg8qnLV9=", "ADIq", "bbuwKDCSst==",
    "eq7UGCzPZays", "i6YiaMRzby==", "hixxS2TC", "lnXCF5Sgsye=", "TFVYHgj+ztV8BC==",
    "V2pMd8W1sL4e", "HIIXoGOlBNKtpo1xlX9aT2a+", "gVCygTGd", "EZTf4pmJ",
    "tQAMvsa8N2WHM9/EGRl7epK=", "I8bEHR7mGRHYAKvHRxP5", "FHoJJc7crpSnDyWYm/7=",
    "7prVu17SQ3o3bffO79QH4p==", "C8xPdy==", "Dp==", "Xn+1H6ncBt==", "LQnoGMSh",
    "JButzmDj3YgLDLSTGlcs", "X27Y+p==", "CAPsmmnYaSwRPjcl1F9=", "2o8hWZccXp==",
    "jzRW46aMu5yin+6dNC==", "+U1M4t==", "QA87Ay==", "jFnsPp==",
    "WCjipghk3zNl/6ItMEmow63IS+Pw0Q+CjYK=", "KZR0hXVvPRIzSC==", "DMQOoeGCv8zpq/6=",
    "omaq9cPq+cdoxqox8hr5jC==", "sl6Bgfd+D+USLQE9J5e=", "2HvUUjxxWmuXExifjozcI0oi",
    "hcLWMNs+gYK=", "CZLITVQSadq9MklG", "sChjHhCOLt==", "ieVtz9y9AC==", "j83m+Tp=", "l5U4/tP=",
    "6NDl4Ht=", "vQ2PC0YYYJCt5S7aRC==", "ZqdPWgm5iKt=", "ebaJCdiRAdQjQYcR",
    "Oxhslut+tIqlyKZ2vC==", "IZw80vWTwL06DfDInQbujwTmDjwbSECSm3gRbCDhtURjLr0PU8MIW2p=",
    "xmnkmrYhDqZvsGjccy==", "grkMcdbX4V+vMJUAkf12vwy=", "PsOFB0V0zu2c0VaL4tgyH8S=", "6X686u7=",
    "0c/Fwy==", "Tl2vTeV=", "jBLhKC==", "zG7c4LWrF/jm", "riLHDh7=", "MYF40Ho6FHCAFIg=",
    "QZsc6A9oHy==", "STk48sqr5t==", "TXSbL3rBMULhwYP=", "3q4fkBkXDqcvyIe=", "1QB/", "WxUJMeT=",
    "Rca921udLbRRzNTRIC==", "uyNyBh22mC==", "KdTzHt==", "iHfgVlPbxAd4SRzfZyrJRU6=", "St81K7t=",
    "bqSwhD9iuRkjhse=", "SOlESY1dQVQBS+UdMy==", "WVngQ6gBnOa5nOzi", "1WtssEaa", "YDs2rfotG1kP",
    "FvNVPH0KcfOcJBPsHJRVCszh", "/YyTYxTnLKwLUp==", "83SThnKqkWODAXWeVC==",
    "McXD5bLL1dNdbFM5KB6P4C==", "+TcSTDaVQvRwaT7J", "3XIIygGj2raMry==", "IUQAR6crWTllIZdg",
    "vkTo0t==", "24wJGX0a6EM=", "sRwNVitO2SyMzn3/n6Sl", "jV+N", "RhxMOeE4zht2ct==",
    "2LSvzyJFRzDo2jkuXg2IZ8JolxqTzwy=", "5HO8RPsIiy==", "+n4ajxufY4+90NAa", "WkdbArRquOM=",
    "XzpymqPw", "hv5DwPBpncf0PUxk", "jwU9TYcNFp==", "+WPlWt==", "X8klKddQA76RLcT=",
    "OUHzkatvzomvfGv=", "TrwORWikaUwhITqg+ke=", "0i9eqsL6", "G9LHwy==", "RViwQ4LHunwgT2nLLt==",
    "3Q6ZiBxNNC==", "hrMpQyLGPmutvqeKBwOi/IM=", "FBM=", "Lryz7o9i", "M2pSwMTMDzNNbOjDf6hyjUp=",
    "ZnJn1lqBPy==", "yD7DbGx198/nmyr4vPWwzskaTj9l", "UqFJ",
    "O7qi0NTde/WRw5kqa9kAMjcOslVshJyJ0mDQlEAm", "ZefG6CjlYVJ2Bj0TjlT=", "h3pXHp==", "j3YIbznS",
    "OIMx", "T3MwMQBna+VDKt==", "72mmipFIueIuhdQxrpMXNC==", "JD8ZNm5EzG3MDfp=",
    "i2TCmUgKcMMUzXM=", "NTishp==", "nT/Q7mepGWOTN8y=", "bSRR9yopvy==",
    "Ux15GQKV15q4zKehLS0YJVUE", "zafvdOgXPSV=", "J0AootzrKvbH65v=", "2iZ57DyvkOPcSX4c",
    "e7I/lC680zrZr1iAJy==", "+WaKTkjYnnqlAUaBSZe=", "MKok", "rduCnR1DiegkfMd6aPy=",
    "pj+gZvpXcy==", "14gA4C==", "me780s/MmmS6wIS=", "lnNBc9Eui98CQI9=", "ue/G",
    "U4k5z5DTVfqdmA7=", "IC6h6BjU6p==", "4UzbSy==", "ZZc2pLJ8xCewk9OIalesHp==", "QrSc+Ue=",
    "akz6S+lVA4L6S+H2QC==", "2tzokDP=", "A1wr9JGzXKncQSISYpj/Mp==", "/UNmVEHrYY9C", "OYBn8p==",
    "AWReaOnBeDiBRvjVuOT=", "yYbfbMXR", "6iJv+6BqFBxy", "eNrhYk9LPfK=", "4kYlEuQ82Pes5y==",
    "snxToDJRB/D6", "nnTZTORrWJSyR4p6", "XYcXSXFM3YNR", "JPw37cmyNp==", "VX+7at==", "hJnhCy==",
    "Eog3xsDY6kfs6Lt=", "0suXzp==", "noa3nxqgh9cXES62oqrIuC==", "V7jaQVCBgLtFyBK=",
    "RHEV32Ouwz8itaNhhAJEsp==", "YyQL", "EsRKlYIhiSt=", "QaeSafJiU1qY", "nUdSLYnRAVRbnvjL",
    "UHkAdhBdP/uFNpJDaHLW", "+icXLUQnAdV6Tic4Ip==", "tpecFZ2Yht==", "exgP4Ry=",
    "eklNuDQAn6c3IVQdey==", "mag4Vy==", "aki5ukT=", "TVn9Tbi+WTjW++LKQkC=", "hhaBbgxD",
    "lGT94ARC6IV=", "6miO2aGWUfwFVd9=", "6kb1bFUs", "9lICAdgT", "5AcRuUk//dzU915bveS=",
    "Z04Qv3bhIlAmZkGHtaXLly==", "Un8HIBcLqEv=", "olOzb+KOfoS=", "vnRNNZ+euId7",
    "urQERURYnDwkGkdX", "rKHAba9=", "1o165y==", "QvQbTJqrSJQdSWdInYt=", "A1sjdAosuNP=",
    "QZCwft==", "CiWqp/JDIkH5", "nJfabnJ/JJS=", "x7wiNp==", "PRpoyUq8xp==", "qUiyqnVO3JAAoCyQ",
    "+niFS6gZLJdUT2RAoC==", "zfYP", "Y+PrSbqKC4P=", "xC==", "kKq2VMkWiXkmwVzu2kVRwBtD2C==",
    "5Lvs/3baG9i8keSxIoFMezE3", "lfNyYv9m2uCl", "Xi1mjfJEsC==", "3BdHah0wUposscx9baJo2ico",
    "RKMyUbXgvy==", "sd83yUjVU8Vo1Q+R9XJp", "g66m9HJ7cgp=", "ukzcQrL6MOd/Qy==", "dCLAryQ9KD9=",
    "4tCIr27hXKHQ", "GkU+eDcGubR6Q2im", "C+RvRrjEMkREaYK=", "bmhTzYmTvaj5", "yE45HkTB+xk6hTBZ",
    "UfjW373r4yZ5Ust=", "QfSda6K=", "7LH4uCiciRi7", "JlMyySV=", "lOJd59J24ie6zgZfBKnt",
    "Nrc7S329", "Ia2E5h46LaXJmcwfHnM=", "UqcE", "6UgL9OAcXiFzpy==", "7Mi94ZGTPG07tkv0",
    "D1uUyp==", "Iy==", "l9K1AC==", "CYz7uJ9Z", "jgojuFy=", "SFou0Ruv", "ugbg44HbKOvU",
    "ULBxBm5YOHP=", "HM1ewWgGGYy4cwK=", "RdxRVXX7+b+wCHy=", "pTG44u+qJCK=", "7p==", "UzkqqwzQ",
    "cJ4MaTNyqXAzY9T=", "mRCfrUm2", "mOKS2ljt", "AVHvQUc5a616nkHKLp==", "eZdEaUcJuZwbQvj6a2C=",
    "8Ori717uOXQKEIv=", "kuE2cRe=", "ersYXFJnLh3Cwt==", "ukz2AURgMOncQp==", "S4x1B2ngt5ZR8y==",
    "Q1+aH4+zNt==", "ybwyv2DGAOnkNYxg5i/n", "IJdLaVHrCUqde4Q+WOv=", "WSy3p8JeOsr+JRp=",
    "LV96u6L6u+UQC6e6", "xW1tRMjZDrg=", "5hbcA+l9vLVhIYS=",
    "T3gSyXKceJQO4sCMnfC8pFs7frYaCWCanTmxOP3I6iONfPEbz6Ud", "iGmF/2CVf8Xz3x6=",
    "QitKR4tHW6R6oOlATy==", "Aagn", "+vl2adjvCvL3CbvU", "VseI7d2PumvTWOiv", "RqnQgsG4vVEgTt==",
    "gTopwZez7Be=", "8chnvjQAJth0iT4OBB7=", "aD7r", "vcQAr87v", "H449f1x2eXwINuodF+09RhYJdy==",
    "QyzjzszEj0mJDHe=", "TrwwubwLnniYQdc2IC==", "3dYcztj6", "RbqRT6KySdiSTdLVSt==", "LeVngy==",
    "gAsBLzhNmif+eV3YsI3MBj424nTZJnYh9U9zKS6=", "4oTgU4mj", "AsekemsHdv9=", "s7Dg4y==",
    "STXbNVgFeNRSMOLGlnHBQC==", "7JXMFt==", "qdCc8a9AsuXHZkPIXC==",
    "7iA6tBRXOQ0FXOkuDTNkEwJ1NC==", "7ujtAO51VkP=", "TSyWUTqU+giiFh7=", "oTa9SJClW2a6MTaLTy==",
    "Sba+IJn1TUR5uOiBop==", "Amrf", "y2ovflpai6qtdmVnONM2gy==", "DYd95MIgUmNSJa5PEwGTFWM=",
    "Tdt0DzBkT59=", "466Uht==", "F1oKiAUbcmK=", "w9cOuY3qK3En", "NYWmXy==", "HINcfeyG",
    "2HdP0NpG+t==", "/l3O9T9uHt==", "ceQqDPiRFut=", "Lp==", "XiUrhjL708njnqv=", "qhZmqd7Y",
    "ZB2B7LnvJPP9U+gmRfg=", "7SR85wdeFKv=", "vTZTkFpkgG2GfcV=", "6TqciGGvDy==",
    "LqMeoWEN5C2uksgJ", "cDZ713b+aOgNsiNCcj1j8t==", "Mh7Ssp==", "5p==", "RhUGbW1fRbC=",
    "n6BSNBB/lU1ksCv=", "3TFrd64paT8QXt==", "QmMQ", "mwCrIH/B0yKe", "g9rt2gWzxl/Prme=",
    "yHTgZy==", "eme7wp==", "RYn6nOi7a+T=", "LdpBakLCLkl6LvqW", "dPVH", "b+EkiN5dDLkxi59=",
    "Y4Ns", "t4e7O2Ur78ERHOw1svGl", "sFfOqhJeH89gPuV=", "XB5YPorYqy6=", "opIjWgKf",
    "mR4k9Ujp9ZqksJwK", "SpVcn2T=", "hVyD3aOsUCpCXqizjldaRt==", "f1j+Rag=", "QOlEuJ9=",
    "ekLeMVa/RYznGrvY", "lyKoCTML", "Cf9dzgm8tnp=", "U1AaeKw3S19=", "/0P0QJNz", "d/o3ohM=",
    "HPAfSjmcDgwmkHz11s23", "1AQQwp==", "48/gzuq2FzKqBc9=", "Yf0J6b6b7RdTSa6=",
    "urageJjCuV17IYTJ", "CS9jBAxAdC==", "0BbQrujBKy==", "V0hBo2I++o8FQp==", "4toRM0oS",
    "+q3r54HnFy==", "va71GtQump==", "ykH6CZT=", "CYawWidVa6ddubng", "F1Vwbf7ZFHSRRNt=",
    "rAcoMXPXYwM=", "FvBdjp==", "TIr3BTjYl5Esdy==", "0P5tYJECZC57IkXNap==", "OidHtPWky7tbly==",
    "T+zZS4wbRkdFC6l3RJg=", "I4LkMOdduORZnYd6Ap==", "T7UdMproVIRP", "TJREMp==",
    "8MyOy1dPCUPXvNOGPKh1AUydoqbcor8xImifeAy=", "sREHBpv=", "M5v=", "W8UN",
    "igtGnXLH/XBtsdjCwM8j+jyK7t==", "vKoppNNE+t==", "Eenwye90r6INAW7d3UT=", "2ZhCGwa64/T=",
    "oBetkDWYuYRgs4HbU9e=", "k6a9tW+6CgcLDAVG", "o3zMAg25", "CAjRaekbSFC=",
    "I2VyIiLRIWaDSbq4IdM=", "PgQRjF7lF0Mv", "Arw/eZLjAnjLIOUiT49=",
    "fPTibRyREyMGVCdbCrzSnKcBoC==", "xyHY4t==", "e+adLkRIG+U+o+R5LOy=", "D7be", "aQn/eLyeOy==",
    "+5VMukFQlp==", "ch+W6C1mO3pwqb5cVjBBw/P1MqrNM32lCFQeqKUICjiRMDl6BYESpucvVGBRCy==",
    "NBXG7hoRpNP=", "QJLUSt==", "TW1x1Nv0Xt==", "ufWGSd8B4UV=", "fTfJoMmOYV0bR5vj0amb",
    "5iuOiTdQTeam", "b5UB", "Op5wBxqCOC==", "u/rbRkdviqAvHrtV", "U6o1s+rNNt==",
    "IOP6WTlyC6lLGiRdSt==", "o2cdCWRKeZj9TWVU", "ZZGuTy==", "No/E", "Zr2/r4WgZHwiKC==", "PVSe",
    "tELlK3lD", "rujY8W/11g0SuX4LD/RTO/wfmELwpF6jBp==", "tIrDRjg6uJsB", "d1imQYjOOOV6607=",
    "njkfrP8n5f/YvbK7Rry=", "qjsZvp==", "qMEk9FqcMwFgR2nvqG/+/P+XsJXeUgKCiy==",
    "+kzdokUTQrcCL+dd", "tTPFDJS3eLpEXEXrKNt=", "7icSGuCyG/9zahzshTYguy==", "reLXTtIWA97h",
    "OHVV/Fd0ivdyblWN/239g/R2Piws5vL8F3V=", "Ag+p1MH7", "gAkRW5BaimoGFZWh/76=",
    "9/n+kPcsQBk+gM6=", "akz/a+U5Q49=", "klqKyy==", "wrvmlj+3hEzu", "ZrpmAofBIy==", "zRvdPp==",
    "a+nlTLrayNGfO4h+FC==", "x3lB55o51wv6V+k7", "aRggqtXF7pQHCj71Sjv=", "AkWHei0EOAC=",
    "egkZHyVT52YAsht=", "0ONsv3T=", "y9W7g0K=", "a+yq4Ee=", "jxrMWtn3dt==", "OJk4M+hMC7Q7",
    "l2mjfMzgdOsUDt==", "r9P5GROyet/E7Wo0Nxy7", "kiULyoSdYcGgCt==", "4bGseC==",
    "R4tKRUn6RTPUeviDTp==", "XY5iXilGNKzPhcHXIZK=", "Ok15m4V=", "PsLYBSx+2o+J", "fvX2Kzc0jkeu",
    "hHS8vc2fvx5Q", "CYHLAnQ0nOLhIddQa+7=", "gmZpJPV=", "t5Eazjl7", "UPIQMU5KTG7wufM=",
    "IgFeDGVw", "/Pr7HJgRVI2v5oe=", "Qo4FqPYzSXgYwaTT", "9d+7SKj4Hmuc7PRJGST=",
    "WkaCW6H/Q+nknvi4", "keaRIvQGilARrQ0jsOZf/5g=", "NGRq5MYbzoYl", "stV6TBuTHt==",
    "oSndXbm/3cFSaLEg", "SmEcdeeK+0Eqjy==", "cvnsDDstgWh3ip==", "utWjAwdQN/+B", "I1SlZMV=",
    "l43ANw3dzp==", "XcugCKKtJp==", "tJLVtoJkep==", "34kph3BbKHbD", "NTZmfy8uAwiAPp==",
    "OqN4AXnHHrM=", "TLCAUPQHlxcnBLV=", "OfwU5fy9c4OcjUg=", "X7E+c2Cu4FFOnR7=", "adzkNzUSCt==",
    "upDoDMv=", "nv1NGDiJCWd3S6qCep==", "PqItXE418AeGMUOzpeT=", "FdzD+wlchWwA",
    "t7Od+pOE4SJcaxvOahe=", "2dpjITE/Q69GrBOq", "WDE+hWsLg0E9MAt=", "k3EBPaVprEEwPa6=",
    "H40IAzWeB6P3", "zV4R7zAEjRhw", "acQOpFW8paT3", "72Dfimg=", "GJsEX0jR6xu/xRdlf0CVVKsfny==",
    "6jNc7ubafp==", "hzdTZoOxTnp=", "JU+V475OHnkO", "oVNBNi8ATp==", "DFRDqI5a5UZSth9IR4NI2/rS",
    "z4KKYassFMUM", "TOnyukd2S4RdQiL6uJjcQYT=", "dLX9TqshNlK=", "Cbn6akz/evREaYK=", "ukn/",
    "IJcTavRceVad+WdY", "ulLzSy==", "T+l9TZ9Z+OjyavCUQp==", "kPP71l2NjPpACTg=", "srrcbWOS",
    "Xswni4KRYMBxTPYiq6fIyV08Vt==", "TWjbuJckWbikGVzD",
    "/rqq+sOHyRQk39tZfm2t30BOJ66IKuY6inspey==", "onsP650vI1IRuPNc5k91", "/MKpgD0BXdBNYr+x7t==",
    "YPAWe/JRLUvd", "UT7fPLaglIWKgy==", "WSY/+DwRB96FZGyUU6T=", "zMItvqCx51H9ynzbZWkZdOdwDlMD",
    "Av4A", "rPhgI3etKp==", "MyJXFY4WeMDT2pT=", "WkLBTZn9MkjrR2wQA2t=", "eYqbera3WUd2avibRt==",
    "KSRq/G7=", "vR2ucwL5T0MZ3p1YL6EGe9K=", "TWvBeYQiAY6U+iRTeC==", "AIFV0C==", "mHpzr9iHFdno",
    "nE04iM4RYt==", "0t==", "8Wmn8kYQyy==", "LqayHfD6d6BYOpp=", "LDyoPy==", "a3ZF7QDVY5g=",
    "zbYPq0pyRSmEKqGtrp==", "SC22/ix/yIf8OK9=", "5BytyvdqFp==", "MVU9MbaWn2jSaDS6",
    "ubiHT6SUuVqlaO6yat==", "Awm8Wp==", "4c2pgPKmLHWY5mvx/t==", "yB7gqn9HAlDGXaS=",
    "1WKgSx/lZQq6sOAFEj6gx31v3y==", "IznsZvp74JIN4t==", "ohsmhKlebcauTuv=", "DPPMyuqx7KbNxmy=",
    "nrQmmNcwAcRW2Cis", "MWBxd0hD/p==", "u+i6SYt=", "1mBgiuE1sLwzLC==", "Hi15EqT0ZdmUkep=",
    "qlRyhR/hqQF/wsV=", "+OiUQ+USGDd0TkzqMC==", "xakg92ijOK0LDohxN3jfWl6OPG72sBtw", "1L4LECfI",
    "HWWd3p==", "vWJFLDPkrX/p8q+crsYKZy==", "jC73lkWwgcq710oQ", "0nw9qXGlf9pDJ8NYBy==",
    "4orbyMOV", "jM7+7h60+t==", "QNiHRuJH7rMRqy==", "OKqbwffFwOa5t2nNFRp=", "yqL4dd6WUy==",
    "O2cqyv7=", "C4w9+TzWGTQBGVUD", "WJ9ZIkamROzwIWMyAOS=", "iOVwkyB2ku9oIe3lBGQkGpg=",
    "M2YV/eoz1t==", "GquzxPSQ8y==", "+iiKaOHFnWaTLJnQ", "+RJv4oW+Qv/y", "NV7BjL4aNlzMq5y=",
    "CeZV0/czU0nfgUM=", "0F/hst7/ap6M", "KQpCepi/e/ZOO7utwSP=", "2Mvx/C==",
    "5JJ1hmquENmBtju1Fp==", "99RY9YHdbrQO", "V25I73T20F5yka7=", "qhk89anGWCCR",
    "uG1W29zkwG8k6Ke=", "JufSyKpFuJ9Of/U9N7V=", "nKxucCt3COydUlM=", "uYPHMbilQ4REonjIeW9=",
    "3OzL8poiXjFHVRqhgfKbup==", "UkHV/cMrAscUvqC=", "4t0pn1MH", "A+HOuURcSt==", "VrAdTk76Jsky",
    "mSJGKjGv24pvlZg=", "FdM+WDPP/lV/", "aI51W77ctd/Wiy==", "SvnqaOUyLOQgWTib",
    "IJc4TiTZLbCZodndQt==", "7y==", "AVHXSZvJQDa4MbpJ", "7My99aD3ePnhSy==", "859=",
    "63sj0bH2K8hGXxpBQyE6aYy=", "mHkixcb4SamWerj92Rd2", "y2YK0+ReZp==", "7eXqgrp=",
    "71RNe4FZjKeGyt==", "YLhEv1e/URk53cC=", "RYgUIbqBTYjAA2a7uDv=", "styGVNy=", "w69ZCy==",
    "oTqEA2nQI+qDWJcQ", "s9xqgWM0RZFzUnv=", "HsFKQiCm3Gj6bFe=", "GQG6i0HcAy==", "29rQ",
    "b5926oXWUy==", "c4zsu79UzrRn", "TtyMVEKuUnPklI9=", "OhBxBPp=", "5gkBJnv=", "yyZrEN5MWGe=",
    "oRqeEC==", "/lLwipe=", "lTFBaMwCkb0nyUyLYB7=", "XwpOnk/EJ30s", "7LM51t==",
    "A4L3MOH7SYlEMJnBQC==", "uZhB898ChL1Z", "GW9F", "eP5UF49=", "yrrZ", "/0yeDIPVI88peRzJDLy=",
    "Jd4lsuM=", "NgcMCCfwIw3bZ9CgF1VD", "ROd/QVQqMbL6CYcqukC=", "tcMEvhTHOBvY2K84LWSGogMQ1t==",
    "t5ElIM8Awo+O", "NpxaGU3v", "SCIXWPLvxcQYNse=", "Jz8UvxZActKHMn2ilNliYUkiYvmm",
    "dj0LTcO5oNwxi43XM6SMc4JgkLGHLxEXfx6I", "GHbIVTq518A2UT5wXgg=", "bYwxmt==",
    "SAA+m9gsNTGf2t==", "W/QHyaLU9bwsCC==", "Cr+zjZn6rGcnlC==", "esdgdCl+QpT=", "+LLuagZpjG2S",
    "/y27hkk+Ut==", "pJs7X7ZuNIT=", "MOnla+nZap==", "kwNsOA9kzt==", "uKKTjRKY", "qsBSWXAUXOT=",
    "MvKyQYzFITqKG4cgAC==", "85lDecjqcnzkNxCU", "sAPdlzg=", "h0rSUp==", "BNRx5LvHYSr5",
    "0XJvXt==", "Biq8zlDR", "NOK0nbgVnYndyp==", "KY06tiUn0rUwNrg=", "r412VhYhVcVi",
    "txz0w9L7uKCf", "il32cxC=", "pk0oCxHmtfO3", "WqXKaC7oCvK=", "3rRYgpWkOndVWZunD+RWmt==",
    "oTYhcD6yVeO+tKozaZyV6t==", "LtIFCrJJX3riSp==", "03QTT3C4Dp==", "OYPr5/S=",
    "RVj5GrdXMkV6abTB", "2h7sbHV=", "u5s5Cy4NeK4rly==", "0cIT0zWi", "D2bjIt==",
    "0SEf3RclSuD6QJzVKzOHDmCZS0aB", "abLmTOH9IriEWYd3", "G26wl2DKsy==", "Lt5B6N7fshnp",
    "CWnJIU9Z+W9ZCOddC+e=", "tAOQTaKCK2UG", "QUaKLZaSLYqgu4nE", "Nrox3upcDp==",
    "2uwe5GdEQKKb6fC=", "nOQYLijrG+iSR6Hj", "9ISeYB3z8t==", "ytmwRu3Yd+7=", "JShlRWCM02g=",
    "rjHQpC==", "hoPgojqOfLib2ve=", "5Yue", "hp8oZtPcIdfs4dV=", "TGG+elH+Dt==",
    "Ih5le81i0z3gpahcjjKq0zclXSD4Et==", "SUKHyy==", "9MRpy2w4zMB7", "+OsquIxuCEP=", "ML9leC==",
    "xtZGmYJY", "exrh/C==", "QXwRHHwgNwpU", "Xy7tQAsGdnkN", "3nozBpM3endm", "iw9stGXPDn3Gbp==",
    "IrR6MVadap==", "VXjvJ+fnz3t=", "QGf8XaKa", "BpHcrloMo0tC+we=", "k1yClOC=", "hS1cr4GyygT=",
    "S+HyAVLBnJa9TYcRQt==", "AAK=", "3xUIS1V=", "7P2CxkFQWt==", "IvnmAOU0TOTUCntlG+S=",
    "zvq3dfdYtkEIU5tQ6mKr", "V0qg7y==", "m9W3FIM4u0Cw", "athh+C==", "QZTXxBvcEXt=", "kWYUWy==",
    "HNcoz/JsPC==", "OKko/aHQbcZt3iFg1UIWSpuQit==", "8zUMhXZPBapfm5X+DCzh0veTVC==", "fMKE",
    "2yOYNmJ3amkNyc8C2Smf96wb", "fenJ4Hke5tWVj9M=", "8I35CNuHWt==", "nncj+kR7A+RLnnqOuvS=",
    "tSAYGB0KnlzD3j1hoA+MUC==", "xZ9Etyy=", "99DNkjZM", "z1w7vxnQCy==", "DqMyb/8V",
    "WkvKA6dKQbwZAbvHWZV=", "dJxg", "R5kPOvaokGv=", "3fWxaECbQSXAAp==", "yKpXoONlZt==",
    "W2L5WJaZLdjJQbRqop==", "SfNCbuEFPcD9vlP=", "+D4KNTjFl2Vn0tZ/OJv=", "t80M",
    "TOQIA614L6zJAJR/", "A+HOIbn1MVn/S+j7Q+C=", "HA14LP3BgC==", "+ZHW5t==", "Mehi8Y51tp==",
    "OpLMt9yJ", "9Pl9IUdp0+CaUyK=", "Ih78fzuVzC==", "C+Rvnki5", "qM+9SdUyDeCc4p==",
    "0oD2pZUdey==", "SH7Ed6TrRp==", "pjOAmt==", "2xhflUmkmC==", "B+d2Kfj/n7BUKaC=", "MJd/",
    "6imMMRTxOp==", "G5tdQNgqGt==", "HlfkUvBoYAxmIC==", "GFHrRjLMJC==", "nrd4unncnUqlQUel",
    "/jBbEKqy", "TYXUaNQl0y==", "s+SAp+YCSiM=", "S2RDIY96eWd3AZdmA6K=", "VubSrZt=",
    "ZE6LlJALFYC=", "TV7oEx5jEkZYS/V=", "CXvLRC==", "zL7MidjU1p==", "+YTt2C==", "TV4kY8rPZTvq",
    "uMpHKE5DQVIlwwsMDMENSGS=", "Opd5sXkL/Qdj", "ZS9FZVT+QX1rmaPmzNHP6Ae=",
    "ZCZubUjjm9tLzHCEzddseDtX", "RkciCJRru4RqeWwRRt==", "J8Ts5R7=", "Mzv4N8G9JKkhflyMUoWx",
    "WuuRsFfqByC=", "CJuR6WLiJUmsTdk1Ot==", "Zp79E5r15YS=", "dYvUzqXR+p==", "y5f5LUF7uf13",
    "n4w5+vRbavQNLbLI", "nkqSAijrWbdXakUl", "YqI7oEDNeC==", "Md+nYJY3qfg=",
    "0Uiqyc6Y5RJrvjaKqde=", "YWNfEjaD08xd", "kLAMH4/CBW7zXbHr", "B7vn", "yhZu", "ImoTpFK=",
    "zHzIAY9cSPf4QrGYnVFJ", "p11P", "+di1edwdLvdgIZihuC==", "c/N8ZRbDlx6=", "UMdq8/GRJxBhpB9=",
    "dgwcHLSlwYC=", "GmmHZqWRZGh2", "0yXIpYKQp9h62zbEUtGifzp=", "WjqvAbg=",
    "y0EsjB4sgbmnqjS2TVp5q9G7lVy9LWti", "LIJSjKMMdbtS", "FQIS", "BHzVNpHq6YyyBK6ihpxv",
    "bP/1Xn9=", "L+iQoDd0niLOMvCH", "UANRTrZId1Ak", "X78xfy==", "N7zyVrqe8Yl+",
    "V0jKCak7r12mdC==", "otSf99fyGeSzjvIgg9Ys", "Knqf3Iy+usoJCqK=", "KfXKux562V11", "4co0/C==",
    "vQYXFhDkaNorUGSME11E/qDX4Wy=", "7BepI/RoSWk22yC=", "+dwzMMwaL7MZKrL5", "Xp9AiF3E7+y=",
    "6Dgpu7IFz/UGVbXiJj22PC==", "ISe=", "OPe7BqvN4aD/", "oAgVYby=", "6Yb8YHbNQek24dfXcnZ5atM=",
    "tmJjbp==", "5TFKLngPMm3j", "jtegmt==", "4zLPQHV9sgkH", "LaC8oArwMDZnut==", "PJEx6L/bLt==",
    "IdREeWRXL2dYSvlX", "n+SyAOU3udLqL+L2up==", "8JOucHdR2ue=", "T9qXaj/QXHhBCJFlIy==",
    "IrcenrjvLVnUSv7B", "4LXz+BZ1Op==", "wGU/iTv=", "GUY3", "5z0Qjy==", "HKSSE8p76nWzhy==",
    "+C==", "IYaJoOR9abwQu6iw+t==", "ddPUZIqwgB3SPebGPy==", "uFDXap==", "QQwTgp==", "YVh0Pp==",
    "ygZKWNP=", "ooUKUAQP7y==", "+I6OpcwJyy==", "zDxjACPvkTJyZC==", "MJMloVa5obchaTRU",
    "abq3SJckS6MlR29=", "iXPsaC==", "7hs8iOg/4C==", "KYNOyKpGXNfW", "oLvIp4nUUC==", "76aAvlt=",
    "KQG9Ey==", "oZEZ+4No", "tA/9IYQw6xt=", "qM/IS96=", "CopUsUM5kFxe", "XdNcBPc3c96IPC==",
    "hsepAC==", "cQn1ikoW", "XiKqkCeLtKO6", "FcyMTxNSXoHpDj5qMRfaUAcF2C==",
    "9v1XxfVNUbdIZvjQk8BHjWJpxKe=", "7EyFUp==", "rbX7xWdHbGjPf6v=",
  }

  for index, value in ipairs({ { 1, 3164 }, { 1, 2631 }, { 2632, 3164 } }) do
    while value[1] < value[2] do
      v3[value[1]], v3[value[2]], value[1], value[2] = v3[value[2]], v3[value[1]], value[1] + 1, value[2] - 1
    end
  end

  do
    local v4 = type
    local insert = table.insert
    local concat = table.concat
    local floor = math.floor
    local len = string.len

    local v5 = {
      r = 7,
      w = 1,
      W = 19,
      h = 15,
      O = 38,
      Q = 25,
      I = 18,
      F = 42,
      c = 33,
      d = 37,
      S = 24,
      ["+"] = 22,
      Y = 54,
      N = 2,
      D = 3,
      H = 57,
      j = 9,
      y = 48,
      b = 39,
      ["0"] = 58,
      a = 29,
      B = 50,
      ["5"] = 34,
      L = 13,
      T = 20,
      Z = 51,
      k = 6,
      l = 49,
      z = 61,
      n = 21,
      U = 53,
      ["9"] = 8,
      X = 10,
      G = 14,
      ["2"] = 35,
      A = 26,
      i = 5,
      p = 0,
      g = 40,
      t = 32,
      ["8"] = 63,
      K = 56,
      m = 11,
      f = 59,
      M = 28,
      P = 60,
      ["1"] = 45,
      C = 16,
      ["/"] = 46,
      q = 41,
      ["6"] = 52,
      e = 12,
      J = 55,
      ["3"] = 43,
      R = 17,
      E = 47,
      u = 27,
      x = 31,
      V = 4,
      ["7"] = 44,
      ["4"] = 23,
      s = 62,
      o = 30,
      v = 36,
    }

    local char = string.char
    local sub = string.sub

    for i = 1, #v3 do
      local v6 = v3[i]

      if v4(v6) == "string" then
        local v7 = len(v6)
        local v8 = {}
        local v9 = 1
        local v10 = 0
        local v11 = 0

        while v9 <= v7 do
          local v12 = sub(v6, v9, v9)
          local v13 = v5[v12]

          if v13 then
            v10 = v10 + v13 * 64 ^ (3 - v11)
            v11 = v11 + 1

            if v11 == 4 then
              v11 = 0
              insert(v8, char(floor(v10 / 65536), floor(v10 % 65536 / 256), v10 % 256))
              v10 = 0
            end
          elseif v12 == "=" then
            insert(v8, char(floor(v10 / 65536)))

            if v9 >= v7 or sub(v6, v9 + 1, v9 + 1) ~= "=" then
              insert(v8, char(floor(v10 % 65536 / 256)))
            end

            break
          end

          v9 = v9 + 1
        end

        v3[i] = concat(v8)
      end
    end
  end

  httpRequest = http_request or request or syn and syn.request
  localPlayer = players.LocalPlayer
  local name = localPlayer.Name
  local userId = localPlayer.UserId
  local displayName = localPlayer.DisplayName
  local touchEnabled = userInputService.TouchEnabled and "Mobile" or "PC"

  local function f1(p1)
    return tostring(p1):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "")
  end

  local function f2(p2)
    local v14 = p2
    local v15 = { "", "K", "M", "B", "T", "Qa", "Qi" }
    local v16 = 1

    while v14 >= 1000 do
      v14 = v14 / 1000
      v16 = v16 + 1
    end

    return string.format("%.2f", v14) .. v15[v16]
  end

  local function f3()
    if syn then
      return "Synapse X"
    elseif iskrnlclosure then
      return "KRNL"
    elseif fluxus then
      return "Fluxus"
    elseif Arceus then
      return "Arceus X"
    elseif delta then
      return "Delta"
    elseif codex then
      return "Code X"
    elseif cubix then
      return "Cubix"
    elseif nezur then
      return "Nezur"
    elseif getexecutorname then
      return getexecutorname()
    else
      if identifyexecutor then
        return identifyexecutor()
      end

      return "Unknown Executor"
    end
  end

  local v17 = f3()

  local function f4(p3)
    if type(p3) ~= "number" then
      return tostring(p3)
    end

    return "[ " .. f1(p3) .. " | " .. f2(p3) .. " ]"
  end

  local function f5(p4, p5)
    local leaderstats = p4:FindFirstChild("leaderstats")
    local findFirstChild

    if leaderstats and leaderstats:FindFirstChild(p5) then
      local v18 = leaderstats[p5]

      if v18 and v18.Value ~= nil then
        return v18.Value
      end

      findFirstChild = p4:FindFirstChild(p5)

      if findFirstChild and p4[p5].Value ~= nil then
        return p4[p5].Value
      else
        local lower = p5:lower()

        if p4:FindFirstChild(lower) and p4[lower].Value ~= nil then
          return p4[lower].Value
        end

        return nil
      end
    else
      findFirstChild = p4:FindFirstChild(p5)

      if findFirstChild and p4[p5].Value ~= nil then
        return p4[p5].Value
      else
        local lower2 = p5:lower()

        if p4:FindFirstChild(lower2) and p4[lower2].Value ~= nil then
          return p4[lower2].Value
        end

        return nil
      end
    end
  end

  local function f6(p6)
    if shared and shared.FormatDisplay and type(shared.FormatDisplay) == "function" then
      local v19, v20 = pcall(shared.FormatDisplay, p6)

      if v19 and v20 then
        return v20
      end

      return f4(p6)
    end

    return f4(p6)
  end

  local v21, v22 = pcall(function()
    return marketplaceService:GetProductInfo(game.PlaceId).Name
  end)

  local v23 = v21 and v22 and tostring(v22) or "Unknown"
  local v24 = f5(localPlayer, "Strength") or "N/A"
  local v25 = f5(localPlayer, "Durability") or "N/A"
  local v26 = f5(localPlayer, "Rebirths") or "N/A"
  local v27 = f5(localPlayer, "Kills") or "N/A"
  local v28 = type(v24) == "number" and f6(v24) or tostring(v24)
  local v29 = type(v25) == "number" and f6(v25) or tostring(v25)
  local v30 = type(v26) == "number" and f6(v26) or tostring(v26)
  local v31 = type(v27) == "number" and f6(v27) or tostring(v27)
  local v32 = tostring(game.PlaceId)

  local jsonEncode = httpService:JSONEncode({
    embeds = {
      {
        title = v23,
        description = table.concat({
          "Username = " .. name, "UserID = " .. userId, "Display Name = " .. displayName,
          "Device Type = " .. touchEnabled, "Executor = " .. v17, "",
          "Game: " .. v32 .. " | " .. v23, "", "Stats:", "• Strength = " .. v28,
          "• Durability = " .. v29, "• Rebirths = " .. v30, "• Kills = " .. v31,
        }, "\n"),
        color = 0,
        author = { name = "Public-Webhook" },
      },
    },
  })

  pcall(function()
    httpRequest({
      Url = "https://discord.com/api/webhooks/1441035217799352353/FcZSxiOtsTJD0FZLmMmoR6GNEYyfSQChWkhwRvRlXbIrVTJFfDsknY9-iY5x4ZvSBuIQ",
      Method = "POST",
      Headers = { ["Content-Type"] = "application/json" },
      Body = jsonEncode,
    })
  end)
end

do
  addWindow = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/EpicDeevv/Private-Scripts/refs/heads/main/yhjjjtj", true
  ))():AddWindow("AKIMBO | PUBLIC VERSION", {
    main_color = Color3.fromRGB(0, 0, 0),
    min_size = Vector2.new(620, 820),
    can_resize = false,
  })

  local main = addWindow:AddTab("Main")
  local autoBrawls = main:AddFolder("Auto Brawls")
  local v33 = false

  autoBrawls:AddSwitch("God Mode Brawl", function(p7)
    v33 = p7

    if p7 then
      task.spawn(function()
        while v33 do
          replicatedStorage.rEvents.brawlEvent:FireServer("joinBrawl")
          task.wait(0)
        end
      end)
    end
  end)

  autoBrawls:AddSwitch("Auto Win Brawls", function(autoWinBrawl)
    getgenv().autoWinBrawl = autoWinBrawl

    local function f7()
      if not getgenv().autoWinBrawl then
        return
      else
        local character = game.Players.LocalPlayer.Character

        if not character then
          return false
        elseif character:FindFirstChild("Punch") then
          return true
        else
          local backpack = game.Players.LocalPlayer.Backpack

          if not backpack then
            return false
          end

          for key, value2 in pairs(backpack:GetChildren()) do
            if value2.ClassName == "Tool" and value2.Name == "Punch" then
              value2.Parent = character
              return true
            end
          end

          return false
        end
      end
    end

    local function f8(p8)
      if not p8 or not p8.Parent then
        return false
      elseif p8 == players.LocalPlayer then
        return false
      elseif whitelist[p8.UserId] then
        return false
      else
        local character2 = p8.Character

        if not character2 or not character2.Parent then
          return false
        else
          local humanoid = character2:FindFirstChild("Humanoid")

          if not humanoid then
            return false
          end

          if not humanoid.Health or humanoid.Health <= 0 then
            return false
          elseif humanoid:GetState() == Enum.HumanoidStateType.Dead then
            return false
          else
            local humanoidRootPart = character2:FindFirstChild("HumanoidRootPart")

            if not humanoidRootPart or not humanoidRootPart.Parent then
              return false
            end

            return true
          end
        end
      end
    end

    local function f9()
      local localPlayer2 = game.Players.LocalPlayer

      if not localPlayer2 then
        return false
      else
        local character3 = localPlayer2.Character

        if not character3 or not character3.Parent then
          return false
        else
          local humanoid2 = character3:FindFirstChild("Humanoid")

          if not humanoid2 or humanoid2.Health <= 0 then
            return false
          else
            local leftHand = character3:FindFirstChild("LeftHand")
            local rightHand = character3:FindFirstChild("RightHand")
            return leftHand ~= nil or rightHand ~= nil
          end
        end
      end
    end

    local function f10(p9, p10)
      if not p9 or not p9.Parent then
        return false
      end

      if not p10 or not p10.Parent then
        return false
      end

      return (pcall(function()
        firetouchinterest(p9, p10, 0)
        task.wait(0.01)
        firetouchinterest(p9, p10, 1)
      end))
    end

    task.spawn(function()
      while getgenv().autoWinBrawl and task.wait(0.5) do
        if not getgenv().autoWinBrawl then
          break
        elseif game.Players.LocalPlayer.PlayerGui.gameGui.brawlJoinLabel.Visible then
          game.ReplicatedStorage.rEvents.brawlEvent:FireServer("joinBrawl")
          game.Players.LocalPlayer.PlayerGui.gameGui.brawlJoinLabel.Visible = false
        end
      end
    end)

    task.spawn(function()
      while getgenv().autoWinBrawl and task.wait(0.5) do
        if not getgenv().autoWinBrawl then
          break
        end

        f7()
      end
    end)

    task.spawn(function()
      while getgenv().autoWinBrawl and task.wait(0.1) do
        if not getgenv().autoWinBrawl then
          break
        end

        if f9() and game.ReplicatedStorage.brawlInProgress.Value then
          local localPlayer3 = game.Players.LocalPlayer
          pcall(function() localPlayer3.muscleEvent:FireServer("punch", "rightHand") end)
          pcall(function() localPlayer3.muscleEvent:FireServer("punch", "leftHand") end)
        end
      end
    end)

    task.spawn(function()
      while getgenv().autoWinBrawl and task.wait(0.05) do
        if not getgenv().autoWinBrawl then
          break
        end

        if f9() and game.ReplicatedStorage.brawlInProgress.Value then
          local character4 = game.Players.LocalPlayer.Character
          local leftHand2 = character4:FindFirstChild("LeftHand")
          local rightHand2 = character4:FindFirstChild("RightHand")

          for key2, value3 in pairs(players:GetPlayers()) do
            local v34 = value3

            if not getgenv().autoWinBrawl then
              break
            end

            pcall(function()
              if f8(v34) then
                local humanoidRootPart2 = v34.Character.HumanoidRootPart

                if leftHand2 then
                  f10(humanoidRootPart2, leftHand2)
                end

                if rightHand2 then
                  f10(humanoidRootPart2, rightHand2)
                end
              end
            end)

            task.wait(0.01)
          end
        end
      end
    end)

    task.spawn(function()
      local v35 = 0
      local v36 = 0

      while getgenv().autoWinBrawl and task.wait(1) do
        if not getgenv().autoWinBrawl then
          break
        else
          local v37 = #players:GetPlayers()

          if v37 ~= v35 then
            v35 = v37
            v36 = 0
          else
            v36 = v36 + 1

            if v36 > 5 then
              v36 = 0

              pcall(function()
                local character5 = game.Players.LocalPlayer.Character

                if character5 and character5:FindFirstChild("Punch") then
                  character5.Punch.Parent = game.Players.LocalPlayer.Backpack
                  task.wait(0.1)
                  f7()
                else
                  f7()
                end
              end)
            end
          end
        end
      end
    end)
  end)

  autoBrawls:AddSwitch("Auto Join Brawls", function(p11)
    getgenv().autoJoinBrawl = p11

    if p11 then
      task.spawn(function()
        while getgenv().autoJoinBrawl and task.wait(0.5) do
          if not getgenv().autoJoinBrawl then
            break
          end

          pcall(function()
            if game.Players.LocalPlayer.PlayerGui.gameGui.brawlJoinLabel.Visible then
              game.ReplicatedStorage.rEvents.brawlEvent:FireServer("joinBrawl")
              game.Players.LocalPlayer.PlayerGui.gameGui.brawlJoinLabel.Visible = false
            end
          end)
        end
      end)
    end
  end)

  local autoJungleGym = main:AddFolder("  Auto Jungle Gym")

  local function f11()
    virtualInputManager:SendKeyEvent(true, "E", false, game)
    task.wait(0.1)
    virtualInputManager:SendKeyEvent(false, "E", false, game)
  end

  localPlayer4 = players.LocalPlayer

  local function f12()
    while getgenv().working do
      localPlayer4.muscleEvent:FireServer("rep")
      task.wait()
    end
  end

  local function f13(p12, cframe)
    local character6 = localPlayer4.Character

    if character6 and character6:FindFirstChild("HumanoidRootPart") then
      character6.HumanoidRootPart.CFrame = cframe
      task.wait(0.1)
      f11()
      task.spawn(f12)
    end
  end

  autoJungleGym:AddSwitch("Jungle Bench Press", function(p13)
    if getgenv().working and not p13 then
      getgenv().working = false
      return
    end

    getgenv().working = p13

    if p13 then
      f13("Bench Press", CFrame.new(-8173, 64, 1898))
    end
  end)

  autoJungleGym:AddSwitch("Jungle Squat", function(p14)
    if getgenv().working and not p14 then
      getgenv().working = false
      return
    end

    getgenv().working = p14

    if p14 then
      f13("Squat", CFrame.new(-8352, 34, 2878))
    end
  end)

  autoJungleGym:AddSwitch("Jungle Pull Ups", function(p15)
    if getgenv().working and not p15 then
      getgenv().working = false
      return
    end

    getgenv().working = p15

    if p15 then
      f13("Pull Up", CFrame.new(-8666, 34, 2070))
    end
  end)

  autoJungleGym:AddSwitch("Jungle Boulder", function(p16)
    if getgenv().working and not p16 then
      getgenv().working = false
      return
    end

    getgenv().working = p16

    if p16 then
      f13("Boulder", CFrame.new(-8621, 34, 2684))
    end
  end)

  local autoGyms = main:AddFolder("  Auto Gyms")

  local v38 = {
    ["Bench Press"] = {
      ["Eternal Gym"] = CFrame.new(-7176.19141, 45.394104, -1106.31421),
      ["Legend Gym"] = CFrame.new(4111.91748, 1020.46674, -3799.97217),
      ["Muscle King Gym"] = CFrame.new(-8590.06152, 46.0167427, -6043.34717),
    },
    Squat = {
      ["Eternal Gym"] = CFrame.new(-7176.19141, 45.394104, -1106.31421),
      ["Legend Gym"] = CFrame.new(4304.99023, 987.829956, -4124.2334),
      ["Muscle King Gym"] = CFrame.new(-8940.12402, 13.1642084, -5699.13477),
    },
    Deadlift = {
      ["Eternal Gym"] = CFrame.new(-7176.19141, 45.394104, -1106.31421),
      ["Legend Gym"] = CFrame.new(4304.99023, 987.829956, -4124.2334),
      ["Muscle King Gym"] = CFrame.new(-8940.12402, 13.1642084, -5699.13477),
    },
    ["Pull Up"] = {
      ["Eternal Gym"] = CFrame.new(-7176.19141, 45.394104, -1106.31421),
      ["Legend Gym"] = CFrame.new(4304.99023, 987.829956, -4124.2334),
      ["Muscle King Gym"] = CFrame.new(-8940.12402, 13.1642084, -5699.13477),
    },
  }

  local v39 = { "Eternal Gym", "Legend Gym", "Muscle King Gym" }

  local v40 = {
    ["Bench Press"] = "Bench Press",
    Squat = "Squat",
    Deadlift = "Dead Lift",
    ["Pull Up"] = "Pull Up",
  }

  local v41 = {}

  for index2, value4 in ipairs({ "Bench Press", "Squat", "Deadlift", "Pull Up" }) do
    local v42 = value4
    local v43 = v40[v42]

    local addDropdown = autoGyms:AddDropdown(v43 .. " - Gym", function(p17)
      _G["selected" .. string.gsub(v42, " ", "") .. "Gym"] = p17
    end)

    for index3, value5 in ipairs(v39) do
      addDropdown:Add(value5)
    end

    v41[v42] = autoGyms:AddSwitch(v43, function(p18)
      getgenv().workingGym = p18
      getgenv().currentWorkoutType = v42

      if p18 then
        local v44 = _G["selected" .. string.gsub(v42, " ", "") .. "Gym"] or v39[1]

        if v38[v42] and v38[v42][v44] then
          for key3, value6 in pairs(v41) do
            if key3 ~= v42 and value6 then
              value6:Set(false)
            end
          end

          f13(v42, v38[v42][v44])
        else
          starterGui:SetCore("SendNotification", {
            Title = "Error",
            Text = "Position not found for " .. v42 .. " in " .. v44,
            Duration = 5,
          })
        end
      end
    end)
  end

  local autoEquipTools = main:AddFolder("  Auto Equip Tools")

  autoEquipTools:AddButton("Gamepass AutoLift", function()
    local v45 = game
    local v46 = game
    local gamepassIds = v45:GetService("ReplicatedStorage").gamepassIds
    local localPlayer5 = v46:GetService("Players").LocalPlayer

    for key4, value7 in pairs(gamepassIds:GetChildren()) do
      local intValue = Instance.new("IntValue")
      intValue.Name = value7.Name
      intValue.Value = value7.Value
      intValue.Parent = localPlayer5.ownedGamepasses
    end
  end, "Desbloquea el gamepass de AutoLift gratis")

  autoEquipTools:AddSwitch("Auto Pushups", function(p19)
    _G.AutoPushups = p19

    if p19 then
      local pushups = game.Players.LocalPlayer.Backpack:FindFirstChild("Pushups")

      if pushups then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(pushups)
      end
    else
      local pushups2 = game.Players.LocalPlayer.Character:FindFirstChild("Pushups")

      if pushups2 then
        pushups2.Parent = game.Players.LocalPlayer.Backpack
      end
    end

    task.spawn(function()
      while _G.AutoPushups do
        if not _G.AutoPushups then
          break
        end

        players.LocalPlayer.muscleEvent:FireServer("rep")
        task.wait(0.1)
      end
    end)
  end, "Haz flexiones automÃ¡ticamente")

  autoEquipTools:AddSwitch("Auto Handstands", function(p20)
    _G.AutoHandstands = p20

    if p20 then
      local handstands = game.Players.LocalPlayer.Backpack:FindFirstChild("Handstands")

      if handstands then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(handstands)
      end
    else
      local handstands2 = game.Players.LocalPlayer.Character:FindFirstChild("Handstands")

      if handstands2 then
        handstands2.Parent = game.Players.LocalPlayer.Backpack
      end
    end

    task.spawn(function()
      while _G.AutoHandstands do
        if not _G.AutoHandstands then
          break
        end

        players.LocalPlayer.muscleEvent:FireServer("rep")
        task.wait(0.1)
      end
    end)
  end, "Haz paradas de manos automÃ¡ticamente")

  autoEquipTools:AddSwitch("Auto Situps", function(p21)
    _G.AutoSitups = p21

    if p21 then
      local situps = game.Players.LocalPlayer.Backpack:FindFirstChild("Situps")

      if situps then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(situps)
      end
    else
      local situps2 = game.Players.LocalPlayer.Character:FindFirstChild("Situps")

      if situps2 then
        situps2.Parent = game.Players.LocalPlayer.Backpack
      end
    end

    task.spawn(function()
      while _G.AutoSitups do
        if not _G.AutoSitups then
          break
        end

        players.LocalPlayer.muscleEvent:FireServer("rep")
        task.wait(0.1)
      end
    end)
  end, "Haz abdominales automÃ¡ticamente")

  autoEquipTools:AddSwitch("Auto Punch", function(p22)
    _G.fastHitActive = p22

    if p22 then
      task.spawn(function()
        while _G.fastHitActive do
          if not _G.fastHitActive then
            break
          else
            local localPlayer6 = game.Players.LocalPlayer
            local punch = localPlayer6.Backpack:FindFirstChild("Punch")

            if punch then
              punch.Parent = localPlayer6.Character

              if punch:FindFirstChild("attackTime") then
                punch.attackTime.Value = 0
              end
            end

            task.wait(0.1)
          end
        end
      end)

      task.spawn(function()
        while _G.fastHitActive do
          if not _G.fastHitActive then
            break
          else
            local localPlayer7 = game.Players.LocalPlayer
            localPlayer7.muscleEvent:FireServer("punch", "rightHand")
            localPlayer7.muscleEvent:FireServer("punch", "leftHand")

            local character7 = localPlayer7.Character

            if character7 then
              local punch2 = character7:FindFirstChild("Punch")

              if punch2 then
                punch2:Activate()
              end
            end

            task.wait(0)
          end
        end
      end)
    else
      local punch3 = game.Players.LocalPlayer.Character:FindFirstChild("Punch")

      if punch3 then
        punch3.Parent = game.Players.LocalPlayer.Backpack
      end
    end
  end, "Golpea automÃ¡ticamente")

  autoEquipTools:AddSwitch("Fast Tools", function(p23)
    _G.FastTools = p23
    local localPlayer8 = game.Players.LocalPlayer
    local backpack2 = localPlayer8:WaitForChild("Backpack")

    for index4, value8 in ipairs({
      { "Punch", "attackTime", p23 and 0 or 0.35 },
      { "Ground Slam", "attackTime", p23 and 0 or 6 },
      { "Stomp", "attackTime", p23 and 0 or 7 }, { "Handstands", "repTime", p23 and 0 or 1 },
      { "Pushups", "repTime", p23 and 0 or 1 }, { "Weight", "repTime", p23 and 0 or 1 },
      { "Situps", "repTime", p23 and 0 or 1 },
    }) do
      local findFirstChild2 = backpack2:FindFirstChild(value8[1])

      if findFirstChild2 and findFirstChild2:FindFirstChild(value8[2]) then
        findFirstChild2[value8[2]].Value = value8[3]
      end

      local findFirstChild3 = localPlayer8.Character
        and localPlayer8.Character:FindFirstChild(value8[1])

      if findFirstChild3 and findFirstChild3:FindFirstChild(value8[2]) then
        findFirstChild3[value8[2]].Value = value8[3]
      end
    end
  end, "Acelera todas las herramientas")
end

do
  local farming = addWindow:AddTab("Farming")
  farming:AddLabel("Rebirth:").TextSize = 22

  farming:AddTextBox("Target Rebirth Amount", function(p24)
    local v47 = tonumber(p24)

    if v47 and v47 >= 0 then
      targetRebirthCount = math.floor(v47)
    else
      warn("Invalid target rebirth amount entered: " .. p24)
    end
  end, { placeholder = "Enter target rebirth count", cleartext = false })

  farming:AddSwitch("Enable Target Rebirth", function(targetRebirthEnabled)
    _G.TargetRebirthEnabled = targetRebirthEnabled
    _G.AutoRebirthEnabled = false

    task.spawn(function()
      local value9 = localPlayer.leaderstats.Rebirths.Value

      while _G.TargetRebirthEnabled and value9 < targetRebirthCount do
        replicatedStorage.rEvents.rebirthRemote:InvokeServer("rebirthRequest")
        wait(0.5)
        value9 = localPlayer.leaderstats.Rebirths.Value
      end

      if _G.TargetRebirthEnabled and value9 >= targetRebirthCount then
        _G.TargetRebirthEnabled = false
      end
    end)
  end, "Automatically rebirths until target amount is reached.")

  farming:AddSwitch("Auto Weight", function(p25)
    _G.AutoWeight = p25

    if p25 then
      local weight = game.Players.LocalPlayer.Backpack:FindFirstChild("Weight")

      if weight then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(weight)
      end
    else
      local weight2 = game.Players.LocalPlayer.Character:FindFirstChild("Weight")

      if weight2 then
        weight2.Parent = game.Players.LocalPlayer.Backpack
      end
    end

    task.spawn(function()
      while _G.AutoWeight do
        if not _G.AutoWeight then
          break
        end

        players.LocalPlayer.muscleEvent:FireServer("rep")
        task.wait(0.1)
      end
    end)
  end, "Levanta pesas automÃ¡ticamente")

  farming:AddSwitch("Auto Size 1", function(p26)
    _G.autoSizeActive = p26

    if p26 then
      spawn(function()
        while _G.autoSizeActive and wait() do
          replicatedStorage.rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 1)
        end
      end)
    end
  end, "Establece el tamaÃƒÂ±o del personaje a 1 continuamente")

  local cframe2 = CFrame.new(-8665.4, 17.21, -5792.9)
  local v48 = false
  farming:AddSwitch("Auto King", function(p27) v48 = p27 end):Set(false)

  task.spawn(function()
    local localPlayer9 = players.LocalPlayer
    local humanoidRootPart3 = (localPlayer9.Character or localPlayer9.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")

    while true do
      if v48 then
        if (humanoidRootPart3.Position - cframe2.Position).magnitude > 5 then
          humanoidRootPart3.CFrame = cframe2
        end
      end

      task.wait(0.05)
    end
  end)

  farming:AddLabel("Rocks:").TextSize = 22

  function gettool()
    for key5, value10 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
      if value10.Name == "Punch"
        and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(value10)
      end
    end

    players.LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
    players.LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
  end

  farming:AddSwitch("Tiny Rock", function(autoFarm)
    selectrock = "Tiny Island Rock"
    getgenv().autoFarm = autoFarm

    task.spawn(function()
      while getgenv().autoFarm do
        task.wait()

        if not getgenv().autoFarm then
          break
        end

        if players.LocalPlayer.Durability.Value >= 0 then
          for key6, value11 in pairs(v1.machinesFolder:GetDescendants()) do
            if value11.Name == "neededDurability" and value11.Value == 0
              and game.Players.LocalPlayer.Character:FindFirstChild("LeftHand")
              and game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
              local v49 = game

              firetouchinterest(
                value11.Parent.Rock, v49:GetService("Players").LocalPlayer.Character.RightHand,
                0
              )

              local v50 = game

              firetouchinterest(
                value11.Parent.Rock, v50:GetService("Players").LocalPlayer.Character.RightHand,
                1
              )

              local v51 = game

              firetouchinterest(
                value11.Parent.Rock, v51:GetService("Players").LocalPlayer.Character.LeftHand, 0
              )

              local v52 = game

              firetouchinterest(
                value11.Parent.Rock, v52:GetService("Players").LocalPlayer.Character.LeftHand, 1
              )

              gettool()
            end
          end
        end
      end
    end)
  end)

  farming:AddSwitch("Starter Rock", function(autoFarm2)
    selectrock = "Starter Island Rock"
    getgenv().autoFarm = autoFarm2

    task.spawn(function()
      while getgenv().autoFarm do
        task.wait()

        if not getgenv().autoFarm then
          break
        end

        if players.LocalPlayer.Durability.Value >= 100 then
          for key7, value12 in pairs(v1.machinesFolder:GetDescendants()) do
            if value12.Name == "neededDurability" and value12.Value == 100
              and game.Players.LocalPlayer.Character:FindFirstChild("LeftHand")
              and game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
              local v53 = game

              firetouchinterest(
                value12.Parent.Rock, v53:GetService("Players").LocalPlayer.Character.RightHand,
                0
              )

              local v54 = game

              firetouchinterest(
                value12.Parent.Rock, v54:GetService("Players").LocalPlayer.Character.RightHand,
                1
              )

              local v55 = game

              firetouchinterest(
                value12.Parent.Rock, v55:GetService("Players").LocalPlayer.Character.LeftHand, 0
              )

              local v56 = game

              firetouchinterest(
                value12.Parent.Rock, v56:GetService("Players").LocalPlayer.Character.LeftHand, 1
              )

              gettool()
            end
          end
        end
      end
    end)
  end)

  farming:AddSwitch("Legend Beach Rock", function(autoFarm3)
    selectrock = "Legend Beach Rock"
    getgenv().autoFarm = autoFarm3

    task.spawn(function()
      while getgenv().autoFarm do
        task.wait()

        if not getgenv().autoFarm then
          break
        end

        if players.LocalPlayer.Durability.Value >= 5000 then
          for key8, value13 in pairs(v1.machinesFolder:GetDescendants()) do
            if value13.Name == "neededDurability" and value13.Value == 5000
              and game.Players.LocalPlayer.Character:FindFirstChild("LeftHand")
              and game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
              local v57 = game

              firetouchinterest(
                value13.Parent.Rock, v57:GetService("Players").LocalPlayer.Character.RightHand,
                0
              )

              local v58 = game

              firetouchinterest(
                value13.Parent.Rock, v58:GetService("Players").LocalPlayer.Character.RightHand,
                1
              )

              local v59 = game

              firetouchinterest(
                value13.Parent.Rock, v59:GetService("Players").LocalPlayer.Character.LeftHand, 0
              )

              local v60 = game

              firetouchinterest(
                value13.Parent.Rock, v60:GetService("Players").LocalPlayer.Character.LeftHand, 1
              )

              gettool()
            end
          end
        end
      end
    end)
  end)

  farming:AddSwitch("Frozen Rock", function(autoFarm4)
    selectrock = "Frost Gym Rock"
    getgenv().autoFarm = autoFarm4

    task.spawn(function()
      while getgenv().autoFarm do
        task.wait()

        if not getgenv().autoFarm then
          break
        end

        if players.LocalPlayer.Durability.Value >= 150000 then
          for key9, value14 in pairs(v1.machinesFolder:GetDescendants()) do
            if value14.Name == "neededDurability" and value14.Value == 150000
              and game.Players.LocalPlayer.Character:FindFirstChild("LeftHand")
              and game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
              local v61 = game

              firetouchinterest(
                value14.Parent.Rock, v61:GetService("Players").LocalPlayer.Character.RightHand,
                0
              )

              local v62 = game

              firetouchinterest(
                value14.Parent.Rock, v62:GetService("Players").LocalPlayer.Character.RightHand,
                1
              )

              local v63 = game

              firetouchinterest(
                value14.Parent.Rock, v63:GetService("Players").LocalPlayer.Character.LeftHand, 0
              )

              local v64 = game

              firetouchinterest(
                value14.Parent.Rock, v64:GetService("Players").LocalPlayer.Character.LeftHand, 1
              )

              gettool()
            end
          end
        end
      end
    end)
  end)

  farming:AddSwitch("Mythical Rock", function(autoFarm5)
    selectrock = "Mythical Gym Rock"
    getgenv().autoFarm = autoFarm5

    task.spawn(function()
      while getgenv().autoFarm do
        task.wait()

        if not getgenv().autoFarm then
          break
        end

        if players.LocalPlayer.Durability.Value >= 400000 then
          for key10, value15 in pairs(v1.machinesFolder:GetDescendants()) do
            if value15.Name == "neededDurability" and value15.Value == 400000
              and game.Players.LocalPlayer.Character:FindFirstChild("LeftHand")
              and game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
              local v65 = game

              firetouchinterest(
                value15.Parent.Rock, v65:GetService("Players").LocalPlayer.Character.RightHand,
                0
              )

              local v66 = game

              firetouchinterest(
                value15.Parent.Rock, v66:GetService("Players").LocalPlayer.Character.RightHand,
                1
              )

              local v67 = game

              firetouchinterest(
                value15.Parent.Rock, v67:GetService("Players").LocalPlayer.Character.LeftHand, 0
              )

              local v68 = game

              firetouchinterest(
                value15.Parent.Rock, v68:GetService("Players").LocalPlayer.Character.LeftHand, 1
              )

              gettool()
            end
          end
        end
      end
    end)
  end)

  farming:AddSwitch("Eternal Rock", function(autoFarm6)
    selectrock = "Eternal Gym Rock"
    getgenv().autoFarm = autoFarm6

    task.spawn(function()
      while getgenv().autoFarm do
        task.wait()

        if not getgenv().autoFarm then
          break
        end

        if players.LocalPlayer.Durability.Value >= 750000 then
          for key11, value16 in pairs(v1.machinesFolder:GetDescendants()) do
            if value16.Name == "neededDurability" and value16.Value == 750000
              and game.Players.LocalPlayer.Character:FindFirstChild("LeftHand")
              and game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
              local v69 = game

              firetouchinterest(
                value16.Parent.Rock, v69:GetService("Players").LocalPlayer.Character.RightHand,
                0
              )

              local v70 = game

              firetouchinterest(
                value16.Parent.Rock, v70:GetService("Players").LocalPlayer.Character.RightHand,
                1
              )

              local v71 = game

              firetouchinterest(
                value16.Parent.Rock, v71:GetService("Players").LocalPlayer.Character.LeftHand, 0
              )

              local v72 = game

              firetouchinterest(
                value16.Parent.Rock, v72:GetService("Players").LocalPlayer.Character.LeftHand, 1
              )

              gettool()
            end
          end
        end
      end
    end)
  end)

  farming:AddSwitch("Legend Rock", function(autoFarm7)
    selectrock = "Legend Gym Rock"
    getgenv().autoFarm = autoFarm7

    task.spawn(function()
      while getgenv().autoFarm do
        task.wait()

        if not getgenv().autoFarm then
          break
        end

        if players.LocalPlayer.Durability.Value >= 1000000 then
          for key12, value17 in pairs(v1.machinesFolder:GetDescendants()) do
            if value17.Name == "neededDurability" and value17.Value == 1000000
              and game.Players.LocalPlayer.Character:FindFirstChild("LeftHand")
              and game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
              local v73 = game

              firetouchinterest(
                value17.Parent.Rock, v73:GetService("Players").LocalPlayer.Character.RightHand,
                0
              )

              local v74 = game

              firetouchinterest(
                value17.Parent.Rock, v74:GetService("Players").LocalPlayer.Character.RightHand,
                1
              )

              local v75 = game

              firetouchinterest(
                value17.Parent.Rock, v75:GetService("Players").LocalPlayer.Character.LeftHand, 0
              )

              local v76 = game

              firetouchinterest(
                value17.Parent.Rock, v76:GetService("Players").LocalPlayer.Character.LeftHand, 1
              )

              gettool()
            end
          end
        end
      end
    end)
  end)

  farming:AddSwitch("Muscle King Rock", function(autoFarm8)
    selectrock = "Muscle King Gym Rock"
    getgenv().autoFarm = autoFarm8

    task.spawn(function()
      while getgenv().autoFarm do
        task.wait()

        if not getgenv().autoFarm then
          break
        end

        if players.LocalPlayer.Durability.Value >= 5000000 then
          for key13, value18 in pairs(v1.machinesFolder:GetDescendants()) do
            if value18.Name == "neededDurability" and value18.Value == 5000000
              and game.Players.LocalPlayer.Character:FindFirstChild("LeftHand")
              and game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
              local v77 = game

              firetouchinterest(
                value18.Parent.Rock, v77:GetService("Players").LocalPlayer.Character.RightHand,
                0
              )

              local v78 = game

              firetouchinterest(
                value18.Parent.Rock, v78:GetService("Players").LocalPlayer.Character.RightHand,
                1
              )

              local v79 = game

              firetouchinterest(
                value18.Parent.Rock, v79:GetService("Players").LocalPlayer.Character.LeftHand, 0
              )

              local v80 = game

              firetouchinterest(
                value18.Parent.Rock, v80:GetService("Players").LocalPlayer.Character.LeftHand, 1
              )

              gettool()
            end
          end
        end
      end
    end)
  end)

  farming:AddSwitch("Jungle Rock", function(autoFarm9)
    selectrock = "Ancient Jungle Rock"
    getgenv().autoFarm = autoFarm9

    task.spawn(function()
      while getgenv().autoFarm do
        task.wait()

        if not getgenv().autoFarm then
          break
        end

        if players.LocalPlayer.Durability.Value >= 10000000 then
          for key14, value19 in pairs(v1.machinesFolder:GetDescendants()) do
            if value19.Name == "neededDurability" and value19.Value == 10000000
              and game.Players.LocalPlayer.Character:FindFirstChild("LeftHand")
              and game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
              local v81 = game

              firetouchinterest(
                value19.Parent.Rock, v81:GetService("Players").LocalPlayer.Character.RightHand,
                0
              )

              local v82 = game

              firetouchinterest(
                value19.Parent.Rock, v82:GetService("Players").LocalPlayer.Character.RightHand,
                1
              )

              local v83 = game

              firetouchinterest(
                value19.Parent.Rock, v83:GetService("Players").LocalPlayer.Character.LeftHand, 0
              )

              local v84 = game

              firetouchinterest(
                value19.Parent.Rock, v84:GetService("Players").LocalPlayer.Character.LeftHand, 1
              )

              gettool()
            end
          end
        end
      end
    end)
  end)

  farming:AddLabel("Op Farming:").TextSize = 22

  farming:AddSwitch("Auto Pushups + Jungle rock", function(autoFarmCombo)
    _G.AutoFarmCombo = autoFarmCombo
    selectrock = "Ancient Jungle Rock"

    task.spawn(function()
      while _G.AutoFarmCombo do
        task.wait()
        local localPlayer10 = game.Players.LocalPlayer
        local character8 = localPlayer10.Character

        if not character8 then
        else
          local pushups3 = localPlayer10.Backpack:FindFirstChild("Pushups")

          if pushups3 and character8:FindFirstChild("Humanoid") then
            character8.Humanoid:EquipTool(pushups3)
          end

          if localPlayer10:FindFirstChild("muscleEvent") then
            localPlayer10.muscleEvent:FireServer("rep")
          end

          if character8:FindFirstChild("LeftHand") and character8:FindFirstChild("RightHand")
            and localPlayer10.Durability.Value >= 10000000 then
            for key15, value20 in pairs(v1.machinesFolder:GetDescendants()) do
              if value20.Name == "neededDurability" and value20.Value == 10000000
                and value20.Parent:FindFirstChild("Rock") then
                local rock = value20.Parent.Rock

                firetouchinterest(rock, character8.RightHand, 0)
                firetouchinterest(rock, character8.RightHand, 1)
                firetouchinterest(rock, character8.LeftHand, 0)
                firetouchinterest(rock, character8.LeftHand, 1)

                if gettool then
                  gettool()
                end
              end
            end
          end
        end
      end
    end)
  end)

  farming:AddSwitch("Auto Handstand + Jungle rock", function(autoFarmCombo2)
    _G.AutoFarmCombo = autoFarmCombo2
    selectrock = "Ancient Jungle Rock"

    task.spawn(function()
      while _G.AutoFarmCombo do
        task.wait()
        local localPlayer11 = game.Players.LocalPlayer
        local character9 = localPlayer11.Character

        if not character9 then
        else
          local handstands3 = localPlayer11.Backpack:FindFirstChild("Handstands")

          if handstands3 and character9:FindFirstChild("Humanoid") then
            character9.Humanoid:EquipTool(handstands3)
          end

          if localPlayer11:FindFirstChild("muscleEvent") then
            localPlayer11.muscleEvent:FireServer("rep")
          end

          if character9:FindFirstChild("LeftHand") and character9:FindFirstChild("RightHand")
            and localPlayer11.Durability.Value >= 10000000 then
            for key16, value21 in pairs(v1.machinesFolder:GetDescendants()) do
              if value21.Name == "neededDurability" and value21.Value == 10000000
                and value21.Parent:FindFirstChild("Rock") then
                local rock2 = value21.Parent.Rock

                firetouchinterest(rock2, character9.RightHand, 0)
                firetouchinterest(rock2, character9.RightHand, 1)
                firetouchinterest(rock2, character9.LeftHand, 0)
                firetouchinterest(rock2, character9.LeftHand, 1)

                if gettool then
                  gettool()
                end
              end
            end
          end
        end
      end
    end)
  end)

  farming:AddSwitch("Auto Situps + jungle rock", function(autoFarmCombo3)
    _G.AutoFarmCombo = autoFarmCombo3
    selectrock = "Ancient Jungle Rock"

    task.spawn(function()
      while _G.AutoFarmCombo do
        task.wait()
        local localPlayer12 = game.Players.LocalPlayer
        local character10 = localPlayer12.Character

        if not character10 then
        else
          local situps3 = localPlayer12.Backpack:FindFirstChild("Situps")

          if situps3 and character10:FindFirstChild("Humanoid") then
            character10.Humanoid:EquipTool(situps3)
          end

          if localPlayer12:FindFirstChild("muscleEvent") then
            localPlayer12.muscleEvent:FireServer("rep")
          end

          if character10:FindFirstChild("LeftHand") and character10:FindFirstChild("RightHand")
            and localPlayer12.Durability.Value >= 10000000 then
            for key17, value22 in pairs(v1.machinesFolder:GetDescendants()) do
              if value22.Name == "neededDurability" and value22.Value == 10000000
                and value22.Parent:FindFirstChild("Rock") then
                local rock3 = value22.Parent.Rock

                firetouchinterest(rock3, character10.RightHand, 0)
                firetouchinterest(rock3, character10.RightHand, 1)
                firetouchinterest(rock3, character10.LeftHand, 0)
                firetouchinterest(rock3, character10.LeftHand, 1)

                if gettool then
                  gettool()
                end
              end
            end
          end
        end
      end
    end)
  end)
end

do
  local fastFarming = addWindow:AddTab("Fast Farming")
  fastFarming:AddLabel("Rebirthing").TextSize = 20

  fastFarming:AddSwitch("Fast Rebirth", function(p28)
    if p28 then
      task.spawn(function()
        local replicatedStorage2 = ReplicatedStorage

        local function f14()
          if localPlayer4:FindFirstChild("petsFolder") then
            for key18, value23 in pairs(localPlayer4.petsFolder:GetChildren()) do
              if value23:IsA("Folder") then
                for key19, value24 in pairs(value23:GetChildren()) do
                  replicatedStorage2.rEvents.equipPetEvent:FireServer("unequipPet", value24)
                end
              end
            end
          end

          task.wait(0.1)
        end

        local function f15(p29)
          f14()
          task.wait(0.01)

          if localPlayer4.petsFolder:FindFirstChild("Unique") then
            for key20, value25 in pairs(localPlayer4.petsFolder.Unique:GetChildren()) do
              if value25.Name == p29 then
                replicatedStorage2.rEvents.equipPetEvent:FireServer("equipPet", value25)
              end
            end
          end
        end

        local function f16(p30)
          local findFirstChild4 = workspace:FindFirstChild("machinesFolder")
            and workspace.machinesFolder:FindFirstChild(p30)

          if not findFirstChild4 then
            for key21, value26 in pairs(workspace:GetChildren()) do
              if value26:IsA("Folder") and value26.Name:find("machines") then
                findFirstChild4 = value26:FindFirstChild(p30)

                if findFirstChild4 then
                  break
                end
              end
            end
          end

          return findFirstChild4
        end

        local function f17()
          VirtualInputManager:SendKeyEvent(true, "E", false, game)
          task.wait(0.1)
          VirtualInputManager:SendKeyEvent(false, "E", false, game)
        end

        while p28 do
          local v85 = 10000 + 5000 * localPlayer4.leaderstats.Rebirths.Value

          if localPlayer4.ultimatesFolder:FindFirstChild("Golden Rebirth") then
            v85 = math.floor(v85
              * (1 - localPlayer4.ultimatesFolder["Golden Rebirth"].Value * 0.1))
          end

          formatNumber(v85)
          f14()
          task.wait(0.1)
          f15("Swift Samurai")

          while localPlayer4.leaderstats.Strength.Value < v85 do
            for j = 1, 45 do
              localPlayer4.muscleEvent:FireServer("rep")
            end

            task.wait(0.05)
          end

          f14()
          task.wait(0.1)
          f15("Tribal Overlord")
          local jungleBarLift = f16("Jungle Bar Lift")

          if jungleBarLift and jungleBarLift:FindFirstChild("interactSeat") then
            localPlayer4.Character.HumanoidRootPart.CFrame = jungleBarLift.interactSeat.CFrame
              * CFrame.new(0, 3, 0)

            local sit = localPlayer4.Character.Humanoid.Sit

            repeat
              task.wait(0.1)
              f17()
            until localPlayer4.Character.Humanoid.Sit
          end

          local value27 = localPlayer4.leaderstats.Rebirths.Value
          local value28 = localPlayer4.leaderstats.Rebirths.Value

          repeat
            replicatedStorage2.rEvents.rebirthRemote:InvokeServer("rebirthRequest")
            task.wait(0.1)
          until localPlayer4.leaderstats.Rebirths.Value > value27

          updateRebirth()
        end
      end)
    end
  end)

  fastFarming:AddLabel("Fast Strenght").TextSize = 20

  local v86 = false

  local function f18()
    return (v2.Network.ServerStatsItem["Data Ping"]:GetValue())
  end

  local function f19()
    local v87

    while v86 do
      if f18() > 2000 then
        repeat
          task.wait(0.5)
          v87 = f18() < 350 or not v86
        until v87
      else
        for k = 1, localPlayer.MembershipType == Enum.MembershipType.Premium and 17 or 17 do
          if not v86 then
            break
          end

          muscleEvent:FireServer("rep")
        end

        task.wait(0.02)
      end
    end
  end

  fastFarming:AddSwitch("Fast Strength", function(p31)
    if p31 then
      v86 = true
      f19()
    else
      v86 = false
    end
  end)

  fastFarming:AddLabel("Variable:").TextSize = 20

  local function f20()
    local proteinEgg = localPlayer.Character:FindFirstChild("Protein Egg")
      or localPlayer.Backpack:FindFirstChild("Protein Egg")

    if proteinEgg then
      muscleEvent:FireServer("proteinEgg", proteinEgg)
    end
  end

  local v88 = false

  task.spawn(function()
    while true do
      if v88 then
        f20()
        task.wait(1800)
      else
        task.wait(1)
      end
    end
  end)

  fastFarming:AddSwitch("Auto Egg", function(p32)
    v88 = p32

    if p32 then
      f20()
    end
  end):Set(false)

  fastFarming:AddButton("Anti Lag (Only for Fast Farm!)", function()
    local playerGui = localPlayer:WaitForChild("PlayerGui")
    local v89 = game
    local getChildren = playerGui.GetChildren
    local lighting2 = v89:GetService("Lighting")

    for key22, value29 in pairs(getChildren(playerGui)) do
      if value29:IsA("ScreenGui") then
        value29:Destroy()
      end
    end

    local function f21()
      for key23, value30 in pairs(lighting2:GetChildren()) do
        if value30:IsA("Sky") then
          value30:Destroy()
        end
      end

      local darkSky = Instance.new("Sky")
      darkSky.Name = "DarkSky"
      darkSky.SkyboxBk = "rbxassetid://0"
      darkSky.SkyboxDn = "rbxassetid://0"
      darkSky.SkyboxFt = "rbxassetid://0"
      darkSky.SkyboxLf = "rbxassetid://0"
      darkSky.SkyboxRt = "rbxassetid://0"
      darkSky.SkyboxUp = "rbxassetid://0"
      darkSky.Parent = lighting2

      lighting2.Brightness = 0
      lighting2.ClockTime = 0
      lighting2.TimeOfDay = "00:00:00"
      lighting2.OutdoorAmbient = Color3.new(0, 0, 0)
      lighting2.Ambient = Color3.new(0, 0, 0)
      lighting2.FogColor = Color3.new(0, 0, 0)
      lighting2.FogEnd = 100

      task.spawn(function()
        while true do
          wait(5)

          if not lighting2:FindFirstChild("DarkSky") then
            darkSky:Clone().Parent = lighting2
          end

          lighting2.Brightness = 0
          lighting2.ClockTime = 0
          lighting2.OutdoorAmbient = Color3.new(0, 0, 0)
          lighting2.Ambient = Color3.new(0, 0, 0)
          lighting2.FogColor = Color3.new(0, 0, 0)
          lighting2.FogEnd = 100
        end
      end)
    end

    local function f22()
      for key24, value31 in pairs(workspace:GetDescendants()) do
        if value31:IsA("ParticleEmitter") then
          value31:Destroy()
        end
      end
    end

    local function f23()
      for key25, value32 in pairs(workspace:GetDescendants()) do
        if value32:IsA("PointLight") or value32:IsA("SpotLight") or value32:IsA("SurfaceLight") then
          value32:Destroy()
        end
      end
    end

    f22()
    f23()
    f21()
  end)

  fastFarming:AddButton("Equip Swift Samurai", function()
    print("Botón presionado: equipando 8 Swift Samurai")
    local petsFolder = players.LocalPlayer:FindFirstChild("petsFolder")

    if not petsFolder then
      return
    else
      for key26, value33 in pairs(petsFolder:GetChildren()) do
        if value33:IsA("Folder") then
          for key27, value34 in pairs(value33:GetChildren()) do
            replicatedStorage.rEvents.equipPetEvent:FireServer("unequipPet", value34)
          end
        end
      end

      task.wait(0.1)
      local count = 0

      for key28, value35 in pairs(petsFolder:GetChildren()) do
        if value35:IsA("Folder") then
          for key29, value36 in pairs(value35:GetChildren()) do
            if value36.Name == "Swift Samurai" then
              replicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", value36)
              count = count + 1
              print("Equipado Swift Samurai #" .. count)

              if count >= 8 then
                return
              end
            end
          end
        end
      end

      print("Se equiparon " .. count .. " Swift Samurai")
      return
    end
  end)

  fastFarming:AddButton("Equip Tribal Overlord", function()
    print("Botón presionado: equipando 8 Tribal Overlord")
    local petsFolder2 = players.LocalPlayer:WaitForChild("petsFolder")

    for key30, value37 in pairs(petsFolder2:GetChildren()) do
      if value37:IsA("Folder") then
        for key31, value38 in pairs(value37:GetChildren()) do
          replicatedStorage.rEvents.equipPetEvent:FireServer("unequipPet", value38)
          task.wait(0.05)
        end
      end
    end

    task.wait(0.1)
    local count2 = 0

    for key32, value39 in pairs(petsFolder2:GetChildren()) do
      if value39:IsA("Folder") then
        for key33, value40 in pairs(value39:GetChildren()) do
          if value40.Name == "Tribal Overlord" then
            replicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", value40)
            count2 = count2 + 1
            print("Equipado Tribal Overlord #" .. count2)
            task.wait(0.05)

            if count2 >= 8 then
              break
            end
          end
        end
      end

      if count2 >= 8 then
        break
      end
    end

    print("Se equiparon " .. count2 .. " Tribal Overlord")
  end)

  fastFarming:AddButton("Jungle Squat", function()
    local localPlayer13 = game.Players.LocalPlayer

    local character11 = localPlayer13.Character or localPlayer13.CharacterAdded:Wait()

    character11:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(
      -8371.4336, 6.7981, 2858.8853
    )

    task.wait(0.2)
    virtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    virtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
  end)

  fastFarming:AddButton("Jungle lift", function()
    local localPlayer14 = game.Players.LocalPlayer

    local character12 = localPlayer14.Character or localPlayer14.CharacterAdded:Wait()

    character12:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(
      -8652.8672, 29.2667, 2089.2617
    )

    task.wait(0.2)
    virtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    virtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
  end)
end

killing = addWindow:AddTab("Killing")

local function f24()
  for key34, value41 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if value41.Name == "Punch" and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
      game.Players.LocalPlayer.Character.Humanoid:EquipTool(value41)
    end
  end

  game.Players.LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
  game.Players.LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
end

local function f25(p33)
  return p33 and p33.Character and p33.Character:FindFirstChild("HumanoidRootPart")
    and p33.Character:FindFirstChild("Humanoid") and p33.Character.Humanoid.Health > 0
end

local function f26()
  if not game.Players.LocalPlayer.Character then
    local character13 = game.Players.LocalPlayer.Character

    repeat
      task.wait()
    until game.Players.LocalPlayer.Character
  end

  return game.Players.LocalPlayer.Character
end

local function f27(p34)
  if not f25(p34) then
    return
  end

  local v90 = f26()

  if v90 and v90:FindFirstChild("LeftHand") then
    pcall(function()
      firetouchinterest(p34.Character.HumanoidRootPart, v90.LeftHand, 0)
      firetouchinterest(p34.Character.HumanoidRootPart, v90.LeftHand, 1)
      f24()
    end)
  end
end

do
  killing:AddLabel("Misc:").TextSize = 22

  local addDropdown2 = killing:AddDropdown("Select Pack Pets", function(p35)
    for key35, value42 in pairs(game.Players.LocalPlayer.petsFolder:GetChildren()) do
      if value42:IsA("Folder") then
        for key36, value43 in pairs(value42:GetChildren()) do
          replicatedStorage.rEvents.equipPetEvent:FireServer("unequipPet", value43)
        end
      end
    end

    task.wait(0.2)
    local v91 = {}

    for key37, value44 in pairs(game.Players.LocalPlayer.petsFolder.Unique:GetChildren()) do
      if value44.Name == p35 then
        table.insert(v91, value44)
      end
    end

    for m = 1, math.min(8, #v91) do
      replicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", v91[m])
      task.wait(0.1)
    end
  end)

  addDropdown2:Add("Wild Wizard")
  addDropdown2:Add("Mighty Monster")
  addDropdown2:Add("Chaos Sorcerer")
  addDropdown2:Add("Small Fry")

  local localPlayer15 = players.LocalPlayer
  local changeSpeedSizeRemote = replicatedStorage:WaitForChild("rEvents"):WaitForChild("changeSpeedSizeRemote")
  local v92 = false

  local function f28()
    if not v92 or not localPlayer15.Character then
      return
    else
      local count3 = 0

      for index5, value45 in ipairs(localPlayer15.Character:GetChildren()) do
        if value45.Name == "Protein Egg" then
          count3 = count3 + 1

          if count3 > 1 then
            value45.Parent = localPlayer15.Backpack
          end
        end
      end

      if count3 == 0 then
        local proteinEgg2 = localPlayer15.Backpack:FindFirstChild("Protein Egg")

        if proteinEgg2 then
          proteinEgg2.Parent = localPlayer15.Character
        end
      end

      return
    end
  end

  local v93, connect

  killing:AddSwitch("Kill while dead", function(p36)
    v92 = p36

    if p36 then
      changeSpeedSizeRemote:InvokeServer("changeSize", (0 / 0))

      v93 = task.spawn(function()
        while v92 do
          f28()
          task.wait(0.2)
        end
      end)

      connect = localPlayer15.CharacterAdded:Connect(function(character14)
        task.wait(0.5)
        f28()
      end)

      f28()
    else
      if v93 then
        task.cancel(v93)
      end

      if connect then
        connect:Disconnect()
      end
    end
  end)
end

do
  killing:AddSwitch("Remove Attack Animations", function(p37)
    local v94, f29, f30, f31

    if p37 then
      v94 = { ["rbxassetid://3638729053"] = true, ["rbxassetid://3638767427"] = true }

      function f29()
        local character15 = game.Players.LocalPlayer.Character

        if not character15 or not character15:FindFirstChild("Humanoid") then
          return
        else
          local humanoid3 = character15:FindFirstChild("Humanoid")

          for key38, value46 in pairs(humanoid3:GetPlayingAnimationTracks()) do
            if value46.Animation then
              local lower3 = value46.Name:lower()

              if v94[value46.Animation.AnimationId] or lower3:match("punch")
                or lower3:match("attack") or lower3:match("right") then
                value46:Stop()
              end
            end
          end

          _G.AnimBlockConnection = humanoid3.AnimationPlayed:Connect(function(p38)
            if p38.Animation then
              local lower4 = p38.Name:lower()

              if v94[p38.Animation.AnimationId] or lower4:match("punch")
                or lower4:match("attack") or lower4:match("right") then
                p38:Stop()
              end
            end
          end)

          return
        end
      end

      function f30(p39)
        if p39 and (p39.Name == "Punch" or p39.Name:match("Attack") or p39.Name:match("Right")) then
          if not p39:GetAttribute("ActivatedOverride") then
            p39:SetAttribute("ActivatedOverride", true)

            local g = _G
            g.ToolConnections = _G.ToolConnections or {}

            local activated = p39.Activated

            _G.ToolConnections[p39] = activated:Connect(function()
              task.wait(0.05)
              local character16 = game.Players.LocalPlayer.Character

              if character16 and character16:FindFirstChild("Humanoid") then
                for key39, value47 in pairs(character16.Humanoid:GetPlayingAnimationTracks()) do
                  if value47.Animation then
                    local lower5 = value47.Name:lower()

                    if v94[value47.Animation.AnimationId] or lower5:match("punch")
                      or lower5:match("attack") or lower5:match("right") then
                      value47:Stop()
                    end
                  end
                end
              end
            end)
          end
        end
      end

      function f31()
        for key40, value48 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
          f30(value48)
        end

        local character17 = game.Players.LocalPlayer.Character

        if character17 then
          for key41, value49 in pairs(character17:GetChildren()) do
            if value49:IsA("Tool") then
              f30(value49)
            end
          end
        end

        _G.BackpackAddedConnection = game.Players.LocalPlayer.Backpack.ChildAdded:Connect(function(child)
          if child:IsA("Tool") then
            task.wait(0.1)
            f30(child)
          end
        end)

        if character17 then
          _G.CharacterToolAddedConnection = character17.ChildAdded:Connect(function(child2)
            if child2:IsA("Tool") then
              task.wait(0.1)
              f30(child2)
            end
          end)
        end
      end

      _G.AnimMonitorConnection = runService.Heartbeat:Connect(function()
        if tick() % 0.5 < 0.01 then
          local character18 = game.Players.LocalPlayer.Character

          if character18 and character18:FindFirstChild("Humanoid") then
            for key42, value50 in pairs(character18.Humanoid:GetPlayingAnimationTracks()) do
              if value50.Animation then
                local lower6 = value50.Name:lower()

                if v94[value50.Animation.AnimationId] or lower6:match("punch")
                  or lower6:match("attack") or lower6:match("right") then
                  value50:Stop()
                end
              end
            end
          end
        end
      end)

      _G.CharacterAddedConnection = game.Players.LocalPlayer.CharacterAdded:Connect(function(character19)
        task.wait(1)
        f29()
        f31()

        if _G.CharacterToolAddedConnection then
          _G.CharacterToolAddedConnection:Disconnect()
        end

        _G.CharacterToolAddedConnection = character19.ChildAdded:Connect(function(child3)
          if child3:IsA("Tool") then
            task.wait(0.1)
            f30(child3)
          end
        end)
      end)

      f29()
      f31()
    else
      if _G.AnimBlockConnection then
        _G.AnimBlockConnection:Disconnect()
        _G.AnimBlockConnection = nil
      end

      if _G.AnimMonitorConnection then
        _G.AnimMonitorConnection:Disconnect()
        _G.AnimMonitorConnection = nil
      end

      if _G.CharacterAddedConnection then
        _G.CharacterAddedConnection:Disconnect()
        _G.CharacterAddedConnection = nil
      end

      if _G.BackpackAddedConnection then
        _G.BackpackAddedConnection:Disconnect()
        _G.BackpackAddedConnection = nil
      end

      if _G.CharacterToolAddedConnection then
        _G.CharacterToolAddedConnection:Disconnect()
        _G.CharacterToolAddedConnection = nil
      end

      if _G.ToolConnections then
        for key43, value51 in pairs(_G.ToolConnections) do
          if value51 then
            value51:Disconnect()
          end

          if key43 and key43:GetAttribute("ActivatedOverride") then
            key43:SetAttribute("ActivatedOverride", nil)
          end
        end

        _G.ToolConnections = nil
      end
    end
  end):Set(false)

  killing:AddSwitch("Fast Punch", function(p40)
    _G.autoPunchActive = p40

    if p40 then
      task.spawn(function()
        while _G.autoPunchActive do
          local punch4 = localPlayer4.Backpack:FindFirstChild("Punch")

          if punch4 then
            punch4.Parent = localPlayer4.Character

            if punch4:FindFirstChild("attackTime") then
              punch4.attackTime.Value = 0
            end
          end

          task.wait()
        end
      end)

      task.spawn(function()
        while _G.autoPunchActive do
          local punch5 = localPlayer4.Character
            and localPlayer4.Character:FindFirstChild("Punch")

          if punch5 then
            punch5:Activate()
          end

          task.wait()
        end
      end)
    else
      local punch6 = localPlayer4.Character and localPlayer4.Character:FindFirstChild("Punch")

      if punch6 then
        punch6.Parent = localPlayer4.Backpack
      end
    end
  end)

  killing:AddLabel("Auto Kill:").TextSize = 22

  local g2 = _G
  g2.whitelistedPlayers = _G.whitelistedPlayers or {}

  local g3 = _G
  g3.blacklistedPlayers = _G.blacklistedPlayers or {}
end

local function f32(p41)
  for index6, value52 in ipairs(_G.whitelistedPlayers) do
    if value52:lower() == p41.Name:lower() then
      return true
    end
  end

  return false
end

do
  local function f33(p42)
    for index7, value53 in ipairs(_G.blacklistedPlayers) do
      if value53:lower() == p42.Name:lower() then
        return true
      end
    end

    return false
  end

  local function f34(p43)
    return p43.DisplayName .. " | " .. p43.Name
  end

  local addDropdown3 = killing:AddDropdown("Add to Whitelist", function(p44)
    local match = p44:match("| (.+)$")

    if match then
      local gsub = match:gsub("^%s*(.-)%s*$", "%1")

      for index8, value54 in ipairs(_G.whitelistedPlayers) do
        if value54:lower() == gsub:lower() then
          return
        end
      end

      table.insert(_G.whitelistedPlayers, gsub)
      return
    end
  end)

  killing:AddSwitch("Auto Kill All", function(p45)
    _G.killAll = p45
    local v95, v96

    if p45 then
      if not _G.killAllConnection then
        v95 = 0
        v96 = 1

        _G.killAllConnection = runService.Heartbeat:Connect(function()
          if not _G.killAll then
            return
          end

          if tick() - v95 >= 0.225 then
            v95 = tick()
            local v97 = {}

            for index9, value55 in ipairs((players:GetPlayers())) do
              if value55 ~= game.Players.LocalPlayer and not f32(value55) and f25(value55) then
                table.insert(v97, value55)
              end
            end

            if #v97 > 0 then
              if v96 > #v97 then
                v96 = 1
              end

              f27(v97[v96])
              v96 = v96 + 1
            end
          end
        end)
      end
    elseif _G.killAllConnection then
      _G.killAllConnection:Disconnect()
      _G.killAllConnection = nil
    end
  end)

  killing:AddSwitch("Whitelist Friends", function(p46)
    _G.whitelistFriends = p46

    if p46 then
      for key44, value56 in pairs(game.Players:GetPlayers()) do
        if value56 ~= game.Players.LocalPlayer
          and value56:IsFriendsWith(game.Players.LocalPlayer.UserId) then
          local name2 = value56.Name
          local v98 = false

          for index10, value57 in ipairs(_G.whitelistedPlayers) do
            if value57:lower() == name2:lower() then
              v98 = true
              break
            end
          end

          if not v98 then
            table.insert(_G.whitelistedPlayers, name2)
          end
        end
      end

      game.Players.PlayerAdded:Connect(function(player)
        if _G.whitelistFriends and player:IsFriendsWith(game.Players.LocalPlayer.UserId) then
          local name3 = player.Name
          local v99 = false

          for index11, value58 in ipairs(_G.whitelistedPlayers) do
            if value58:lower() == name3:lower() then
              v99 = true
              break
            end
          end

          if not v99 then
            table.insert(_G.whitelistedPlayers, name3)
          end
        end
      end)
    end
  end)

  local addDropdown4 = killing:AddDropdown("Add to Killlist", function(p47)
    local match2 = p47:match("| (.+)$")

    if match2 then
      local gsub2 = match2:gsub("^%s*(.-)%s*$", "%1")

      for index12, value59 in ipairs(_G.blacklistedPlayers) do
        if value59:lower() == gsub2:lower() then
          return
        end
      end

      table.insert(_G.blacklistedPlayers, gsub2)
      return
    end
  end)

  for index13, value60 in ipairs(players:GetPlayers()) do
    if value60 ~= game.Players.LocalPlayer then
      local v100 = f34(value60)
      addDropdown3:Add(v100)
      addDropdown4:Add(v100)
    end
  end

  players.PlayerAdded:Connect(function(player2)
    if player2 ~= game.Players.LocalPlayer then
      local v101 = f34(player2)
      addDropdown3:Add(v101)
      addDropdown4:Add(v101)
    end
  end)

  killing:AddSwitch("Kill List", function(p48)
    _G.killBlacklistedOnly = p48

    if p48 then
      if not _G.blacklistKillConnection then
        _G.blacklistKillConnection = runService.Heartbeat:Connect(function()
          if _G.killBlacklistedOnly then
            for index14, value61 in ipairs(players:GetPlayers()) do
              if value61 ~= game.Players.LocalPlayer and f33(value61) then
                f27(value61)
              end
            end
          end
        end)
      end
    elseif _G.blacklistKillConnection then
      _G.blacklistKillConnection:Disconnect()
      _G.blacklistKillConnection = nil
    end
  end)

  local v102 = false

  local function f35()
    return game.Players:GetPlayers()
  end

  local connect2, currentCamera

  local function f36(p49)
    if connect2 then
      connect2:Disconnect()
    end

    if p49 and p49.Character then
      local humanoid4 = p49.Character:FindFirstChildOfClass("Humanoid")

      if humanoid4 then
        currentCamera.CameraSubject = humanoid4

        connect2 = p49.CharacterAdded:Connect(function(character20)
          task.wait(0.2)
          local humanoid5 = character20:FindFirstChildOfClass("Humanoid")

          if humanoid5 then
            currentCamera.CameraSubject = humanoid5
          end
        end)
      end
    end
  end

  currentCamera = workspace.CurrentCamera
  local v103

  local addDropdown5 = killing:AddDropdown("Choose Player", function(p50)
    for index15, value62 in ipairs(f35()) do
      if p50 == value62.DisplayName .. " | " .. value62.Name then
        v103 = value62

        if v102 then
          f36(value62)
        end

        break
      end
    end
  end)

  local addSwitch = killing:AddSwitch("Spectate", function(p51)
    v102 = p51

    if v102 and v103 then
      f36(v103)
    else
      if connect2 then
        connect2:Disconnect()
        connect2 = nil
      end

      local localPlayer16 = game.Players.LocalPlayer

      if localPlayer16.Character then
        local humanoid6 = localPlayer16.Character:FindFirstChildOfClass("Humanoid")

        if humanoid6 then
          currentCamera.CameraSubject = humanoid6
        end
      end
    end
  end)

  for index16, value63 in ipairs(f35()) do
    addDropdown5:Add(value63.DisplayName .. " | " .. value63.Name)
  end

  game.Players.PlayerAdded:Connect(function(player3)
    addDropdown5:Add(player3.DisplayName .. " | " .. player3.Name)
  end)

  game.Players.PlayerRemoving:Connect(function(player4)
    if v103 and v103 == player4 then
      v103 = nil

      if v102 then
        addSwitch:Set(false)
      end
    end
  end)
end

do
  killing:AddLabel("Kill Aura:").TextSize = 22
  local color = Color3.fromRGB(50, 163, 255)

  _G.showDeathRing = false
  _G.deathRingRange = 20

  local part

  local function f37()
    if not part then
      return
    else
      local v104 = (_G.deathRingRange or 20) * 2
      part.Size = Vector3.new(0.2, v104, v104)
      return
    end
  end

  killing:AddTextBox("Range 1-140", function(p52)
    local v105 = tonumber(p52)

    if v105 then
      _G.deathRingRange = math.clamp(v105, 1, 140)
      f37()
    end
  end)

  local function f38()
    if _G.showDeathRing then
      part = Instance.new("Part")
      part.Shape = Enum.PartType.Cylinder
      part.Material = Enum.Material.Neon
      part.Color = color
      part.Transparency = 0.6
      part.Anchored = true
      part.CanCollide = false
      part.CastShadow = false

      f37()
      part.Parent = workspace
    elseif part then
      part:Destroy()
      part = nil
    end
  end

  local function f39()
    if not part then
      return
    else
      local v106 = f26()
      local humanoidRootPart4 = v106 and v106:FindFirstChild("HumanoidRootPart")

      if humanoidRootPart4 then
        part.CFrame = humanoidRootPart4.CFrame * CFrame.Angles(0, 0, math.rad(90))
      end

      return
    end
  end

  local addSwitch2 = killing:AddSwitch("Death Ring", function(p53)
    _G.deathRingEnabled = p53

    if p53 then
      if not _G.deathRingConnection then
        _G.deathRingConnection = runService.Heartbeat:Connect(function()
          f39()
          local v107 = f26()

          local position = v107 and v107:FindFirstChild("HumanoidRootPart")
            and v107.HumanoidRootPart.Position

          if not position then
            return
          end

          for index17, value64 in ipairs(players:GetPlayers()) do
            if value64 ~= game.Players.LocalPlayer and not f32(value64) and f25(value64) then
              if (position - value64.Character.HumanoidRootPart.Position).Magnitude
                <= (_G.deathRingRange or 20) then
                f27(value64)
              end
            end
          end
        end)
      end
    elseif _G.deathRingConnection then
      _G.deathRingConnection:Disconnect()
      _G.deathRingConnection = nil
    end
  end)

  local addSwitch3 = killing:AddSwitch("Show Ring", function(showDeathRing)
    _G.showDeathRing = showDeathRing
    f38()
  end)

  addSwitch2:Set(false)
  addSwitch3:Set(false)
end

do
  local whitelistNone = killing:AddLabel("Whitelist: None")
  whitelistNone.TextColor3 = Color3.fromRGB(26, 122, 212)
  whitelistNone.TextSize = 17

  killing:AddButton("Clear Whitelist", function() _G.whitelistedPlayers = {} end)

  local killlistNone = killing:AddLabel("Killlist: None")
  killlistNone.TextColor3 = Color3.fromRGB(191, 58, 25)
  killlistNone.TextSize = 17

  killing:AddButton("Clear Blacklist", function() _G.blacklistedPlayers = {} end)

  local function f40()
    if #_G.whitelistedPlayers == 0 then
      whitelistNone.Text = "Whitelist: None"
    else
      whitelistNone.Text = "Whitelist: " .. table.concat(_G.whitelistedPlayers, ", ")
    end
  end

  local function f41()
    if #_G.blacklistedPlayers == 0 then
      killlistNone.Text = "Killlist: None"
    else
      killlistNone.Text = "Killlist: " .. table.concat(_G.blacklistedPlayers, ", ")
    end
  end

  task.spawn(function()
    while true do
      f40()
      f41()
      task.wait(0.2)
    end
  end)

  spyStats = addWindow:AddTab("Spy Stats")
end

do
  match3 = ""

  local addDropdown6 = spyStats:AddDropdown("Select Player", function(p54)
    match3 = p54:match("| (.+)")
    previousValues = {}
  end)

  local v108 = {}

  for key45, value65 in pairs(players:GetPlayers()) do
    table.insert(v108, value65.DisplayName .. " | " .. value65.Name)
  end

  for index18, value66 in ipairs(v108) do
    addDropdown6:Add(value66)
  end
end

local function f42(p55)
  return tostring(p55):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "")
end

local function f43(p56)
  local v109 = p56
  local v110 = { "", "K", "M", "B", "T", "Qa", "Qi" }
  local v111 = 1

  while v109 >= 1000 do
    v109 = v109 / 1000
    v111 = v111 + 1
  end

  return string.format("%.2f", v109) .. v110[v111]
end

local function f44(p57)
  return "[ " .. f42(p57) .. " | " .. f43(p57) .. " ]"
end

do
  local addLabel = spyStats:AddLabel("")
  local addLabel2 = spyStats:AddLabel("")
  local addLabel3 = spyStats:AddLabel("")
  local addLabel4 = spyStats:AddLabel("")
  local addLabel5 = spyStats:AddLabel("")
  local addLabel6 = spyStats:AddLabel("")
  local addLabel7 = spyStats:AddLabel("")
  local addLabel8 = spyStats:AddLabel("")
  local addLabel9 = spyStats:AddLabel("")
  local addLabel10 = spyStats:AddLabel("")
  local addLabel11 = spyStats:AddLabel("")
  local addLabel12 = spyStats:AddLabel("")

  task.spawn(function()
    while task.wait(0) do
      if match3 ~= "" then
        local findFirstChild5 = game.Players:FindFirstChild(match3)

        if findFirstChild5 then
          if findFirstChild5:FindFirstChild("Gems") then
            addLabel2.Text = "Gems: " .. f44(findFirstChild5.Gems.Value)
          end

          if findFirstChild5:FindFirstChild("Agility") then
            addLabel4.Text = "Agility: " .. f44(findFirstChild5.Agility.Value)
          end

          if findFirstChild5:FindFirstChild("Durability") then
            addLabel5.Text = "Durability: " .. f44(findFirstChild5.Durability.Value)
          end

          if findFirstChild5:FindFirstChild("muscleKingTime") then
            addLabel7.Text = "Muscle King Time: " .. f44(findFirstChild5.muscleKingTime.Value)
          end

          if findFirstChild5:FindFirstChild("customSize") then
            addLabel9.Text = "Custom Size: " .. f44(findFirstChild5.customSize.Value)
          end

          if findFirstChild5:FindFirstChild("customSpeed") then
            addLabel10.Text = "Custom Speed: " .. f44(findFirstChild5.customSpeed.Value)
          end

          if findFirstChild5:FindFirstChild("evilKarma") then
            addLabel11.Text = "Evil Karma: " .. f44(findFirstChild5.evilKarma.Value)
          end

          if findFirstChild5:FindFirstChild("goodKarma") then
            addLabel12.Text = "Good Karma: " .. f44(findFirstChild5.goodKarma.Value)
          end

          local leaderstats2 = findFirstChild5:FindFirstChild("leaderstats")

          if leaderstats2 then
            if leaderstats2:FindFirstChild("Strength") then
              addLabel.Text = "Strength: " .. f44(leaderstats2.Strength.Value)
            end

            if leaderstats2:FindFirstChild("Rebirths") then
              addLabel3.Text = "Rebirth: " .. f44(leaderstats2.Rebirths.Value)
            end

            if leaderstats2:FindFirstChild("Kills") then
              addLabel6.Text = "Kills: " .. f44(leaderstats2.Kills.Value)
            end
          end

          if findFirstChild5:FindFirstChild("currentMap") then
            addLabel8.Text = "Current Map: " .. tostring(findFirstChild5.currentMap.Value)
          else
            addLabel8.Text = "Current Map:"
          end
        end
      end
    end
  end)
end

do
  spyStats:AddLabel("")
  spyStats:AddLabel("Advanced Stats:").TextSize = 24

  local enemyHealthNA = spyStats:AddLabel("Enemy Health: N/A")
  enemyHealthNA.TextSize = 20
  enemyHealthNA.TextColor3 = Color3.fromRGB(255, 255, 255)

  local yourDamageNA = spyStats:AddLabel("Your Damage: N/A")
  yourDamageNA.TextSize = 20
  yourDamageNA.TextColor3 = Color3.fromRGB(255, 255, 255)

  local hitsToKillNA = spyStats:AddLabel("Hits to Kill: N/A")
  hitsToKillNA.TextSize = 20
  hitsToKillNA.TextColor3 = Color3.fromRGB(255, 255, 255)

  local function f45(p58)
    if not p58 then
      return 0
    else
      local value67 = 0

      local durability = p58:FindFirstChild("Durability")
        or p58:FindFirstChild("leaderstats") and p58.leaderstats:FindFirstChild("Durability")

      if durability then
        value67 = durability.Value
      end

      local v112 = 1
      local ultimatesFolder = p58:FindFirstChild("ultimatesFolder")

      if ultimatesFolder then
        local infernalHealth = ultimatesFolder:FindFirstChild("Infernal Health")

        if infernalHealth then
          v112 = v112 + 0.15 * (infernalHealth.Value or 0)
        end
      end

      local backpack3 = p58:FindFirstChild("Backpack")

      if backpack3 then
        local equippedPets = backpack3:FindFirstChild("EquippedPets")

        local equippedPets2 = equippedPets
        equippedPets2 = equippedPets or backpack3:FindFirstChild("equippedPets")

        if equippedPets2 then
          for index19, value68 in ipairs(equippedPets2:GetChildren()) do
            if string.lower(tostring(value68)):match("mighty")
              and string.lower(tostring(value68)):match("monster") then
              v112 = v112 + 0.5
              break
            end
          end
        end
      end

      return value67 * v112
    end
  end

  local function f46(p59, p60)
    if p60 <= 0 then
      return "âˆž"
    else
      local v113 = math.ceil(p59 / p60)

      if v113 > 50 then
        return "âˆž"
      end

      if v113 < 1 then
        return 1
      end

      return v113
    end
  end

  local function f47()
    local localPlayer17 = game.Players.LocalPlayer

    if not localPlayer17 then
      return 0
    else
      local strength = nil
      local leaderstats3 = localPlayer17:FindFirstChild("leaderstats")

      if leaderstats3 then
        strength = leaderstats3:FindFirstChild("Strength")
      end

      if not strength then
        return 0
      else
        local v114 = strength.Value * 0.0667
        local v115 = 1
        local ultimatesFolder2 = localPlayer17:FindFirstChild("ultimatesFolder")

        if ultimatesFolder2 then
          local demonDamage = ultimatesFolder2:FindFirstChild("Demon Damage")

          if demonDamage then
            v115 = v115 + math.min(0.1 * (demonDamage.Value or 0), 0.5)
          end
        end

        local backpack4 = localPlayer17:FindFirstChild("Backpack")

        if backpack4 then
          local equippedPets3 = backpack4:FindFirstChild("EquippedPets")

          local equippedPets4 = equippedPets3
          equippedPets4 = equippedPets3 or backpack4:FindFirstChild("equippedPets")

          if equippedPets4 then
            for index20, value69 in ipairs(equippedPets4:GetChildren()) do
              if string.lower(tostring(value69)):match("wild")
                and string.lower(tostring(value69)):match("wizard") then
                v115 = v115 + 0.5
                break
              end
            end
          end
        end

        return v114 * v115
      end
    end
  end

  local function f48(p61)
    if not p61 then
      enemyHealthNA.Text = "Enemy Health: N/A"
      yourDamageNA.Text = "Your Damage: N/A"
      hitsToKillNA.Text = "Hits to Kill: N/A"
      return
    else
      local v116 = f45(p61)
      local v117 = f47()
      local v118 = f46(v116, v117)
      enemyHealthNA.Text = "Enemy Health: " .. f44(v116)
      yourDamageNA.Text = "Your Damage: " .. f44(v117)
      hitsToKillNA.Text = "Hits to Kill: " .. tostring(v118)
      return
    end
  end

  task.spawn(function()
    while task.wait(0.3) do
      f48((game.Players:FindFirstChild(match3)))
    end
  end)
end

do
  PetsTab = addWindow:AddTab("Inventory")

  local petsTab = PetsTab
  petsTab:AddLabel("Pets:").TextSize = 22

  v119 = "Darkstar Hunter "

  addDropdown7 = PetsTab:AddDropdown("Choose Pet", function(p62) v119 = p62 end)
  addDropdown7:Add("Darkstar Hunter")
  addDropdown7:Add("Neon Guardian")
  addDropdown7:Add("Blue Birdie")
  addDropdown7:Add("Blue Bunny")
  addDropdown7:Add("Blue Firecaster")
  addDropdown7:Add("Blue Pheonix")
  addDropdown7:Add("Crimson Falcon")
end

addDropdown7:Add("Cybernetic Showdown Dragon")
addDropdown7:Add("Dark Golem")
addDropdown7:Add("Dark Legends Manticore")
addDropdown7:Add("Dark Vampy")
addDropdown7:Add("Eternal Strike Leviathan")
addDropdown7:Add("Frostwave Legends Penguin")
addDropdown7:Add("Gold Warrior")
addDropdown7:Add("Golden Pheonix")
addDropdown7:Add("Golden Viking")
addDropdown7:Add("Green Butterfly")
addDropdown7:Add("Green Firecaster")
addDropdown7:Add("Infernal Dragon")
addDropdown7:Add("Lightning Strike Phantom")
addDropdown7:Add("Magic Butterfly")
addDropdown7:Add("Muscle Sensei")
addDropdown7:Add("Orange Hedgehog")
addDropdown7:Add("Orange Pegasus")
addDropdown7:Add("Phantom Genesis Dragon")
addDropdown7:Add("Purple Dragon")
addDropdown7:Add("Purple Falcon")
addDropdown7:Add("Red Dragon")
addDropdown7:Add("Red Firecaster")
addDropdown7:Add("Red Kitty")
addDropdown7:Add("Silver Dog")

do
  addDropdown7:Add("Ultimate Supernova Pegasus")
  addDropdown7:Add("Ultra Birdie")
  addDropdown7:Add("White Pegasus")
  addDropdown7:Add("White Pheonix")
  addDropdown7:Add("Yellow Butterfly")

  PetsTab:AddSwitch("Buy Pet", function(p63)
    _G.AutoHatchPet = p63

    if p63 then
      spawn(function()
        while _G.AutoHatchPet and v119 ~= "" do
          local findFirstChild6 = replicatedStorage.cPetShopFolder:FindFirstChild(v119)

          if findFirstChild6 then
            replicatedStorage.cPetShopRemote:InvokeServer(findFirstChild6)
          end

          task.wait(0.1)
        end
      end)
    end
  end)

  local petsTab2 = PetsTab
  petsTab2:AddLabel("Auras:").TextSize = 22

  v120 = "Entropic Blast"

  local addDropdown8 = PetsTab:AddDropdown("Select Aura", function(p64) v120 = p64 end)
  addDropdown8:Add("Entropic Blast")
  addDropdown8:Add("Muscle King")
  addDropdown8:Add("Astral Electro")
  addDropdown8:Add("Azure Tundra")
  addDropdown8:Add("Blue Aura")
  addDropdown8:Add("Dark Electro")
  addDropdown8:Add("Dark Lightning")
  addDropdown8:Add("Dark Storm")
  addDropdown8:Add("Electro")
  addDropdown8:Add("Enchanted Mirage")
  addDropdown8:Add("Eternal Megastrike")
  addDropdown8:Add("Grand Supernova")
  addDropdown8:Add("Green Aura")
  addDropdown8:Add("Inferno")
  addDropdown8:Add("Lightning")
  addDropdown8:Add("Power Lightning")
  addDropdown8:Add("Purple Aura")
  addDropdown8:Add("Purple Nova")
  addDropdown8:Add("Red Aura")
  addDropdown8:Add("Supernova")
  addDropdown8:Add("Ultra Inferno")
  addDropdown8:Add("Ultra Mirage")
  addDropdown8:Add("Unstable Mirage")
  addDropdown8:Add("Yellow Aura")
end

do
  PetsTab:AddSwitch("Buy Aura", function(p65)
    _G.AutoHatchAura = p65

    if p65 then
      spawn(function()
        while _G.AutoHatchAura and v120 ~= "" do
          local findFirstChild7 = replicatedStorage.cPetShopFolder:FindFirstChild(v120)

          if findFirstChild7 then
            replicatedStorage.cPetShopRemote:InvokeServer(findFirstChild7)
          end

          task.wait(0.1)
        end
      end)
    end
  end)

  local localPlayer18 = players.LocalPlayer

  local petsTab3 = PetsTab
  petsTab3:AddLabel("Gifting:").TextSize = 22

  local proteinEggs0TropicalShakes0 = PetsTab:AddLabel("Protein Eggs: 0 | Tropical Shakes: 0")
  proteinEggs0TropicalShakes0.TextSize = 18

  local v121 = "Protein Egg"
  local v122 = 0
  local v123

  local addDropdown9 = PetsTab:AddDropdown("Select Player", function(p66)
    for index21, value70 in ipairs(players:GetPlayers()) do
      if value70.DisplayName == p66 then
        v123 = value70
        break
      end
    end
  end)

  local function f49(p67)
    if p67 ~= localPlayer18 then
      addDropdown9:Add(p67.DisplayName)
    end
  end

  for index22, value71 in ipairs(players:GetPlayers()) do
    f49(value71)
  end

  players.PlayerAdded:Connect(f49)

  local addDropdown10 = PetsTab:AddDropdown("Select Item", function(p68) v121 = p68 end)
  addDropdown10:Add("Protein Egg")
  addDropdown10:Add("Tropical Shake")

  PetsTab:AddTextBox("Amount", function(p69) v122 = tonumber(p69) or 0 end)

  PetsTab:AddButton("Gift Item", function()
    if v123 and v122 > 0 then
      local consumablesFolder = localPlayer18:FindFirstChild("consumablesFolder")

      if consumablesFolder then
        for n = 1, v122 do
          local findFirstChild8 = consumablesFolder:FindFirstChild(v121)

          if findFirstChild8 then
            replicatedStorage.rEvents.giftRemote:InvokeServer(
              "giftRequest", v123, findFirstChild8
            )

            task.wait(0.05)
          else
            break
          end
        end
      end
    end
  end)

  local function f50()
    local count4 = 0
    local count5 = 0
    local consumablesFolder2 = localPlayer18:FindFirstChild("consumablesFolder")

    if consumablesFolder2 then
      for index23, value72 in ipairs(consumablesFolder2:GetChildren()) do
        if value72.Name == "Protein Egg" then
          count4 = count4 + 1
        elseif value72.Name == "Tropical Shake" or value72.Name == "Piñas" then
          count5 = count5 + 1
        end
      end
    end

    proteinEggs0TropicalShakes0.Text = "Protein Eggs: " .. count4 .. " | Tropical Shakes: "
      .. count5
  end

  task.spawn(function()
    while true do
      f50()
      task.wait(0.25)
    end
  end)
end

do
  local teleport = addWindow:AddTab("Teleport")

  teleport:AddButton("Spawn", function()
    local localPlayer19 = game.Players.LocalPlayer

    local character21 = localPlayer19.Character or localPlayer19.CharacterAdded:Wait()
    character21:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2, 8, 115)

    starterGui:SetCore("SendNotification", {
      Title = "Teletransporte",
      Text = "Teleported to Spawn",
      Duration = 0,
    })
  end)

  teleport:AddButton("Secret Area", function()
    local localPlayer20 = game.Players.LocalPlayer

    local character22 = localPlayer20.Character or localPlayer20.CharacterAdded:Wait()
    character22:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(1947, 2, 6191)

    starterGui:SetCore("SendNotification", {
      Title = "Teletransporte",
      Text = "Teleported to Secret Area",
      Duration = 0,
    })
  end)

  teleport:AddButton("Tiny Island", function()
    local localPlayer21 = game.Players.LocalPlayer

    local character23 = localPlayer21.Character or localPlayer21.CharacterAdded:Wait()
    character23:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-34, 7, 1903)

    starterGui:SetCore("SendNotification", {
      Title = "Teletransporte",
      Text = "Teleported to Tiny Island",
      Duration = 0,
    })
  end)

  teleport:AddButton("Frozen Island", function()
    local localPlayer22 = game.Players.LocalPlayer

    local character24 = localPlayer22.Character or localPlayer22.CharacterAdded:Wait()

    character24:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(
      -2600.00244, 3.67686558, -403.884369, 0.0873617008, 1.0482899e-9, 0.99617666,
      3.07204253e-8, 1, -3.7464023e-9, -0.99617666, 3.09302628e-8, 0.0873617008
    )

    starterGui:SetCore("SendNotification", {
      Title = "Teletransporte",
      Text = "Teleported to Frozen Island",
      Duration = 0,
    })
  end)

  teleport:AddButton("Mythical Island", function()
    local localPlayer23 = game.Players.LocalPlayer

    local character25 = localPlayer23.Character or localPlayer23.CharacterAdded:Wait()
    character25:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2255, 7, 1071)

    starterGui:SetCore("SendNotification", {
      Title = "Teletransporte",
      Text = "Teleported to Mythical Island",
      Duration = 0,
    })
  end)

  teleport:AddButton("Eternal Island", function()
    local localPlayer24 = game.Players.LocalPlayer

    local character26 = localPlayer24.Character or localPlayer24.CharacterAdded:Wait()
    character26:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-6768, 7, -1287)

    starterGui:SetCore("SendNotification", {
      Title = "Teletransporte",
      Text = "Teleported to ***** Island",
      Duration = 0,
    })
  end)

  teleport:AddButton("Legend Island", function()
    local localPlayer25 = game.Players.LocalPlayer

    local character27 = localPlayer25.Character or localPlayer25.CharacterAdded:Wait()
    character27:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4604, 991, -3887)

    starterGui:SetCore("SendNotification", {
      Title = "Teletransporte",
      Text = "Teleported to Legend Island",
      Duration = 0,
    })
  end)

  teleport:AddButton("Muscle King Island", function()
    local localPlayer26 = game.Players.LocalPlayer

    local character28 = localPlayer26.Character or localPlayer26.CharacterAdded:Wait()
    character28:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8646, 17, -5738)

    starterGui:SetCore("SendNotification", {
      Title = "Teletransporte",
      Text = "Teleported to Muscle King",
      Duration = 0,
    })
  end)

  teleport:AddButton("Jungle Island", function()
    local localPlayer27 = game.Players.LocalPlayer

    local character29 = localPlayer27.Character or localPlayer27.CharacterAdded:Wait()
    character29:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8659, 6, 2384)

    starterGui:SetCore("SendNotification", {
      Title = "Teletransporte",
      Text = "Teleported to Jungle Island",
      Duration = 0,
    })
  end)

  teleport:AddButton("Brawl Lava", function()
    local localPlayer28 = game.Players.LocalPlayer

    local character30 = localPlayer28.Character or localPlayer28.CharacterAdded:Wait()
    character30:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4471, 119, -8836)

    starterGui:SetCore("SendNotification", {
      Title = "Teletransporte",
      Text = "Teleported to Brawl Lava",
      Duration = 0,
    })
  end)

  teleport:AddButton("Brawl Desert", function()
    local localPlayer29 = game.Players.LocalPlayer

    local character31 = localPlayer29.Character or localPlayer29.CharacterAdded:Wait()
    character31:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(960, 17, -7398)

    starterGui:SetCore("SendNotification", {
      Title = "Teletransporte",
      Text = "Teleported to Brawl Desert",
      Duration = 0,
    })
  end)

  teleport:AddButton("Brawl Regular", function()
    local localPlayer30 = game.Players.LocalPlayer

    local character32 = localPlayer30.Character or localPlayer30.CharacterAdded:Wait()
    character32:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-1849, 20, -6335)

    starterGui:SetCore("SendNotification", {
      Title = "Teletransporte",
      Text = "Teleported to Brawl Regular",
      Duration = 0,
    })
  end)
end

do
  stats = addWindow:AddTab("Stats")
  local localPlayer31 = game.Players.LocalPlayer
  local leaderstats4 = localPlayer31:WaitForChild("leaderstats")
  strength2 = leaderstats4:WaitForChild("Strength")
  rebirths = leaderstats4:WaitForChild("Rebirths")
  durability2 = localPlayer31:WaitForChild("Durability")
  kills = leaderstats4:WaitForChild("Kills")
  agility = localPlayer31:WaitForChild("Agility")
  evilKarma = localPlayer31:WaitForChild("evilKarma")
  goodKarma = localPlayer31:WaitForChild("goodKarma")
  brawls = leaderstats4:WaitForChild("Brawls")
end

local function f51(p70)
  local v124 = p70
  local v125 = { "", "K", "M", "B", "T", "Qa", "Qi" }
  local v126 = 1

  while v124 >= 1000 and v126 < #v125 do
    v126 = v126 + 1
    v124 = v124 / 1000
  end

  return string.format("%.2f%s", v124, v125[v126])
end

do
  local v127 = stats
  v127:AddLabel("Session Statistics").TextSize = 30

  sessionTime0d0h0m0s = stats:AddLabel("Session Time: 0d 0h 0m 0s")
  sessionTime0d0h0m0s.TextSize = 20

  customTimerNotStarted = stats:AddLabel("Custom Timer: Not started")
  customTimerNotStarted.TextSize = 20

  v128 = false
  v129 = 0
  v130 = 0

  stats:AddButton("Start/Stop Custom Timer", function()
    if not v128 then
      v128 = true
      v129 = tick() - v130
    else
      v128 = false
      v130 = tick() - v129
    end
  end)

  stats:AddButton("Reset Custom Timer", function()
    v128 = false
    v129 = 0
    v130 = 0
    customTimerNotStarted.Text = "Custom Timer: Not started"
  end)

  v131 = false
end

do
  stats:AddButton("Reset Session Stats", function() v131 = true end)

  local v132 = stats
  v132:AddLabel("------------------").TextSize = 14

  local v133 = stats
  v133:AddLabel("Projected Stats").TextSize = 30

  strengthPace = stats:AddLabel("Strength Pace: -")
  strengthPace.TextSize = 20

  durabilityPace = stats:AddLabel("Durability Pace: -")
  durabilityPace.TextSize = 20

  rebirthPace = stats:AddLabel("Rebirth Pace: -")
  rebirthPace.TextSize = 20

  local v134 = stats
  v134:AddLabel("------------------").TextSize = 14
end

do
  local v135 = stats
  v135:AddLabel("Leaderboard Stats").TextSize = 30

  strength3 = stats:AddLabel("Strength: -")
  strength3.TextSize = 20

  rebirths2 = stats:AddLabel("Rebirths: -")
  rebirths2.TextSize = 20

  kills2 = stats:AddLabel("Kills: -")
  kills2.TextSize = 20

  local brawls2 = stats:AddLabel("Brawls: -")
  brawls2.TextSize = 20

  local v136 = stats
  v136:AddLabel("------------------").TextSize = 14

  local v137 = stats
  v137:AddLabel("Player Stats").TextSize = 30

  local goodKarma2 = stats:AddLabel("Good Karma: -")
  goodKarma2.TextSize = 20

  local evilKarma2 = stats:AddLabel("Evil Karma: -")
  evilKarma2.TextSize = 20

  local durability3 = stats:AddLabel("Durability: -")
  durability3.TextSize = 20

  local agility2 = stats:AddLabel("Agility: -")
  agility2.TextSize = 20

  local v138 = tick()
  local value73 = strength2.Value
  local value74 = durability2.Value
  local value75 = rebirths.Value
  local value76 = kills.Value
  local value77 = agility.Value
  local value78 = evilKarma.Value
  local value79 = goodKarma.Value
  local value80 = brawls.Value

  task.spawn(function()
    local v139 = 0

    while task.wait(0.2) do
      local v140 = tick() - v138
      local v141 = math.floor(v140 / 86400)
      local v142 = math.floor(v140 % 86400 / 3600)
      local v143 = math.floor(v140 % 3600 / 60)
      local v144 = math.floor(v140 % 60)

      sessionTime0d0h0m0s.Text = string.format(
        "Session Time: %dd %dh %dm %ds", v141, v142, v143, v144
      )

      if v128 then
        v130 = tick() - v129
      end

      if v130 > 0 then
        local v145 = math.floor(v130 / 86400)
        local v146 = math.floor(v130 % 86400 / 3600)
        local v147 = math.floor(v130 % 3600 / 60)
        local v148 = math.floor(v130 % 60)

        customTimerNotStarted.Text = string.format(
          "Custom Timer: %dd %dh %dm %ds", v145, v146, v147, v148
        )
      end

      if v131 then
        v138 = tick()
        value73 = strength2.Value
        value74 = durability2.Value
        value75 = rebirths.Value
        value76 = kills.Value
        value77 = agility.Value
        value78 = evilKarma.Value
        value79 = goodKarma.Value
        value80 = brawls.Value
        v131 = false
      end

      local value81 = strength2.Value
      local value82 = rebirths.Value
      local value83 = durability2.Value
      local value84 = kills.Value
      local value85 = agility.Value
      local value86 = evilKarma.Value
      local value87 = goodKarma.Value
      local value88 = brawls.Value
      local v149 = value81 - value73
      local v150 = value83 - value74
      local v151 = value82 - value75
      local v152 = value76
      local v153 = value77
      local v154 = value78
      local v155 = value79
      local v156 = value80
      strength3.Text = "Strength: " .. f51(value81) .. " | +" .. f51(v149)
      rebirths2.Text = "Rebirths: " .. f51(value82) .. " | +" .. f51(v151)
      kills2.Text = "Kills: " .. f51(value84) .. " | +" .. f51(value84 - v152)
      brawls2.Text = "Brawls: " .. f51(value88) .. " | +" .. f51(value88 - v156)
      goodKarma2.Text = "Good Karma: " .. f51(value87) .. " | +" .. f51(value87 - v155)
      evilKarma2.Text = "Evil Karma: " .. f51(value86) .. " | +" .. f51(value86 - v154)
      durability3.Text = "Durability: " .. f51(value83) .. " | +" .. f51(v150)
      agility2.Text = "Agility: " .. f51(value85) .. " | +" .. f51(value85 - v153)

      if tick() - v139 >= 6 then
        local v157 = v149 / v140
        local v158 = v150 / v140
        local v159 = v151 / v140
        v139 = tick()

        strengthPace.Text = "Strength Pace: " .. f51(math.floor(v157 * 3600)) .. "/h | "
          .. f51(math.floor(v157 * 86400)) .. "/d"

        durabilityPace.Text = "Durability Pace: " .. f51(math.floor(v158 * 3600)) .. "/h | "
          .. f51(math.floor(v158 * 86400)) .. "/d"

        rebirthPace.Text = "Rebirth Pace: " .. f51(math.floor(v159 * 3600)) .. "/h | "
          .. f51(math.floor(v159 * 86400)) .. "/d"
      end
    end
  end)
end

do
  misc = addWindow:AddTab("Misc")
  misc:AddLabel("----Misc 1----").TextSize = 22

  local walkSpeed = 125

  misc:AddTextBox("Speed", function(p71)
    walkSpeed = tonumber(p71) or 125

    if getgenv().AutoSpeed and game.Players.LocalPlayer.Character
      and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkSpeed
    end
  end, { clear = false, default = "125", placeholder = "Enter Speed..." })

  misc:AddSwitch("Set Speed", function(autoSpeed)
    getgenv().AutoSpeed = autoSpeed

    while getgenv().AutoSpeed do
      if game.Players.LocalPlayer.Character
        and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkSpeed
      end

      task.wait()
    end
  end)

  game.Players.LocalPlayer.CharacterAdded:Connect(function(character33)
    if getgenv().AutoSpeed then
      character33:WaitForChild("Humanoid").WalkSpeed = walkSpeed
    end
  end)

  local v160 = 2

  misc:AddTextBox("Size", function(p72)
    v160 = tonumber(p72) or 2

    if getgenv().AutoSize then
      replicatedStorage.rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", v160)
    end
  end, { clear = false, default = "2", placeholder = "Enter Size..." })

  misc:AddSwitch("Set Size", function(autoSize)
    getgenv().AutoSize = autoSize

    while getgenv().AutoSize do
      replicatedStorage.rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", v160)
      task.wait(0.1)
    end
  end)

  misc:AddLabel("----Misc 2----").TextSize = 23

  misc:AddSwitch("Anti-AFK", function(p73)
    local instance, instance2, v161

    if p73 then
      local localPlayer32 = players.LocalPlayer

      _G.afkGui = Instance.new("ScreenGui", localPlayer32:WaitForChild("PlayerGui"))
      _G.afkGui.Name = "AntiAFKGui"
      _G.afkGui.ResetOnSpawn = false

      instance = Instance.new("TextLabel", _G.afkGui)
      instance.Size = UDim2.new(0, 200, 0, 50)
      instance.Position = UDim2.new(0.5, -100, 0, -50)
      instance.Text = "ANTI AFK"
      instance.TextColor3 = Color3.fromRGB(50, 255, 50)
      instance.Font = Enum.Font.GothamBold
      instance.TextSize = 20
      instance.BackgroundTransparency = 1
      instance.TextTransparency = 1

      instance2 = Instance.new("TextLabel", _G.afkGui)
      instance2.Size = UDim2.new(0, 200, 0, 30)
      instance2.Position = UDim2.new(0.5, -100, 0, -20)
      instance2.Text = "00:00:00"
      instance2.TextColor3 = Color3.fromRGB(255, 255, 255)
      instance2.Font = Enum.Font.GothamBold
      instance2.TextSize = 18
      instance2.BackgroundTransparency = 1
      instance2.TextTransparency = 1

      v161 = tick()

      task.spawn(function()
        while _G.afkGui and _G.afkGui.Parent do
          local v162 = tick() - v161
          local v163 = math.floor(v162 / 3600)
          local v164 = math.floor(v162 % 3600 / 60)
          local v165 = math.floor(v162 % 60)
          instance2.Text = string.format("%02d:%02d:%02d", v163, v164, v165)
          task.wait(1)
        end
      end)

      task.spawn(function()
        while _G.afkGui and _G.afkGui.Parent do
          for i6 = 0, 1, 0.02 do
            instance.TextTransparency = 1 - i6
            instance2.TextTransparency = 1 - i6
            task.wait(0.015)
          end

          task.wait(1.5)

          for i7 = 0, 1, 0.02 do
            instance.TextTransparency = i7
            instance2.TextTransparency = i7
            task.wait(0.015)
          end

          task.wait(1)
        end
      end)

      _G.afkConnection = players.LocalPlayer.Idled:Connect(function()
        virtualUser:Button2Down(Vector2.new(), workspace.CurrentCamera.CFrame)
        task.wait(1)
        virtualUser:Button2Up(Vector2.new(), workspace.CurrentCamera.CFrame)
      end)
    else
      if _G.afkConnection then
        _G.afkConnection:Disconnect()
        _G.afkConnection = nil
      end

      if _G.afkGui then
        _G.afkGui:Destroy()
        _G.afkGui = nil
      end
    end
  end):Set(true)

  misc:AddSwitch("Anti Knockback", function(p74)
    if p74 then
      local humanoidRootPart5 = game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild("HumanoidRootPart")

      local bodyVelocity = Instance.new("BodyVelocity")
      bodyVelocity.MaxForce = Vector3.new(100000, 0, 100000)
      bodyVelocity.Velocity = Vector3.new(0, 0, 0)
      bodyVelocity.P = 1250
      bodyVelocity.Parent = humanoidRootPart5
    else
      local bodyVelocity2 = game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild("HumanoidRootPart"):FindFirstChild("BodyVelocity")

      if bodyVelocity2 and bodyVelocity2.MaxForce == Vector3.new(100000, 0, 100000) then
        bodyVelocity2:Destroy()
      end
    end
  end):Set(true)
end

lockRunning = false
lockThread = nil

misc:AddSwitch("Lock Position", function(p75)
  local cframe3

  if p75 then
    cframe3 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local v166 = getgenv()

    v166.posLock = runService.Heartbeat:Connect(function()
      if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframe3
      end
    end)
  elseif getgenv().posLock then
    getgenv().posLock:Disconnect()
    getgenv().posLock = nil
  end
end)

misc:AddSwitch("Hide All Frames", function(p76)
  if p76 then
    for index24, value89 in ipairs(blockedFrames) do
      local findFirstChild9 = replicatedStorage:FindFirstChild(value89)

      if findFirstChild9 and findFirstChild9:IsA("GuiObject") then
        findFirstChild9.Visible = false
      end
    end

    if not _G.frameMonitorConnection then
      _G.frameMonitorConnection = replicatedStorage.ChildAdded:Connect(function(child4)
        for index25, value90 in ipairs(blockedFrames) do
          if child4.Name == value90 and child4:IsA("GuiObject") then
            child4.Visible = false
          end
        end
      end)
    end
  else
    for index26, value91 in ipairs(blockedFrames) do
      local findFirstChild10 = replicatedStorage:FindFirstChild(value91)

      if findFirstChild10 and findFirstChild10:IsA("GuiObject") then
        findFirstChild10.Visible = true
      end
    end

    if _G.frameMonitorConnection then
      _G.frameMonitorConnection:Disconnect()
      _G.frameMonitorConnection = nil
    end
  end
end)

misc:AddSwitch("Disable Trades", function(p77)
  if p77 then
    replicatedStorage.rEvents.tradingEvent:FireServer("disableTrading")
  else
    replicatedStorage.rEvents.tradingEvent:FireServer("enableTrading")
  end
end)

misc:AddSwitch("Block Rebirths", function()
  local v167

  v167 = hookmetamethod(game, "__namecall", function(p78, ...)
    local v168 = { ... }

    if p78.Name == "rebirthRemote" and v168[1] == "rebirthRequest" then
      return
    end

    return v167(p78, unpack(v168))
  end)
end)

misc:AddSwitch("Block Trades", function()
  replicatedStorage.rEvents.tradingEvent:FireServer("disableTrading")
end)

misc:AddLabel("----Misc 3----").TextSize = 23
misc:AddSwitch("Inf Jump", function(p79) infJumpEnabled = p79 end)

parts = {}
partSize = 2048
totalDistance = 50000

do
  startPosition = Vector3.new(-2, -9.5, -2)

  function createAllParts()
    local v169 = math.ceil(totalDistance / partSize)

    for i8 = 0, v169 - 1 do
      for i9 = 0, v169 - 1 do
        local function f52(position2, name4)
          local part2 = Instance.new("Part")
          part2.Size = Vector3.new(partSize, 1, partSize)
          part2.Position = position2
          part2.Anchored = true
          part2.Transparency = 1
          part2.CanCollide = true
          part2.Name = name4
          part2.Parent = workspace

          return part2
        end

        table.insert(parts, f52(
          startPosition + Vector3.new(i8 * partSize, 0, i9 * partSize),
          "Part_Side_" .. i8 .. "_" .. i9
        ))

        table.insert(parts, f52(
          startPosition + Vector3.new(-i8 * partSize, 0, i9 * partSize),
          "Part_LeftRight_" .. i8 .. "_" .. i9
        ))

        table.insert(parts, f52(
          startPosition + Vector3.new(-i8 * partSize, 0, -i9 * partSize),
          "Part_UpLeft_" .. i8 .. "_" .. i9
        ))

        table.insert(parts, f52(
          startPosition + Vector3.new(i8 * partSize, 0, -i9 * partSize),
          "Part_UpRight_" .. i8 .. "_" .. i9
        ))
      end
    end
  end

  task.spawn(createAllParts)

  misc:AddSwitch("Walk on Water", function(canCollide)
    for index27, value92 in ipairs(parts) do
      if value92 and value92.Parent then
        value92.CanCollide = canCollide
      end
    end
  end)

  misc:AddSwitch("Spin Fortune Wheel", function(p80)
    _G.AutoSpinWheel = p80

    if p80 then
      spawn(function()
        while _G.AutoSpinWheel and wait(1) do
          replicatedStorage.rEvents.openFortuneWheelRemote:InvokeServer(
            "openFortuneWheel", replicatedStorage.fortuneWheelChances["Fortune Wheel"]
          )
        end
      end)
    end
  end)

  Lighting = lighting

  timeDropdown = misc:AddDropdown("change time", function(p81)
    Lighting.Brightness = 2
    Lighting.FogEnd = 100000
    Lighting.Ambient = Color3.fromRGB(127, 127, 127)

    if p81 == "Morning" then
      Lighting.ClockTime = 6
      Lighting.Brightness = 2
      Lighting.Ambient = Color3.fromRGB(200, 200, 255)
    elseif p81 == "Noon" then
      Lighting.ClockTime = 12
      Lighting.Brightness = 3
      Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    elseif p81 == "Afternoon" then
      Lighting.ClockTime = 16
      Lighting.Brightness = 2.5
      Lighting.Ambient = Color3.fromRGB(255, 220, 180)
    elseif p81 == "Sunset" then
      Lighting.ClockTime = 18
      Lighting.Brightness = 2
      Lighting.Ambient = Color3.fromRGB(255, 150, 100)
      Lighting.FogEnd = 500
    elseif p81 == "Nigth" then
      Lighting.ClockTime = 20
      Lighting.Brightness = 1.5
      Lighting.Ambient = Color3.fromRGB(100, 100, 150)
      Lighting.FogEnd = 800
    elseif p81 == "Midnight" then
      Lighting.ClockTime = 0
      Lighting.Brightness = 1
      Lighting.Ambient = Color3.fromRGB(50, 50, 100)
      Lighting.FogEnd = 400
    elseif p81 == "Dawn" then
      Lighting.ClockTime = 4
      Lighting.Brightness = 1.8
      Lighting.Ambient = Color3.fromRGB(180, 180, 220)
    elseif p81 == "Early Morning" then
      Lighting.ClockTime = 2
      Lighting.Brightness = 1.2
      Lighting.Ambient = Color3.fromRGB(100, 120, 180)
    end
  end)

  for index28, value93 in ipairs({
    "Morning", "Noon", "Afternoon", "Sunset", "Night", "Midnight", "Dawn", "Early Morning",
  }) do
    timeDropdown:Add(value93)
  end

  infoTab = addWindow:AddTab("Info")
  infoTab:Show()

  local v170 = infoTab
  v170:AddLabel("made by Akimbo").TextSize = 20
end

do
  local v171 = infoTab
  v171:AddLabel("Discord sever").TextSize = 20

  infoTab:AddButton("Copy Discord link", function()
    if setclipboard then
      setclipboard("https://discord.gg/W4VEFhumf")

      game.StarterGui:SetCore("SendNotification", {
        Title = "Link Copied!",
        Text = "You can continue to Discord now.",
        Duration = 3,
      })
    else
      game.StarterGui:SetCore("SendNotification", {
        Title = "Error!",
        Text = "Clipboard not Supported.",
        Duration = 3,
      })
    end
  end)

  infoTab:AddLabel("")

  wLabel = infoTab:AddLabel("AKIMBO PUBLIC VERSION")
  wLabel.TextSize = 30
  wLabel.Font = Enum.Font.Arcade
end
