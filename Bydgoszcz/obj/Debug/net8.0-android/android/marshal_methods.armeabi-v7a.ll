; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [371 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [736 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 29963982, ; 3: ru\System.Private.ServiceModel.resources.dll => 0x1c936ce => 363
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 274
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 309
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 7: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 320
	i32 39109920, ; 8: Newtonsoft.Json.dll => 0x254c520 => 217
	i32 39485524, ; 9: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 40744412, ; 10: Xamarin.AndroidX.Camera.Lifecycle.dll => 0x26db5dc => 245
	i32 42244203, ; 11: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 329
	i32 42639949, ; 12: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 13: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 14: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 353
	i32 68219467, ; 15: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 16: Microsoft.Maui.Graphics.dll => 0x44bb714 => 216
	i32 73378631, ; 17: it\System.Private.ServiceModel.resources => 0x45fab47 => 358
	i32 82292897, ; 18: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 19: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 337
	i32 101534019, ; 20: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 292
	i32 117431740, ; 21: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 22: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 292
	i32 122350210, ; 23: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 24: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 313
	i32 136584136, ; 25: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 352
	i32 140062828, ; 26: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 345
	i32 142721839, ; 27: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 28: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 29: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 30: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 248
	i32 176265551, ; 31: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 32: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 294
	i32 184328833, ; 33: System.ValueTuple.dll => 0xafca281 => 151
	i32 186847684, ; 34: zh-Hans\System.Private.ServiceModel.resources => 0xb2311c4 => 365
	i32 205061960, ; 35: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 36: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 242
	i32 220171995, ; 37: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 38: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 268
	i32 230752869, ; 39: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 40: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 41: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 42: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 43: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 185
	i32 261689757, ; 44: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 251
	i32 262163688, ; 45: System.Linq.Dynamic.Core => 0xfa04ce8 => 221
	i32 276479776, ; 46: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 47: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 270
	i32 280482487, ; 48: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 267
	i32 291076382, ; 49: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 50: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 51: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 350
	i32 318968648, ; 52: Xamarin.AndroidX.Activity.dll => 0x13031348 => 233
	i32 321597661, ; 53: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 54: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 328
	i32 336555239, ; 55: DevExpress.Pdf.v23.2.Drawing.dll => 0x140f6ce7 => 179
	i32 342366114, ; 56: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 269
	i32 360082299, ; 57: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 58: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 59: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 60: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 61: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 62: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 63: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 64: _Microsoft.Android.Resource.Designer => 0x17969339 => 367
	i32 403441872, ; 65: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 66: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 348
	i32 441335492, ; 67: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 252
	i32 442565967, ; 68: System.Collections => 0x1a61054f => 12
	i32 447904399, ; 69: de\System.Private.ServiceModel.resources => 0x1ab27a8f => 355
	i32 450948140, ; 70: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 265
	i32 451504562, ; 71: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 72: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 73: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 74: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 75: System.dll => 0x1bff388e => 164
	i32 476646585, ; 76: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 267
	i32 486930444, ; 77: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 280
	i32 489220957, ; 78: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 326
	i32 498788369, ; 79: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 80: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 209
	i32 526420162, ; 81: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 82: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 313
	i32 530272170, ; 83: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 84: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 347
	i32 539058512, ; 85: Microsoft.Extensions.Logging => 0x20216150 => 204
	i32 540030774, ; 86: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 87: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 88: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 89: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 191
	i32 549171840, ; 90: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 91: Jsr305Binding => 0x213954e7 => 306
	i32 562488221, ; 92: System.ServiceModel => 0x2186e39d => 228
	i32 569601784, ; 93: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 303
	i32 571435654, ; 94: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 201
	i32 577335427, ; 95: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 581823901, ; 96: Radzen.Blazor.dll => 0x22aded9d => 218
	i32 597488923, ; 97: CommunityToolkit.Maui => 0x239cf51b => 173
	i32 601371474, ; 98: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 99: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 610194910, ; 100: System.Reactive.dll => 0x245ed5de => 223
	i32 613668793, ; 101: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 102: Xamarin.AndroidX.CustomView => 0x2568904f => 257
	i32 627931235, ; 103: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 339
	i32 627965772, ; 104: tr\System.Private.ServiceModel.resources => 0x256dff4c => 364
	i32 639843206, ; 105: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 263
	i32 640584137, ; 106: pt-BR\System.Private.ServiceModel.resources => 0x262e89c9 => 362
	i32 643868501, ; 107: System.Net => 0x2660a755 => 81
	i32 662205335, ; 108: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 109: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 299
	i32 666292255, ; 110: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 240
	i32 672442732, ; 111: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 112: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 113: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 114: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 315
	i32 693804605, ; 115: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 116: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 117: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 310
	i32 700358131, ; 118: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 709152836, ; 119: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 224
	i32 720511267, ; 120: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 314
	i32 722857257, ; 121: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 122: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 123: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 124: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 230
	i32 759454413, ; 125: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 126: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 766707783, ; 127: Bydgoszcz => 0x2db30847 => 0
	i32 770184978, ; 128: Bydgoszcz.dll => 0x2de81712 => 0
	i32 775507847, ; 129: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 130: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 345
	i32 782533833, ; 131: Xamarin.Google.AutoValue.Annotations.dll => 0x2ea484c9 => 305
	i32 789151979, ; 132: Microsoft.Extensions.Options => 0x2f0980eb => 208
	i32 790371945, ; 133: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 258
	i32 804008546, ; 134: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 189
	i32 804715423, ; 135: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 136: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 272
	i32 809851609, ; 137: System.Drawing.Common.dll => 0x30455ad9 => 219
	i32 823281589, ; 138: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 139: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 140: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 141: System.Net.Quic => 0x31b69d60 => 71
	i32 839353180, ; 142: ZXing.Net.MAUI.Controls.dll => 0x3207835c => 319
	i32 843511501, ; 143: Xamarin.AndroidX.Print => 0x3246f6cd => 285
	i32 857956212, ; 144: System.Linq.Dynamic.Core.dll => 0x33235f74 => 221
	i32 865465478, ; 145: zxing.dll => 0x3395f486 => 317
	i32 869139383, ; 146: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 330
	i32 873119928, ; 147: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 148: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 149: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 150: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 344
	i32 904024072, ; 151: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 152: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 153: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 341
	i32 928116545, ; 154: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 309
	i32 952186615, ; 155: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 156: Newtonsoft.Json => 0x38f24a24 => 217
	i32 956575887, ; 157: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 314
	i32 961460050, ; 158: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 334
	i32 966729478, ; 159: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 307
	i32 967690846, ; 160: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 269
	i32 972805734, ; 161: System.ServiceModel.Http => 0x39fbd666 => 226
	i32 975236339, ; 162: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 163: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 164: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 165: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 166: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 343
	i32 992768348, ; 167: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 168: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 169: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 203
	i32 1001831731, ; 170: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 171: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 289
	i32 1019214401, ; 172: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 173: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 198
	i32 1031528504, ; 174: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 308
	i32 1035644815, ; 175: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 238
	i32 1036536393, ; 176: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 177: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 324
	i32 1044663988, ; 178: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 179: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 276
	i32 1052316754, ; 180: ja\System.Private.ServiceModel.resources.dll => 0x3eb91452 => 359
	i32 1061503568, ; 181: Xamarin.Google.AutoValue.Annotations => 0x3f454250 => 305
	i32 1067306892, ; 182: GoogleGson => 0x3f9dcf8c => 182
	i32 1081414353, ; 183: System.ServiceModel.Http.dll => 0x407512d1 => 226
	i32 1082857460, ; 184: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 185: Xamarin.Kotlin.StdLib => 0x409e66d8 => 311
	i32 1098259244, ; 186: System => 0x41761b2c => 164
	i32 1106973742, ; 187: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 195
	i32 1108272742, ; 188: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 346
	i32 1117529484, ; 189: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 340
	i32 1118262833, ; 190: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 336
	i32 1121599056, ; 191: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 275
	i32 1127624469, ; 192: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 206
	i32 1149092582, ; 193: Xamarin.AndroidX.Window => 0x447dc2e6 => 302
	i32 1168523401, ; 194: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 342
	i32 1170634674, ; 195: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 196: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 199
	i32 1175144683, ; 197: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 298
	i32 1178241025, ; 198: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 283
	i32 1204270330, ; 199: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 240
	i32 1208641965, ; 200: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 201: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1224073131, ; 202: ja\System.Private.ServiceModel.resources => 0x48f5dfab => 359
	i32 1243150071, ; 203: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 303
	i32 1253011324, ; 204: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 205: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 322
	i32 1264511973, ; 206: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 293
	i32 1267360935, ; 207: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 297
	i32 1271643778, ; 208: tr\System.Private.ServiceModel.resources.dll => 0x4bcbbe82 => 364
	i32 1273260888, ; 209: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 249
	i32 1275534314, ; 210: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 315
	i32 1278448581, ; 211: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 237
	i32 1293217323, ; 212: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 260
	i32 1308624726, ; 213: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 331
	i32 1309188875, ; 214: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 215: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 302
	i32 1324164729, ; 216: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 217: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 218: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 351
	i32 1364015309, ; 219: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 220: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 352
	i32 1376866003, ; 221: Xamarin.AndroidX.SavedState => 0x52114ed3 => 289
	i32 1379779777, ; 222: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1394641819, ; 223: System.ServiceModel.Primitives => 0x53208b9b => 227
	i32 1402170036, ; 224: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 225: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 253
	i32 1408764838, ; 226: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 227: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 228: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 229: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 320
	i32 1434145427, ; 230: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 231: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 307
	i32 1439761251, ; 232: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 233: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 234: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 235: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 200
	i32 1457743152, ; 236: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 237: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 238: es\Microsoft.Maui.Controls.resources => 0x57152abe => 326
	i32 1461234159, ; 239: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 240: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 241: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 242: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 239
	i32 1470490898, ; 243: Microsoft.Extensions.Primitives => 0x57a5e912 => 209
	i32 1479771757, ; 244: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 245: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 246: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 247: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 290
	i32 1521091094, ; 248: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 203
	i32 1526286932, ; 249: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 350
	i32 1536373174, ; 250: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 251: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 252: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 253: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 189
	i32 1550322496, ; 254: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 255: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 256: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1571983310, ; 257: DevExpress.Data.v23.2.dll => 0x5db28fce => 176
	i32 1573704789, ; 258: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 259: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 260: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 259
	i32 1592978981, ; 261: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 262: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 308
	i32 1601112923, ; 263: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1601662534, ; 264: Radzen.Blazor => 0x5f776e46 => 218
	i32 1604827217, ; 265: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 266: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622106878, ; 267: ru\System.Private.ServiceModel.resources => 0x60af62fe => 363
	i32 1622152042, ; 268: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 279
	i32 1622358360, ; 269: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 270: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 301
	i32 1632842087, ; 271: Microsoft.Extensions.Configuration.Json => 0x61533167 => 196
	i32 1634654947, ; 272: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 174
	i32 1635184631, ; 273: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 263
	i32 1636350590, ; 274: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 256
	i32 1639515021, ; 275: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 276: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 277: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 278: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 188
	i32 1657153582, ; 279: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 280: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 295
	i32 1658251792, ; 281: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 304
	i32 1670060433, ; 282: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 251
	i32 1675553242, ; 283: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 284: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 285: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 286: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1681246264, ; 287: es\System.Private.ServiceModel.resources.dll => 0x6435c838 => 356
	i32 1691477237, ; 288: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 289: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 290: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 312
	i32 1701541528, ; 291: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 292: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 272
	i32 1726116996, ; 293: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 294: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 295: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 247
	i32 1743415430, ; 296: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 321
	i32 1744735666, ; 297: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 298: System.IO.Pipelines.dll => 0x68139a0d => 220
	i32 1746316138, ; 299: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 300: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 301: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 302: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 187
	i32 1763938596, ; 303: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 304: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 305: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 294
	i32 1770118298, ; 306: ko\System.Private.ServiceModel.resources => 0x6981dc9a => 360
	i32 1770582343, ; 307: Microsoft.Extensions.Logging.dll => 0x6988f147 => 204
	i32 1776026572, ; 308: System.Core.dll => 0x69dc03cc => 21
	i32 1776304592, ; 309: cs\System.Private.ServiceModel.resources.dll => 0x69e041d0 => 354
	i32 1777075843, ; 310: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 311: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 312: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 337
	i32 1788241197, ; 313: Xamarin.AndroidX.Fragment => 0x6a96652d => 265
	i32 1793755602, ; 314: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 329
	i32 1796167890, ; 315: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 191
	i32 1808609942, ; 316: Xamarin.AndroidX.Loader => 0x6bcd3296 => 279
	i32 1813058853, ; 317: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 311
	i32 1813201214, ; 318: Xamarin.Google.Android.Material => 0x6c13413e => 304
	i32 1818569960, ; 319: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 284
	i32 1818787751, ; 320: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 321: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 322: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 323: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 205
	i32 1847515442, ; 324: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 230
	i32 1853025655, ; 325: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 346
	i32 1858542181, ; 326: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 327: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 328: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 328
	i32 1879696579, ; 329: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 330: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 241
	i32 1888955245, ; 331: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 332: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 333: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 322
	i32 1898237753, ; 334: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 335: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1909804520, ; 336: de\System.Private.ServiceModel.resources.dll => 0x71d54de8 => 355
	i32 1910275211, ; 337: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1922109462, ; 338: System.ServiceModel.Primitives.dll => 0x72911016 => 227
	i32 1939592360, ; 339: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1946635558, ; 340: System.Web.Razor => 0x74074d26 => 183
	i32 1953182387, ; 341: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 333
	i32 1956758971, ; 342: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 343: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 291
	i32 1968388702, ; 344: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 192
	i32 1983156543, ; 345: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 312
	i32 1985761444, ; 346: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 232
	i32 2003115576, ; 347: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 325
	i32 2011961780, ; 348: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014309119, ; 349: cs\System.Private.ServiceModel.resources => 0x780feaff => 354
	i32 2019465201, ; 350: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 276
	i32 2031763787, ; 351: Xamarin.Android.Glide => 0x791a414b => 229
	i32 2045470958, ; 352: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 353: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 194
	i32 2055257422, ; 354: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 271
	i32 2060060697, ; 355: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 356: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 324
	i32 2070888862, ; 357: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 358: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 202
	i32 2079903147, ; 359: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2085039813, ; 360: System.Security.Cryptography.Xml.dll => 0x7c472ec5 => 225
	i32 2090596640, ; 361: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2092919810, ; 362: System.ServiceModel.dll => 0x7cbf6c02 => 228
	i32 2127167465, ; 363: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 364: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 365: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 366: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 367: Microsoft.Maui => 0x80bd55ad => 214
	i32 2169148018, ; 368: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 332
	i32 2181898931, ; 369: Microsoft.Extensions.Options.dll => 0x820d22b3 => 208
	i32 2192057212, ; 370: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 205
	i32 2193016926, ; 371: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 372: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 316
	i32 2201231467, ; 373: System.Net.Http => 0x8334206b => 64
	i32 2204417087, ; 374: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 207
	i32 2207618523, ; 375: it\Microsoft.Maui.Controls.resources => 0x839595db => 334
	i32 2217644978, ; 376: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 298
	i32 2222056684, ; 377: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 378: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 280
	i32 2252106437, ; 379: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 380: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2257952922, ; 381: pl\System.Private.ServiceModel.resources => 0x8695a09a => 361
	i32 2265110946, ; 382: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 383: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 193
	i32 2267999099, ; 384: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 231
	i32 2279755925, ; 385: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 287
	i32 2293034957, ; 386: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 387: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 388: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 389: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 338
	i32 2305521784, ; 390: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 391: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 235
	i32 2320631194, ; 392: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 393: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 394: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 395: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 396: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 332
	i32 2368005991, ; 397: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 398: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 192
	i32 2378619854, ; 399: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 400: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 401: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 333
	i32 2401565422, ; 402: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 403: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 262
	i32 2411328690, ; 404: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 185
	i32 2417490523, ; 405: zh-Hant\System.Private.ServiceModel.resources => 0x9017fa5b => 366
	i32 2421380589, ; 406: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 407: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 249
	i32 2427813419, ; 408: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 330
	i32 2435356389, ; 409: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 410: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 411: Microsoft.JSInterop.dll => 0x919672ca => 210
	i32 2452920002, ; 412: ko\System.Private.ServiceModel.resources.dll => 0x923496c2 => 360
	i32 2454642406, ; 413: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 414: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 415: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 416: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 252
	i32 2471841756, ; 417: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 418: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 419: Microsoft.Maui.Controls => 0x93dba8a1 => 212
	i32 2483903535, ; 420: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 421: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 422: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 423: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 424: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 336
	i32 2505896520, ; 425: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 274
	i32 2522472828, ; 426: Xamarin.Android.Glide.dll => 0x9659e17c => 229
	i32 2537015816, ; 427: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 184
	i32 2538310050, ; 428: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 429: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 331
	i32 2562349572, ; 430: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 431: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 432: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 335
	i32 2579076046, ; 433: System.Private.ServiceModel.dll => 0x99b993ce => 222
	i32 2581783588, ; 434: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 275
	i32 2581819634, ; 435: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 297
	i32 2585220780, ; 436: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 437: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 438: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 186
	i32 2589602615, ; 439: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 440: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 199
	i32 2593496499, ; 441: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 340
	i32 2601243817, ; 442: DevExpress.Pdf.v23.2.Core.dll => 0x9b0bd4a9 => 178
	i32 2605712449, ; 443: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 316
	i32 2615233544, ; 444: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 266
	i32 2616218305, ; 445: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 206
	i32 2617129537, ; 446: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 447: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 448: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 256
	i32 2624644809, ; 449: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 261
	i32 2626831493, ; 450: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 335
	i32 2627185994, ; 451: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 452: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 453: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 270
	i32 2663391936, ; 454: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 231
	i32 2663698177, ; 455: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 456: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 457: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 458: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 459: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 460: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 188
	i32 2693849962, ; 461: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 462: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 295
	i32 2715334215, ; 463: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 464: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 465: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 466: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 467: Xamarin.AndroidX.Activity => 0xa2e0939b => 233
	i32 2735172069, ; 468: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 469: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 184
	i32 2737747696, ; 470: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 239
	i32 2740698338, ; 471: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 321
	i32 2740948882, ; 472: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 473: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 474: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 341
	i32 2758225723, ; 475: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 213
	i32 2764765095, ; 476: Microsoft.Maui.dll => 0xa4caf7a7 => 214
	i32 2765824710, ; 477: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 478: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 310
	i32 2778768386, ; 479: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 300
	i32 2779977773, ; 480: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 288
	i32 2785988530, ; 481: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 347
	i32 2788224221, ; 482: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 266
	i32 2792943047, ; 483: DevExpress.Printing.v23.2.Core.dll => 0xa678edc7 => 180
	i32 2801831435, ; 484: Microsoft.Maui.Graphics => 0xa7008e0b => 216
	i32 2803228030, ; 485: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 486: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 253
	i32 2819470561, ; 487: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 488: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 489: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 288
	i32 2824502124, ; 490: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2833784645, ; 491: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 190
	i32 2838993487, ; 492: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 277
	i32 2849599387, ; 493: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 494: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 300
	i32 2855708567, ; 495: Xamarin.AndroidX.Transition => 0xaa36a797 => 296
	i32 2861098320, ; 496: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 497: Microsoft.Maui.Essentials => 0xaa8a4878 => 215
	i32 2868488919, ; 498: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 174
	i32 2870099610, ; 499: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 234
	i32 2875164099, ; 500: Jsr305Binding.dll => 0xab5f85c3 => 306
	i32 2875220617, ; 501: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 502: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 264
	i32 2887636118, ; 503: System.Net.dll => 0xac1dd496 => 81
	i32 2888083483, ; 504: zh-Hans\System.Private.ServiceModel.resources.dll => 0xac24a81b => 365
	i32 2892341533, ; 505: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 187
	i32 2899753641, ; 506: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 507: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 508: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 509: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 510: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 511: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 202
	i32 2916838712, ; 512: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 301
	i32 2919462931, ; 513: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 514: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 236
	i32 2921417940, ; 515: System.Security.Cryptography.Xml => 0xae214cd4 => 225
	i32 2936416060, ; 516: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 517: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 518: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 519: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2965157864, ; 520: Xamarin.AndroidX.Camera.View => 0xb0bcb7e8 => 246
	i32 2968338931, ; 521: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 522: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 523: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 260
	i32 2987532451, ; 524: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 291
	i32 2991449226, ; 525: Xamarin.AndroidX.Camera.Core => 0xb24de48a => 244
	i32 2996846495, ; 526: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 273
	i32 3000842441, ; 527: Xamarin.AndroidX.Camera.View.dll => 0xb2dd38c9 => 246
	i32 3002143204, ; 528: DevExpress.Pdf.v23.2.Drawing => 0xb2f111e4 => 179
	i32 3016983068, ; 529: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 293
	i32 3023353419, ; 530: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 531: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 268
	i32 3038032645, ; 532: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 367
	i32 3042692474, ; 533: DevExtreme.AspNet.Data => 0xb55bcd7a => 181
	i32 3047751430, ; 534: Xamarin.AndroidX.Camera.Core.dll => 0xb5a8ff06 => 244
	i32 3053864966, ; 535: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 327
	i32 3056245963, ; 536: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 290
	i32 3057625584, ; 537: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 281
	i32 3059408633, ; 538: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 539: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 540: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 541: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 542: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 543: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 544: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 545: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 546: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 547: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 548: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 549: GoogleGson.dll => 0xbba64c02 => 182
	i32 3159123045, ; 550: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 551: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 552: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 282
	i32 3192346100, ; 553: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 554: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 555: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 556: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 557: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 259
	i32 3215347189, ; 558: zxing => 0xbfa64df5 => 317
	i32 3220365878, ; 559: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 560: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3232326209, ; 561: DevExpress.Blazor.v23.2.dll => 0xc0a96241 => 175
	i32 3251039220, ; 562: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 563: Xamarin.AndroidX.CardView => 0xc235e84d => 247
	i32 3265493905, ; 564: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 565: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 566: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 567: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 568: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3286373667, ; 569: ZXing.Net.MAUI.dll => 0xc3e21523 => 318
	i32 3290767353, ; 570: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3298475414, ; 571: DevExpress.Drawing.v23.2.dll => 0xc49abd96 => 177
	i32 3299363146, ; 572: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 573: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3304269053, ; 574: pt-BR\System.Private.ServiceModel.resources.dll => 0xc4f324fd => 362
	i32 3305363605, ; 575: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 327
	i32 3316684772, ; 576: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 577: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 257
	i32 3317144872, ; 578: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 579: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 241
	i32 3345895724, ; 580: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 286
	i32 3346324047, ; 581: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 283
	i32 3357674450, ; 582: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 344
	i32 3358260929, ; 583: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 584: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 234
	i32 3362522851, ; 585: Xamarin.AndroidX.Core => 0xc86c06e3 => 254
	i32 3366347497, ; 586: Java.Interop => 0xc8a662e9 => 168
	i32 3366861359, ; 587: it\System.Private.ServiceModel.resources.dll => 0xc8ae3a2f => 358
	i32 3374999561, ; 588: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 287
	i32 3381016424, ; 589: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 323
	i32 3395150330, ; 590: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 591: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 592: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 258
	i32 3406629867, ; 593: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 200
	i32 3413944578, ; 594: Xamarin.AndroidX.Camera.Camera2.dll => 0xcb7ca902 => 243
	i32 3415917626, ; 595: DevExpress.Drawing.v23.2 => 0xcb9ac43a => 177
	i32 3421170118, ; 596: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 194
	i32 3421910702, ; 597: Xamarin.AndroidX.Camera.Camera2 => 0xcbf636ae => 243
	i32 3428513518, ; 598: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 197
	i32 3429136800, ; 599: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 600: netstandard => 0xcc7d82b4 => 167
	i32 3439065116, ; 601: DevExpress.Printing.v23.2.Core => 0xccfbf81c => 180
	i32 3441283291, ; 602: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 261
	i32 3445260447, ; 603: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 604: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 211
	i32 3458724246, ; 605: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 342
	i32 3464190856, ; 606: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 186
	i32 3471940407, ; 607: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 608: Mono.Android => 0xcf3163e6 => 171
	i32 3477396600, ; 609: DevExtreme.AspNet.Data.dll => 0xcf44dc78 => 181
	i32 3484440000, ; 610: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 343
	i32 3485117614, ; 611: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 612: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 613: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 250
	i32 3500000672, ; 614: Microsoft.JSInterop => 0xd09dc5a0 => 210
	i32 3509114376, ; 615: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 616: System.Security.dll => 0xd1854eb4 => 130
	i32 3524022140, ; 617: DevExpress.Blazor.v23.2 => 0xd20c4f7c => 175
	i32 3530912306, ; 618: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 619: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 620: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 621: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 622: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 351
	i32 3592228221, ; 623: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 353
	i32 3597029428, ; 624: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 232
	i32 3598340787, ; 625: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 626: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 627: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 628: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 285
	i32 3633644679, ; 629: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 236
	i32 3638274909, ; 630: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 631: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 271
	i32 3643446276, ; 632: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 348
	i32 3643854240, ; 633: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 282
	i32 3645089577, ; 634: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 635: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 193
	i32 3660523487, ; 636: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 637: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3676461095, ; 638: Xamarin.AndroidX.Camera.Lifecycle => 0xdb225827 => 245
	i32 3682565725, ; 639: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 242
	i32 3684561358, ; 640: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 250
	i32 3689375977, ; 641: System.Drawing.Common => 0xdbe768e9 => 219
	i32 3700866549, ; 642: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 643: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 255
	i32 3716563718, ; 644: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 645: Xamarin.AndroidX.Annotation => 0xdda814c6 => 235
	i32 3722202641, ; 646: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 196
	i32 3724971120, ; 647: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 281
	i32 3731644420, ; 648: System.Reactive => 0xde6c6004 => 223
	i32 3732100267, ; 649: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 650: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 190
	i32 3737834244, ; 651: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 652: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 653: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751582913, ; 654: ZXing.Net.MAUI.Controls => 0xdf9c9cc1 => 319
	i32 3751619990, ; 655: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 323
	i32 3758424670, ; 656: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 195
	i32 3765508441, ; 657: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 207
	i32 3786282454, ; 658: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 248
	i32 3792276235, ; 659: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 660: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 211
	i32 3802395368, ; 661: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3807198597, ; 662: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 224
	i32 3817368567, ; 663: CommunityToolkit.Maui.dll => 0xe3886bf7 => 173
	i32 3819260425, ; 664: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 665: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 666: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 667: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 198
	i32 3842894692, ; 668: ZXing.Net.MAUI => 0xe50deb64 => 318
	i32 3844307129, ; 669: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 670: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 671: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 672: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 673: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 674: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 675: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 296
	i32 3888767677, ; 676: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 286
	i32 3896106733, ; 677: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 678: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 254
	i32 3901907137, ; 679: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 680: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 339
	i32 3920810846, ; 681: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 682: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 299
	i32 3928044579, ; 683: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 684: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 685: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 284
	i32 3945713374, ; 686: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 687: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 688: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 238
	i32 3958304432, ; 689: DevExpress.Data.v23.2 => 0xebeeeeb0 => 176
	i32 3959773229, ; 690: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 273
	i32 3963657850, ; 691: zh-Hant\System.Private.ServiceModel.resources.dll => 0xec409e7a => 366
	i32 3967479620, ; 692: fr\System.Private.ServiceModel.resources.dll => 0xec7aef44 => 357
	i32 3972432407, ; 693: System.Private.ServiceModel => 0xecc68217 => 222
	i32 4003436829, ; 694: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 695: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 237
	i32 4023392905, ; 696: System.IO.Pipelines => 0xefd01a89 => 220
	i32 4025784931, ; 697: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 698: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 213
	i32 4047172718, ; 699: pl\System.Private.ServiceModel.resources.dll => 0xf13af46e => 361
	i32 4054681211, ; 700: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 701: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 702: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4082724041, ; 703: System.Web.Razor.dll => 0xf3596cc9 => 183
	i32 4091086043, ; 704: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 325
	i32 4094352644, ; 705: Microsoft.Maui.Essentials.dll => 0xf40add04 => 215
	i32 4099507663, ; 706: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 707: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 708: Xamarin.AndroidX.Emoji2 => 0xf479582c => 262
	i32 4103439459, ; 709: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 349
	i32 4118635771, ; 710: es\System.Private.ServiceModel.resources => 0xf57d64fb => 356
	i32 4126470640, ; 711: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 197
	i32 4127667938, ; 712: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 713: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 714: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 715: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 349
	i32 4151237749, ; 716: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 717: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 718: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 719: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 720: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 721: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 278
	i32 4185676441, ; 722: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 723: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 724: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4220358167, ; 725: DevExpress.Pdf.v23.2.Core => 0xfb8d8e17 => 178
	i32 4247884151, ; 726: fr\System.Private.ServiceModel.resources => 0xfd319177 => 357
	i32 4249188766, ; 727: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 338
	i32 4256097574, ; 728: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 255
	i32 4258378803, ; 729: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 277
	i32 4260525087, ; 730: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 731: Microsoft.Maui.Controls.dll => 0xfea12dee => 212
	i32 4274976490, ; 732: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 733: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 278
	i32 4294648842, ; 734: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 201
	i32 4294763496 ; 735: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 264
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [736 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 363, ; 3
	i32 274, ; 4
	i32 309, ; 5
	i32 48, ; 6
	i32 320, ; 7
	i32 217, ; 8
	i32 80, ; 9
	i32 245, ; 10
	i32 329, ; 11
	i32 145, ; 12
	i32 30, ; 13
	i32 353, ; 14
	i32 124, ; 15
	i32 216, ; 16
	i32 358, ; 17
	i32 102, ; 18
	i32 337, ; 19
	i32 292, ; 20
	i32 107, ; 21
	i32 292, ; 22
	i32 139, ; 23
	i32 313, ; 24
	i32 352, ; 25
	i32 345, ; 26
	i32 77, ; 27
	i32 124, ; 28
	i32 13, ; 29
	i32 248, ; 30
	i32 132, ; 31
	i32 294, ; 32
	i32 151, ; 33
	i32 365, ; 34
	i32 18, ; 35
	i32 242, ; 36
	i32 26, ; 37
	i32 268, ; 38
	i32 1, ; 39
	i32 59, ; 40
	i32 42, ; 41
	i32 91, ; 42
	i32 185, ; 43
	i32 251, ; 44
	i32 221, ; 45
	i32 147, ; 46
	i32 270, ; 47
	i32 267, ; 48
	i32 54, ; 49
	i32 69, ; 50
	i32 350, ; 51
	i32 233, ; 52
	i32 83, ; 53
	i32 328, ; 54
	i32 179, ; 55
	i32 269, ; 56
	i32 131, ; 57
	i32 55, ; 58
	i32 149, ; 59
	i32 74, ; 60
	i32 145, ; 61
	i32 62, ; 62
	i32 146, ; 63
	i32 367, ; 64
	i32 165, ; 65
	i32 348, ; 66
	i32 252, ; 67
	i32 12, ; 68
	i32 355, ; 69
	i32 265, ; 70
	i32 125, ; 71
	i32 152, ; 72
	i32 113, ; 73
	i32 166, ; 74
	i32 164, ; 75
	i32 267, ; 76
	i32 280, ; 77
	i32 326, ; 78
	i32 84, ; 79
	i32 209, ; 80
	i32 150, ; 81
	i32 313, ; 82
	i32 60, ; 83
	i32 347, ; 84
	i32 204, ; 85
	i32 51, ; 86
	i32 103, ; 87
	i32 114, ; 88
	i32 191, ; 89
	i32 40, ; 90
	i32 306, ; 91
	i32 228, ; 92
	i32 303, ; 93
	i32 201, ; 94
	i32 120, ; 95
	i32 218, ; 96
	i32 173, ; 97
	i32 52, ; 98
	i32 44, ; 99
	i32 223, ; 100
	i32 119, ; 101
	i32 257, ; 102
	i32 339, ; 103
	i32 364, ; 104
	i32 263, ; 105
	i32 362, ; 106
	i32 81, ; 107
	i32 136, ; 108
	i32 299, ; 109
	i32 240, ; 110
	i32 8, ; 111
	i32 73, ; 112
	i32 155, ; 113
	i32 315, ; 114
	i32 154, ; 115
	i32 92, ; 116
	i32 310, ; 117
	i32 45, ; 118
	i32 224, ; 119
	i32 314, ; 120
	i32 109, ; 121
	i32 129, ; 122
	i32 25, ; 123
	i32 230, ; 124
	i32 72, ; 125
	i32 55, ; 126
	i32 0, ; 127
	i32 0, ; 128
	i32 46, ; 129
	i32 345, ; 130
	i32 305, ; 131
	i32 208, ; 132
	i32 258, ; 133
	i32 189, ; 134
	i32 22, ; 135
	i32 272, ; 136
	i32 219, ; 137
	i32 86, ; 138
	i32 43, ; 139
	i32 160, ; 140
	i32 71, ; 141
	i32 319, ; 142
	i32 285, ; 143
	i32 221, ; 144
	i32 317, ; 145
	i32 330, ; 146
	i32 3, ; 147
	i32 42, ; 148
	i32 63, ; 149
	i32 344, ; 150
	i32 16, ; 151
	i32 53, ; 152
	i32 341, ; 153
	i32 309, ; 154
	i32 105, ; 155
	i32 217, ; 156
	i32 314, ; 157
	i32 334, ; 158
	i32 307, ; 159
	i32 269, ; 160
	i32 226, ; 161
	i32 34, ; 162
	i32 158, ; 163
	i32 85, ; 164
	i32 32, ; 165
	i32 343, ; 166
	i32 12, ; 167
	i32 51, ; 168
	i32 203, ; 169
	i32 56, ; 170
	i32 289, ; 171
	i32 36, ; 172
	i32 198, ; 173
	i32 308, ; 174
	i32 238, ; 175
	i32 35, ; 176
	i32 324, ; 177
	i32 58, ; 178
	i32 276, ; 179
	i32 359, ; 180
	i32 305, ; 181
	i32 182, ; 182
	i32 226, ; 183
	i32 17, ; 184
	i32 311, ; 185
	i32 164, ; 186
	i32 195, ; 187
	i32 346, ; 188
	i32 340, ; 189
	i32 336, ; 190
	i32 275, ; 191
	i32 206, ; 192
	i32 302, ; 193
	i32 342, ; 194
	i32 153, ; 195
	i32 199, ; 196
	i32 298, ; 197
	i32 283, ; 198
	i32 240, ; 199
	i32 29, ; 200
	i32 52, ; 201
	i32 359, ; 202
	i32 303, ; 203
	i32 5, ; 204
	i32 322, ; 205
	i32 293, ; 206
	i32 297, ; 207
	i32 364, ; 208
	i32 249, ; 209
	i32 315, ; 210
	i32 237, ; 211
	i32 260, ; 212
	i32 331, ; 213
	i32 85, ; 214
	i32 302, ; 215
	i32 61, ; 216
	i32 112, ; 217
	i32 351, ; 218
	i32 57, ; 219
	i32 352, ; 220
	i32 289, ; 221
	i32 99, ; 222
	i32 227, ; 223
	i32 19, ; 224
	i32 253, ; 225
	i32 111, ; 226
	i32 101, ; 227
	i32 102, ; 228
	i32 320, ; 229
	i32 104, ; 230
	i32 307, ; 231
	i32 71, ; 232
	i32 38, ; 233
	i32 32, ; 234
	i32 200, ; 235
	i32 103, ; 236
	i32 73, ; 237
	i32 326, ; 238
	i32 9, ; 239
	i32 123, ; 240
	i32 46, ; 241
	i32 239, ; 242
	i32 209, ; 243
	i32 9, ; 244
	i32 43, ; 245
	i32 4, ; 246
	i32 290, ; 247
	i32 203, ; 248
	i32 350, ; 249
	i32 31, ; 250
	i32 138, ; 251
	i32 92, ; 252
	i32 189, ; 253
	i32 93, ; 254
	i32 49, ; 255
	i32 141, ; 256
	i32 176, ; 257
	i32 112, ; 258
	i32 140, ; 259
	i32 259, ; 260
	i32 115, ; 261
	i32 308, ; 262
	i32 157, ; 263
	i32 218, ; 264
	i32 76, ; 265
	i32 79, ; 266
	i32 363, ; 267
	i32 279, ; 268
	i32 37, ; 269
	i32 301, ; 270
	i32 196, ; 271
	i32 174, ; 272
	i32 263, ; 273
	i32 256, ; 274
	i32 64, ; 275
	i32 138, ; 276
	i32 15, ; 277
	i32 188, ; 278
	i32 116, ; 279
	i32 295, ; 280
	i32 304, ; 281
	i32 251, ; 282
	i32 48, ; 283
	i32 70, ; 284
	i32 80, ; 285
	i32 126, ; 286
	i32 356, ; 287
	i32 94, ; 288
	i32 121, ; 289
	i32 312, ; 290
	i32 26, ; 291
	i32 272, ; 292
	i32 97, ; 293
	i32 28, ; 294
	i32 247, ; 295
	i32 321, ; 296
	i32 149, ; 297
	i32 220, ; 298
	i32 169, ; 299
	i32 4, ; 300
	i32 98, ; 301
	i32 187, ; 302
	i32 33, ; 303
	i32 93, ; 304
	i32 294, ; 305
	i32 360, ; 306
	i32 204, ; 307
	i32 21, ; 308
	i32 354, ; 309
	i32 41, ; 310
	i32 170, ; 311
	i32 337, ; 312
	i32 265, ; 313
	i32 329, ; 314
	i32 191, ; 315
	i32 279, ; 316
	i32 311, ; 317
	i32 304, ; 318
	i32 284, ; 319
	i32 2, ; 320
	i32 134, ; 321
	i32 111, ; 322
	i32 205, ; 323
	i32 230, ; 324
	i32 346, ; 325
	i32 58, ; 326
	i32 95, ; 327
	i32 328, ; 328
	i32 39, ; 329
	i32 241, ; 330
	i32 25, ; 331
	i32 94, ; 332
	i32 322, ; 333
	i32 89, ; 334
	i32 99, ; 335
	i32 355, ; 336
	i32 10, ; 337
	i32 227, ; 338
	i32 87, ; 339
	i32 183, ; 340
	i32 333, ; 341
	i32 100, ; 342
	i32 291, ; 343
	i32 192, ; 344
	i32 312, ; 345
	i32 232, ; 346
	i32 325, ; 347
	i32 7, ; 348
	i32 354, ; 349
	i32 276, ; 350
	i32 229, ; 351
	i32 88, ; 352
	i32 194, ; 353
	i32 271, ; 354
	i32 154, ; 355
	i32 324, ; 356
	i32 33, ; 357
	i32 202, ; 358
	i32 116, ; 359
	i32 225, ; 360
	i32 82, ; 361
	i32 228, ; 362
	i32 20, ; 363
	i32 11, ; 364
	i32 162, ; 365
	i32 3, ; 366
	i32 214, ; 367
	i32 332, ; 368
	i32 208, ; 369
	i32 205, ; 370
	i32 84, ; 371
	i32 316, ; 372
	i32 64, ; 373
	i32 207, ; 374
	i32 334, ; 375
	i32 298, ; 376
	i32 143, ; 377
	i32 280, ; 378
	i32 157, ; 379
	i32 41, ; 380
	i32 361, ; 381
	i32 117, ; 382
	i32 193, ; 383
	i32 231, ; 384
	i32 287, ; 385
	i32 131, ; 386
	i32 75, ; 387
	i32 66, ; 388
	i32 338, ; 389
	i32 172, ; 390
	i32 235, ; 391
	i32 143, ; 392
	i32 106, ; 393
	i32 151, ; 394
	i32 70, ; 395
	i32 332, ; 396
	i32 156, ; 397
	i32 192, ; 398
	i32 121, ; 399
	i32 127, ; 400
	i32 333, ; 401
	i32 152, ; 402
	i32 262, ; 403
	i32 185, ; 404
	i32 366, ; 405
	i32 141, ; 406
	i32 249, ; 407
	i32 330, ; 408
	i32 20, ; 409
	i32 14, ; 410
	i32 210, ; 411
	i32 360, ; 412
	i32 135, ; 413
	i32 75, ; 414
	i32 59, ; 415
	i32 252, ; 416
	i32 167, ; 417
	i32 168, ; 418
	i32 212, ; 419
	i32 15, ; 420
	i32 74, ; 421
	i32 6, ; 422
	i32 23, ; 423
	i32 336, ; 424
	i32 274, ; 425
	i32 229, ; 426
	i32 184, ; 427
	i32 91, ; 428
	i32 331, ; 429
	i32 1, ; 430
	i32 136, ; 431
	i32 335, ; 432
	i32 222, ; 433
	i32 275, ; 434
	i32 297, ; 435
	i32 134, ; 436
	i32 69, ; 437
	i32 186, ; 438
	i32 146, ; 439
	i32 199, ; 440
	i32 340, ; 441
	i32 178, ; 442
	i32 316, ; 443
	i32 266, ; 444
	i32 206, ; 445
	i32 88, ; 446
	i32 96, ; 447
	i32 256, ; 448
	i32 261, ; 449
	i32 335, ; 450
	i32 31, ; 451
	i32 45, ; 452
	i32 270, ; 453
	i32 231, ; 454
	i32 109, ; 455
	i32 158, ; 456
	i32 35, ; 457
	i32 22, ; 458
	i32 114, ; 459
	i32 188, ; 460
	i32 57, ; 461
	i32 295, ; 462
	i32 144, ; 463
	i32 118, ; 464
	i32 120, ; 465
	i32 110, ; 466
	i32 233, ; 467
	i32 139, ; 468
	i32 184, ; 469
	i32 239, ; 470
	i32 321, ; 471
	i32 54, ; 472
	i32 105, ; 473
	i32 341, ; 474
	i32 213, ; 475
	i32 214, ; 476
	i32 133, ; 477
	i32 310, ; 478
	i32 300, ; 479
	i32 288, ; 480
	i32 347, ; 481
	i32 266, ; 482
	i32 180, ; 483
	i32 216, ; 484
	i32 159, ; 485
	i32 253, ; 486
	i32 163, ; 487
	i32 132, ; 488
	i32 288, ; 489
	i32 161, ; 490
	i32 190, ; 491
	i32 277, ; 492
	i32 140, ; 493
	i32 300, ; 494
	i32 296, ; 495
	i32 169, ; 496
	i32 215, ; 497
	i32 174, ; 498
	i32 234, ; 499
	i32 306, ; 500
	i32 40, ; 501
	i32 264, ; 502
	i32 81, ; 503
	i32 365, ; 504
	i32 187, ; 505
	i32 56, ; 506
	i32 37, ; 507
	i32 97, ; 508
	i32 166, ; 509
	i32 172, ; 510
	i32 202, ; 511
	i32 301, ; 512
	i32 82, ; 513
	i32 236, ; 514
	i32 225, ; 515
	i32 98, ; 516
	i32 30, ; 517
	i32 159, ; 518
	i32 18, ; 519
	i32 246, ; 520
	i32 127, ; 521
	i32 119, ; 522
	i32 260, ; 523
	i32 291, ; 524
	i32 244, ; 525
	i32 273, ; 526
	i32 246, ; 527
	i32 179, ; 528
	i32 293, ; 529
	i32 165, ; 530
	i32 268, ; 531
	i32 367, ; 532
	i32 181, ; 533
	i32 244, ; 534
	i32 327, ; 535
	i32 290, ; 536
	i32 281, ; 537
	i32 170, ; 538
	i32 16, ; 539
	i32 144, ; 540
	i32 125, ; 541
	i32 118, ; 542
	i32 38, ; 543
	i32 115, ; 544
	i32 47, ; 545
	i32 142, ; 546
	i32 117, ; 547
	i32 34, ; 548
	i32 182, ; 549
	i32 95, ; 550
	i32 53, ; 551
	i32 282, ; 552
	i32 129, ; 553
	i32 153, ; 554
	i32 24, ; 555
	i32 161, ; 556
	i32 259, ; 557
	i32 317, ; 558
	i32 148, ; 559
	i32 104, ; 560
	i32 175, ; 561
	i32 89, ; 562
	i32 247, ; 563
	i32 60, ; 564
	i32 142, ; 565
	i32 100, ; 566
	i32 5, ; 567
	i32 13, ; 568
	i32 318, ; 569
	i32 122, ; 570
	i32 177, ; 571
	i32 135, ; 572
	i32 28, ; 573
	i32 362, ; 574
	i32 327, ; 575
	i32 72, ; 576
	i32 257, ; 577
	i32 24, ; 578
	i32 241, ; 579
	i32 286, ; 580
	i32 283, ; 581
	i32 344, ; 582
	i32 137, ; 583
	i32 234, ; 584
	i32 254, ; 585
	i32 168, ; 586
	i32 358, ; 587
	i32 287, ; 588
	i32 323, ; 589
	i32 101, ; 590
	i32 123, ; 591
	i32 258, ; 592
	i32 200, ; 593
	i32 243, ; 594
	i32 177, ; 595
	i32 194, ; 596
	i32 243, ; 597
	i32 197, ; 598
	i32 163, ; 599
	i32 167, ; 600
	i32 180, ; 601
	i32 261, ; 602
	i32 39, ; 603
	i32 211, ; 604
	i32 342, ; 605
	i32 186, ; 606
	i32 17, ; 607
	i32 171, ; 608
	i32 181, ; 609
	i32 343, ; 610
	i32 137, ; 611
	i32 150, ; 612
	i32 250, ; 613
	i32 210, ; 614
	i32 155, ; 615
	i32 130, ; 616
	i32 175, ; 617
	i32 19, ; 618
	i32 65, ; 619
	i32 147, ; 620
	i32 47, ; 621
	i32 351, ; 622
	i32 353, ; 623
	i32 232, ; 624
	i32 79, ; 625
	i32 61, ; 626
	i32 106, ; 627
	i32 285, ; 628
	i32 236, ; 629
	i32 49, ; 630
	i32 271, ; 631
	i32 348, ; 632
	i32 282, ; 633
	i32 14, ; 634
	i32 193, ; 635
	i32 68, ; 636
	i32 171, ; 637
	i32 245, ; 638
	i32 242, ; 639
	i32 250, ; 640
	i32 219, ; 641
	i32 78, ; 642
	i32 255, ; 643
	i32 108, ; 644
	i32 235, ; 645
	i32 196, ; 646
	i32 281, ; 647
	i32 223, ; 648
	i32 67, ; 649
	i32 190, ; 650
	i32 63, ; 651
	i32 27, ; 652
	i32 160, ; 653
	i32 319, ; 654
	i32 323, ; 655
	i32 195, ; 656
	i32 207, ; 657
	i32 248, ; 658
	i32 10, ; 659
	i32 211, ; 660
	i32 11, ; 661
	i32 224, ; 662
	i32 173, ; 663
	i32 78, ; 664
	i32 126, ; 665
	i32 83, ; 666
	i32 198, ; 667
	i32 318, ; 668
	i32 66, ; 669
	i32 107, ; 670
	i32 65, ; 671
	i32 128, ; 672
	i32 122, ; 673
	i32 77, ; 674
	i32 296, ; 675
	i32 286, ; 676
	i32 8, ; 677
	i32 254, ; 678
	i32 2, ; 679
	i32 339, ; 680
	i32 44, ; 681
	i32 299, ; 682
	i32 156, ; 683
	i32 128, ; 684
	i32 284, ; 685
	i32 23, ; 686
	i32 133, ; 687
	i32 238, ; 688
	i32 176, ; 689
	i32 273, ; 690
	i32 366, ; 691
	i32 357, ; 692
	i32 222, ; 693
	i32 29, ; 694
	i32 237, ; 695
	i32 220, ; 696
	i32 62, ; 697
	i32 213, ; 698
	i32 361, ; 699
	i32 90, ; 700
	i32 87, ; 701
	i32 148, ; 702
	i32 183, ; 703
	i32 325, ; 704
	i32 215, ; 705
	i32 36, ; 706
	i32 86, ; 707
	i32 262, ; 708
	i32 349, ; 709
	i32 356, ; 710
	i32 197, ; 711
	i32 50, ; 712
	i32 6, ; 713
	i32 90, ; 714
	i32 349, ; 715
	i32 21, ; 716
	i32 162, ; 717
	i32 96, ; 718
	i32 50, ; 719
	i32 113, ; 720
	i32 278, ; 721
	i32 130, ; 722
	i32 76, ; 723
	i32 27, ; 724
	i32 178, ; 725
	i32 357, ; 726
	i32 338, ; 727
	i32 255, ; 728
	i32 277, ; 729
	i32 7, ; 730
	i32 212, ; 731
	i32 110, ; 732
	i32 278, ; 733
	i32 201, ; 734
	i32 264 ; 735
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
