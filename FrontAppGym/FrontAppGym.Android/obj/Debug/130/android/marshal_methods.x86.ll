; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [202 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 49
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 82
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 8
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 76
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 65
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 65
	i32 134690465, ; 6: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 86
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 26
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 67
	i32 209399409, ; 9: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 24
	i32 230216969, ; 10: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 43
	i32 232815796, ; 11: System.Web.Services => 0xde07cb4 => 99
	i32 261689757, ; 12: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 29
	i32 278686392, ; 13: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 47
	i32 280482487, ; 14: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 41
	i32 318968648, ; 15: Xamarin.AndroidX.Activity.dll => 0x13031348 => 16
	i32 321597661, ; 16: System.Numerics => 0x132b30dd => 11
	i32 342366114, ; 17: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 45
	i32 441335492, ; 18: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 28
	i32 442521989, ; 19: Xamarin.Essentials => 0x1a605985 => 75
	i32 450948140, ; 20: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 40
	i32 465846621, ; 21: mscorlib => 0x1bc4415d => 7
	i32 469710990, ; 22: System.dll => 0x1bff388e => 10
	i32 476646585, ; 23: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 41
	i32 486930444, ; 24: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 53
	i32 526420162, ; 25: System.Transactions.dll => 0x1f6088c2 => 93
	i32 527452488, ; 26: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 86
	i32 605376203, ; 27: System.IO.Compression.FileSystem => 0x24154ecb => 97
	i32 627609679, ; 28: Xamarin.AndroidX.CustomView => 0x2568904f => 34
	i32 639843206, ; 29: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 39
	i32 663517072, ; 30: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 72
	i32 666292255, ; 31: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 21
	i32 690569205, ; 32: System.Xml.Linq.dll => 0x29293ff5 => 15
	i32 691348768, ; 33: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 88
	i32 700284507, ; 34: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 83
	i32 720511267, ; 35: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 87
	i32 775507847, ; 36: System.IO.Compression => 0x2e394f87 => 96
	i32 783178830, ; 37: FrontAppGym.Android.dll => 0x2eae5c4e => 0
	i32 809851609, ; 38: System.Drawing.Common.dll => 0x30455ad9 => 95
	i32 843511501, ; 39: Xamarin.AndroidX.Print => 0x3246f6cd => 60
	i32 928116545, ; 40: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 82
	i32 955402788, ; 41: Newtonsoft.Json => 0x38f24a24 => 8
	i32 956575887, ; 42: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 87
	i32 967690846, ; 43: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 45
	i32 974778368, ; 44: FormsViewGroup.dll => 0x3a19f000 => 3
	i32 1012816738, ; 45: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 64
	i32 1035644815, ; 46: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 20
	i32 1042160112, ; 47: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 79
	i32 1052210849, ; 48: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 50
	i32 1084122840, ; 49: Xamarin.Kotlin.StdLib => 0x409e66d8 => 85
	i32 1098259244, ; 50: System => 0x41761b2c => 10
	i32 1175144683, ; 51: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 70
	i32 1178241025, ; 52: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 57
	i32 1204270330, ; 53: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 21
	i32 1244333498, ; 54: FrontAppGym.dll => 0x4a2b05ba => 4
	i32 1264511973, ; 55: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 66
	i32 1267360935, ; 56: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 71
	i32 1275534314, ; 57: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 88
	i32 1293217323, ; 58: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 36
	i32 1365406463, ; 59: System.ServiceModel.Internals.dll => 0x516272ff => 90
	i32 1376866003, ; 60: Xamarin.AndroidX.SavedState => 0x52114ed3 => 64
	i32 1395857551, ; 61: Xamarin.AndroidX.Media.dll => 0x5333188f => 54
	i32 1406073936, ; 62: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 30
	i32 1460219004, ; 63: Xamarin.Forms.Xaml => 0x57092c7c => 80
	i32 1462092097, ; 64: FrontAppGym.Android => 0x5725c141 => 0
	i32 1462112819, ; 65: System.IO.Compression.dll => 0x57261233 => 96
	i32 1469204771, ; 66: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 19
	i32 1582372066, ; 67: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 35
	i32 1592978981, ; 68: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 69: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 52
	i32 1624863272, ; 70: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 74
	i32 1635184631, ; 71: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 39
	i32 1636350590, ; 72: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 33
	i32 1639515021, ; 73: System.Net.Http.dll => 0x61b9038d => 1
	i32 1657153582, ; 74: System.Runtime => 0x62c6282e => 13
	i32 1658241508, ; 75: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 68
	i32 1658251792, ; 76: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 81
	i32 1670060433, ; 77: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 29
	i32 1698840827, ; 78: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 84
	i32 1729485958, ; 79: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 25
	i32 1766324549, ; 80: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 67
	i32 1776026572, ; 81: System.Core.dll => 0x69dc03cc => 9
	i32 1788241197, ; 82: Xamarin.AndroidX.Fragment => 0x6a96652d => 40
	i32 1808609942, ; 83: Xamarin.AndroidX.Loader => 0x6bcd3296 => 52
	i32 1813058853, ; 84: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 85
	i32 1813201214, ; 85: Xamarin.Google.Android.Material => 0x6c13413e => 81
	i32 1818569960, ; 86: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 58
	i32 1867746548, ; 87: Xamarin.Essentials.dll => 0x6f538cf4 => 75
	i32 1878053835, ; 88: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 80
	i32 1885316902, ; 89: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 22
	i32 1919157823, ; 90: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 55
	i32 1983156543, ; 91: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 84
	i32 2019465201, ; 92: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 50
	i32 2055257422, ; 93: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 46
	i32 2079903147, ; 94: System.Runtime.dll => 0x7bf8cdab => 13
	i32 2090596640, ; 95: System.Numerics.Vectors => 0x7c9bf920 => 12
	i32 2097448633, ; 96: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 42
	i32 2113902067, ; 97: Xamarin.Forms.PancakeView.dll => 0x7dff95f3 => 77
	i32 2126786730, ; 98: Xamarin.Forms.Platform.Android => 0x7ec430aa => 78
	i32 2132148554, ; 99: FrontAppGym => 0x7f16014a => 4
	i32 2201107256, ; 100: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 89
	i32 2201231467, ; 101: System.Net.Http => 0x8334206b => 1
	i32 2217644978, ; 102: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 70
	i32 2244775296, ; 103: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 53
	i32 2256548716, ; 104: Xamarin.AndroidX.MultiDex => 0x8680336c => 55
	i32 2261435625, ; 105: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 44
	i32 2279755925, ; 106: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 62
	i32 2315684594, ; 107: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 17
	i32 2397082276, ; 108: Xamarin.Forms.PancakeView => 0x8ee092a4 => 77
	i32 2403452196, ; 109: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 38
	i32 2409053734, ; 110: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 59
	i32 2465532216, ; 111: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 28
	i32 2471841756, ; 112: netstandard.dll => 0x93554fdc => 91
	i32 2475788418, ; 113: Java.Interop.dll => 0x93918882 => 5
	i32 2501346920, ; 114: System.Data.DataSetExtensions => 0x95178668 => 94
	i32 2505896520, ; 115: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 49
	i32 2581819634, ; 116: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 71
	i32 2605712449, ; 117: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 89
	i32 2620871830, ; 118: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 33
	i32 2624644809, ; 119: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 37
	i32 2633051222, ; 120: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 47
	i32 2701096212, ; 121: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 68
	i32 2732626843, ; 122: Xamarin.AndroidX.Activity => 0xa2e0939b => 16
	i32 2737747696, ; 123: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 19
	i32 2766581644, ; 124: Xamarin.Forms.Core => 0xa4e6af8c => 76
	i32 2770495804, ; 125: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 83
	i32 2778768386, ; 126: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 73
	i32 2779977773, ; 127: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 63
	i32 2810250172, ; 128: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 30
	i32 2819470561, ; 129: System.Xml.dll => 0xa80db4e1 => 14
	i32 2821294376, ; 130: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 63
	i32 2853208004, ; 131: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 73
	i32 2855708567, ; 132: Xamarin.AndroidX.Transition => 0xaa36a797 => 69
	i32 2903344695, ; 133: System.ComponentModel.Composition => 0xad0d8637 => 98
	i32 2905242038, ; 134: mscorlib.dll => 0xad2a79b6 => 7
	i32 2916838712, ; 135: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 74
	i32 2919462931, ; 136: System.Numerics.Vectors.dll => 0xae037813 => 12
	i32 2921128767, ; 137: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 18
	i32 2978675010, ; 138: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 36
	i32 2996846495, ; 139: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 48
	i32 3016983068, ; 140: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 66
	i32 3024354802, ; 141: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 43
	i32 3044182254, ; 142: FormsViewGroup => 0xb57288ee => 3
	i32 3057625584, ; 143: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 56
	i32 3111772706, ; 144: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3204380047, ; 145: System.Data.dll => 0xbefef58f => 92
	i32 3211777861, ; 146: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 35
	i32 3247949154, ; 147: Mono.Security => 0xc197c562 => 100
	i32 3258312781, ; 148: Xamarin.AndroidX.CardView => 0xc235e84d => 25
	i32 3267021929, ; 149: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 23
	i32 3317135071, ; 150: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 34
	i32 3317144872, ; 151: System.Data => 0xc5b79d28 => 92
	i32 3340431453, ; 152: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 22
	i32 3345895724, ; 153: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 61
	i32 3346324047, ; 154: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 57
	i32 3353484488, ; 155: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 42
	i32 3362522851, ; 156: Xamarin.AndroidX.Core => 0xc86c06e3 => 32
	i32 3366347497, ; 157: Java.Interop => 0xc8a662e9 => 5
	i32 3374999561, ; 158: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 62
	i32 3404865022, ; 159: System.ServiceModel.Internals => 0xcaf21dfe => 90
	i32 3429136800, ; 160: System.Xml => 0xcc6479a0 => 14
	i32 3430777524, ; 161: netstandard => 0xcc7d82b4 => 91
	i32 3441283291, ; 162: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 37
	i32 3476120550, ; 163: Mono.Android => 0xcf3163e6 => 6
	i32 3486566296, ; 164: System.Transactions => 0xcfd0c798 => 93
	i32 3493954962, ; 165: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 27
	i32 3501239056, ; 166: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 23
	i32 3509114376, ; 167: System.Xml.Linq => 0xd128d608 => 15
	i32 3536029504, ; 168: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 78
	i32 3567349600, ; 169: System.ComponentModel.Composition.dll => 0xd4a16f60 => 98
	i32 3618140916, ; 170: Xamarin.AndroidX.Preference => 0xd7a872f4 => 59
	i32 3627220390, ; 171: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 60
	i32 3632359727, ; 172: Xamarin.Forms.Platform => 0xd881692f => 79
	i32 3633644679, ; 173: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 18
	i32 3641597786, ; 174: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 46
	i32 3672681054, ; 175: Mono.Android.dll => 0xdae8aa5e => 6
	i32 3676310014, ; 176: System.Web.Services.dll => 0xdb2009fe => 99
	i32 3682565725, ; 177: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 24
	i32 3684561358, ; 178: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 27
	i32 3689375977, ; 179: System.Drawing.Common => 0xdbe768e9 => 95
	i32 3706696989, ; 180: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 31
	i32 3718780102, ; 181: Xamarin.AndroidX.Annotation => 0xdda814c6 => 17
	i32 3724971120, ; 182: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 56
	i32 3758932259, ; 183: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 44
	i32 3786282454, ; 184: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 26
	i32 3822602673, ; 185: Xamarin.AndroidX.Media => 0xe3d849b1 => 54
	i32 3829621856, ; 186: System.Numerics.dll => 0xe4436460 => 11
	i32 3885922214, ; 187: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 69
	i32 3888767677, ; 188: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 61
	i32 3896760992, ; 189: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 32
	i32 3920810846, ; 190: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 97
	i32 3921031405, ; 191: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 72
	i32 3931092270, ; 192: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 58
	i32 3945713374, ; 193: System.Data.DataSetExtensions.dll => 0xeb2ecede => 94
	i32 3955647286, ; 194: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 20
	i32 3959773229, ; 195: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 48
	i32 4101593132, ; 196: Xamarin.AndroidX.Emoji2 => 0xf479582c => 38
	i32 4105002889, ; 197: Mono.Security.dll => 0xf4ad5f89 => 100
	i32 4151237749, ; 198: System.Core => 0xf76edc75 => 9
	i32 4182413190, ; 199: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 51
	i32 4256097574, ; 200: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 31
	i32 4292120959 ; 201: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 51
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [202 x i32] [
	i32 49, i32 82, i32 8, i32 76, i32 65, i32 65, i32 86, i32 26, ; 0..7
	i32 67, i32 24, i32 43, i32 99, i32 29, i32 47, i32 41, i32 16, ; 8..15
	i32 11, i32 45, i32 28, i32 75, i32 40, i32 7, i32 10, i32 41, ; 16..23
	i32 53, i32 93, i32 86, i32 97, i32 34, i32 39, i32 72, i32 21, ; 24..31
	i32 15, i32 88, i32 83, i32 87, i32 96, i32 0, i32 95, i32 60, ; 32..39
	i32 82, i32 8, i32 87, i32 45, i32 3, i32 64, i32 20, i32 79, ; 40..47
	i32 50, i32 85, i32 10, i32 70, i32 57, i32 21, i32 4, i32 66, ; 48..55
	i32 71, i32 88, i32 36, i32 90, i32 64, i32 54, i32 30, i32 80, ; 56..63
	i32 0, i32 96, i32 19, i32 35, i32 2, i32 52, i32 74, i32 39, ; 64..71
	i32 33, i32 1, i32 13, i32 68, i32 81, i32 29, i32 84, i32 25, ; 72..79
	i32 67, i32 9, i32 40, i32 52, i32 85, i32 81, i32 58, i32 75, ; 80..87
	i32 80, i32 22, i32 55, i32 84, i32 50, i32 46, i32 13, i32 12, ; 88..95
	i32 42, i32 77, i32 78, i32 4, i32 89, i32 1, i32 70, i32 53, ; 96..103
	i32 55, i32 44, i32 62, i32 17, i32 77, i32 38, i32 59, i32 28, ; 104..111
	i32 91, i32 5, i32 94, i32 49, i32 71, i32 89, i32 33, i32 37, ; 112..119
	i32 47, i32 68, i32 16, i32 19, i32 76, i32 83, i32 73, i32 63, ; 120..127
	i32 30, i32 14, i32 63, i32 73, i32 69, i32 98, i32 7, i32 74, ; 128..135
	i32 12, i32 18, i32 36, i32 48, i32 66, i32 43, i32 3, i32 56, ; 136..143
	i32 2, i32 92, i32 35, i32 100, i32 25, i32 23, i32 34, i32 92, ; 144..151
	i32 22, i32 61, i32 57, i32 42, i32 32, i32 5, i32 62, i32 90, ; 152..159
	i32 14, i32 91, i32 37, i32 6, i32 93, i32 27, i32 23, i32 15, ; 160..167
	i32 78, i32 98, i32 59, i32 60, i32 79, i32 18, i32 46, i32 6, ; 168..175
	i32 99, i32 24, i32 27, i32 95, i32 31, i32 17, i32 56, i32 44, ; 176..183
	i32 26, i32 54, i32 11, i32 69, i32 61, i32 32, i32 97, i32 72, ; 184..191
	i32 58, i32 94, i32 20, i32 48, i32 38, i32 100, i32 9, i32 51, ; 192..199
	i32 31, i32 51 ; 200..201
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
