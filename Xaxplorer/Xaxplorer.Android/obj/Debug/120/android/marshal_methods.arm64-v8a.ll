; ModuleID = 'obj\Debug\120\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\120\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [188 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 40
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 7
	i64 125503650289234629, ; 2: Prism.DryIoc.Forms => 0x1bde0e7ad8132c5 => 11
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 30
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 62
	i64 295915112840604065, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 63
	i64 634308326490598313, ; 6: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 49
	i64 702024105029695270, ; 7: System.Drawing.Common => 0x9be17343c0e7726 => 86
	i64 720058930071658100, ; 8: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 43
	i64 872800313462103108, ; 9: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 39
	i64 913290893418446787, ; 10: Essential.Interfaces.dll => 0xcaca93a8ece3fc3 => 4
	i64 940822596282819491, ; 11: System.Transactions => 0xd0e792aa81923a3 => 84
	i64 996343623809489702, ; 12: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 76
	i64 1000557547492888992, ; 13: Mono.Security.dll => 0xde2b1c9cba651a0 => 93
	i64 1120440138749646132, ; 14: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 78
	i64 1228974275814398049, ; 15: Xaxplorer.dll => 0x110e3197ac029861 => 80
	i64 1315114680217950157, ; 16: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 25
	i64 1425944114962822056, ; 17: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 2
	i64 1624659445732251991, ; 18: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 23
	i64 1628611045998245443, ; 19: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 51
	i64 1636321030536304333, ; 20: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 44
	i64 1795316252682057001, ; 21: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 24
	i64 1836611346387731153, ; 22: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 62
	i64 1875917498431009007, ; 23: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 21
	i64 1981742497975770890, ; 24: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 50
	i64 1986553961460820075, ; 25: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 72
	i64 2136356949452311481, ; 26: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 55
	i64 2142414347340900119, ; 27: Xaxplorer.Android.dll => 0x1dbb627f76f46717 => 0
	i64 2165725771938924357, ; 28: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 28
	i64 2262844636196693701, ; 29: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 39
	i64 2284400282711631002, ; 30: System.Web.Services => 0x1fb3d1f42fd4249a => 90
	i64 2329709569556905518, ; 31: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 47
	i64 2470498323731680442, ; 32: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 34
	i64 2479423007379663237, ; 33: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 67
	i64 2497223385847772520, ; 34: System.Runtime => 0x22a7eb7046413568 => 17
	i64 2547086958574651984, ; 35: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 20
	i64 2592350477072141967, ; 36: System.Xml.dll => 0x23f9e10627330e8f => 18
	i64 2624866290265602282, ; 37: mscorlib.dll => 0x246d65fbde2db8ea => 8
	i64 2694427813909235223, ; 38: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 59
	i64 2801558180824670388, ; 39: Plugin.CurrentActivity.dll => 0x26e1225279a4e0b4 => 9
	i64 2960931600190307745, ; 40: Xamarin.Forms.Core => 0x2917579a49927da1 => 74
	i64 3017704767998173186, ; 41: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 78
	i64 3289520064315143713, ; 42: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 46
	i64 3303437397778967116, ; 43: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 22
	i64 3311221304742556517, ; 44: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 16
	i64 3493805808809882663, ; 45: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 65
	i64 3522470458906976663, ; 46: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 64
	i64 3531994851595924923, ; 47: System.Numerics => 0x31042a9aade235bb => 15
	i64 3571415421602489686, ; 48: System.Runtime.dll => 0x319037675df7e556 => 17
	i64 3609787854626478660, ; 49: Plugin.CurrentActivity => 0x32188aeda587da44 => 9
	i64 3716579019761409177, ; 50: netstandard.dll => 0x3393f0ed5c8c5c99 => 82
	i64 3727469159507183293, ; 51: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 61
	i64 3772598417116884899, ; 52: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 40
	i64 4525561845656915374, ; 53: System.ServiceModel.Internals => 0x3ece06856b710dae => 81
	i64 4636684751163556186, ; 54: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 69
	i64 4782108999019072045, ; 55: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 27
	i64 4794310189461587505, ; 56: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 20
	i64 4795410492532947900, ; 57: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 64
	i64 5142919913060024034, ; 58: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 75
	i64 5203618020066742981, ; 59: Xamarin.Essentials => 0x4836f704f0e652c5 => 73
	i64 5205316157927637098, ; 60: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 53
	i64 5348796042099802469, ; 61: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 54
	i64 5376510917114486089, ; 62: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 67
	i64 5408338804355907810, ; 63: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 66
	i64 5451019430259338467, ; 64: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 33
	i64 5486095413573346643, ; 65: Essential.Interfaces => 0x4c2286b649f06553 => 4
	i64 5507995362134886206, ; 66: System.Core.dll => 0x4c705499688c873e => 13
	i64 5692067934154308417, ; 67: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 71
	i64 5757522595884336624, ; 68: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 31
	i64 5814345312393086621, ; 69: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 59
	i64 5896680224035167651, ; 70: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 48
	i64 6085203216496545422, ; 71: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 76
	i64 6086316965293125504, ; 72: FormsViewGroup.dll => 0x5476f10882baef80 => 5
	i64 6284145129771520194, ; 73: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 91
	i64 6319713645133255417, ; 74: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 49
	i64 6401687960814735282, ; 75: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 47
	i64 6504860066809920875, ; 76: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 28
	i64 6548213210057960872, ; 77: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 37
	i64 6591024623626361694, ; 78: System.Web.Services.dll => 0x5b7805f9751a1b5e => 90
	i64 6659513131007730089, ; 79: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 43
	i64 6870591353058300706, ; 80: Prism.DryIoc.Forms.dll => 0x5f593e6f03e91322 => 11
	i64 6876862101832370452, ; 81: System.Xml.Linq => 0x5f6f85a57d108914 => 19
	i64 6894844156784520562, ; 82: System.Numerics.Vectors => 0x5faf683aead1ad72 => 16
	i64 7036436454368433159, ; 83: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 45
	i64 7103753931438454322, ; 84: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 42
	i64 7488575175965059935, ; 85: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 19
	i64 7635363394907363464, ; 86: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 74
	i64 7637365915383206639, ; 87: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 73
	i64 7654504624184590948, ; 88: System.Net.Http => 0x6a3a4366801b8264 => 1
	i64 7710895609346150079, ; 89: DryIoc.dll => 0x6b029ab3df324ebf => 3
	i64 7820441508502274321, ; 90: System.Data => 0x6c87ca1e14ff8111 => 83
	i64 7836164640616011524, ; 91: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 23
	i64 8044118961405839122, ; 92: System.ComponentModel.Composition => 0x6fa2739369944712 => 89
	i64 8083354569033831015, ; 93: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 46
	i64 8103644804370223335, ; 94: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 85
	i64 8167236081217502503, ; 95: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 6
	i64 8398329775253868912, ; 96: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 32
	i64 8400357532724379117, ; 97: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 58
	i64 8410671156615598628, ; 98: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 92
	i64 8601935802264776013, ; 99: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 66
	i64 8626175481042262068, ; 100: Java.Interop => 0x77b654e585b55834 => 6
	i64 8639588376636138208, ; 101: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 57
	i64 8684531736582871431, ; 102: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 88
	i64 9312692141327339315, ; 103: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 71
	i64 9324707631942237306, ; 104: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 24
	i64 9662334977499516867, ; 105: System.Numerics.dll => 0x8617827802b0cfc3 => 15
	i64 9678050649315576968, ; 106: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 34
	i64 9711637524876806384, ; 107: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 54
	i64 9808709177481450983, ; 108: Mono.Android.dll => 0x881f890734e555e7 => 7
	i64 9825649861376906464, ; 109: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 31
	i64 9834056768316610435, ; 110: System.Transactions.dll => 0x8879968718899783 => 84
	i64 9998632235833408227, ; 111: Mono.Security => 0x8ac2470b209ebae3 => 93
	i64 10038780035334861115, ; 112: System.Net.Http.dll => 0x8b50e941206af13b => 1
	i64 10229024438826829339, ; 113: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 37
	i64 10245369515835430794, ; 114: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 92
	i64 10364469296367737616, ; 115: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 91
	i64 10376576884623852283, ; 116: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 65
	i64 10430153318873392755, ; 117: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 35
	i64 10847732767863316357, ; 118: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 25
	i64 11023048688141570732, ; 119: System.Core => 0x98f9bc61168392ac => 13
	i64 11037814507248023548, ; 120: System.Xml => 0x992e31d0412bf7fc => 18
	i64 11122995063473561350, ; 121: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 72
	i64 11162124722117608902, ; 122: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 70
	i64 11340910727871153756, ; 123: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 36
	i64 11392833485892708388, ; 124: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 60
	i64 11529969570048099689, ; 125: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 70
	i64 11578238080964724296, ; 126: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 45
	i64 11580057168383206117, ; 127: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 21
	i64 11597940890313164233, ; 128: netstandard => 0xa0f429ca8d1805c9 => 82
	i64 11672361001936329215, ; 129: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 42
	i64 12137774235383566651, ; 130: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 68
	i64 12451044538927396471, ; 131: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 41
	i64 12466513435562512481, ; 132: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 52
	i64 12487638416075308985, ; 133: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 38
	i64 12538491095302438457, ; 134: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 29
	i64 12550732019250633519, ; 135: System.IO.Compression => 0xae2d28465e8e1b2f => 87
	i64 12700543734426720211, ; 136: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 30
	i64 12953969983053113793, ; 137: Prism.Forms => 0xb3c5bf1106f429c1 => 12
	i64 12963446364377008305, ; 138: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 86
	i64 13059460443771909426, ; 139: Xaxplorer.Android => 0xb53c8614e54a3532 => 0
	i64 13196197655982686080, ; 140: Prism => 0xb7224fda06b0bf80 => 10
	i64 13370592475155966277, ; 141: System.Runtime.Serialization => 0xb98de304062ea945 => 2
	i64 13401370062847626945, ; 142: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 68
	i64 13404347523447273790, ; 143: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 32
	i64 13454009404024712428, ; 144: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 79
	i64 13491513212026656886, ; 145: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 26
	i64 13572454107664307259, ; 146: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 61
	i64 13647894001087880694, ; 147: System.Data.dll => 0xbd670f48cb071df6 => 83
	i64 13959074834287824816, ; 148: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 41
	i64 13967638549803255703, ; 149: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 75
	i64 14124974489674258913, ; 150: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 29
	i64 14172845254133543601, ; 151: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 55
	i64 14261073672896646636, ; 152: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 60
	i64 14486659737292545672, ; 153: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 48
	i64 14644440854989303794, ; 154: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 53
	i64 14792063746108907174, ; 155: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 79
	i64 14852515768018889994, ; 156: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 36
	i64 14987728460634540364, ; 157: System.IO.Compression.dll => 0xcfff1ba06622494c => 87
	i64 14988210264188246988, ; 158: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 38
	i64 15020741785497507190, ; 159: DryIoc => 0xd074651213721576 => 3
	i64 15370334346939861994, ; 160: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 35
	i64 15582737692548360875, ; 161: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 51
	i64 15609085926864131306, ; 162: System.dll => 0xd89e9cf3334914ea => 14
	i64 15699012986416672427, ; 163: Xaxplorer => 0xd9de19225b9c2eab => 80
	i64 15777549416145007739, ; 164: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 63
	i64 15810740023422282496, ; 165: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 77
	i64 16035518054986892682, ; 166: Prism.dll => 0xde899ab610db458a => 10
	i64 16154507427712707110, ; 167: System => 0xe03056ea4e39aa26 => 14
	i64 16565028646146589191, ; 168: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 89
	i64 16621146507174665210, ; 169: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 33
	i64 16677317093839702854, ; 170: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 58
	i64 16822611501064131242, ; 171: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 85
	i64 16833383113903931215, ; 172: mscorlib => 0xe99c30c1484d7f4f => 8
	i64 17024911836938395553, ; 173: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 22
	i64 17031351772568316411, ; 174: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 56
	i64 17037200463775726619, ; 175: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 44
	i64 17544493274320527064, ; 176: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 27
	i64 17704177640604968747, ; 177: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 52
	i64 17710060891934109755, ; 178: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 50
	i64 17882897186074144999, ; 179: FormsViewGroup => 0xf82cd03e3ac830e7 => 5
	i64 17892495832318972303, ; 180: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 77
	i64 17928294245072900555, ; 181: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 88
	i64 18116111925905154859, ; 182: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 26
	i64 18121036031235206392, ; 183: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 56
	i64 18129453464017766560, ; 184: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 81
	i64 18305135509493619199, ; 185: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 57
	i64 18380184030268848184, ; 186: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 69
	i64 18434045720645380019 ; 187: Prism.Forms.dll => 0xffd2e2ea4860a7b3 => 12
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [188 x i32] [
	i32 40, i32 7, i32 11, i32 30, i32 62, i32 63, i32 49, i32 86, ; 0..7
	i32 43, i32 39, i32 4, i32 84, i32 76, i32 93, i32 78, i32 80, ; 8..15
	i32 25, i32 2, i32 23, i32 51, i32 44, i32 24, i32 62, i32 21, ; 16..23
	i32 50, i32 72, i32 55, i32 0, i32 28, i32 39, i32 90, i32 47, ; 24..31
	i32 34, i32 67, i32 17, i32 20, i32 18, i32 8, i32 59, i32 9, ; 32..39
	i32 74, i32 78, i32 46, i32 22, i32 16, i32 65, i32 64, i32 15, ; 40..47
	i32 17, i32 9, i32 82, i32 61, i32 40, i32 81, i32 69, i32 27, ; 48..55
	i32 20, i32 64, i32 75, i32 73, i32 53, i32 54, i32 67, i32 66, ; 56..63
	i32 33, i32 4, i32 13, i32 71, i32 31, i32 59, i32 48, i32 76, ; 64..71
	i32 5, i32 91, i32 49, i32 47, i32 28, i32 37, i32 90, i32 43, ; 72..79
	i32 11, i32 19, i32 16, i32 45, i32 42, i32 19, i32 74, i32 73, ; 80..87
	i32 1, i32 3, i32 83, i32 23, i32 89, i32 46, i32 85, i32 6, ; 88..95
	i32 32, i32 58, i32 92, i32 66, i32 6, i32 57, i32 88, i32 71, ; 96..103
	i32 24, i32 15, i32 34, i32 54, i32 7, i32 31, i32 84, i32 93, ; 104..111
	i32 1, i32 37, i32 92, i32 91, i32 65, i32 35, i32 25, i32 13, ; 112..119
	i32 18, i32 72, i32 70, i32 36, i32 60, i32 70, i32 45, i32 21, ; 120..127
	i32 82, i32 42, i32 68, i32 41, i32 52, i32 38, i32 29, i32 87, ; 128..135
	i32 30, i32 12, i32 86, i32 0, i32 10, i32 2, i32 68, i32 32, ; 136..143
	i32 79, i32 26, i32 61, i32 83, i32 41, i32 75, i32 29, i32 55, ; 144..151
	i32 60, i32 48, i32 53, i32 79, i32 36, i32 87, i32 38, i32 3, ; 152..159
	i32 35, i32 51, i32 14, i32 80, i32 63, i32 77, i32 10, i32 14, ; 160..167
	i32 89, i32 33, i32 58, i32 85, i32 8, i32 22, i32 56, i32 44, ; 168..175
	i32 27, i32 52, i32 50, i32 5, i32 77, i32 88, i32 26, i32 56, ; 176..183
	i32 81, i32 57, i32 69, i32 12 ; 184..187
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
