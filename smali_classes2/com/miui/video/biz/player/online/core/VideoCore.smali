.class public final Lcom/miui/video/biz/player/online/core/VideoCore;
.super Ljava/lang/Object;
.source "VideoCore.kt"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;,
        Lcom/miui/video/biz/player/online/core/VideoCore$phoneStateListener;,
        Lcom/miui/video/biz/player/online/core/VideoCore$NetConnectListener;,
        Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;,
        Lcom/miui/video/biz/player/online/core/VideoCore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoCore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoCore.kt\ncom/miui/video/biz/player/online/core/VideoCore\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1773:1\n843#1,8:1776\n238#2,2:1774\n*E\n*S KotlinDebug\n*F\n+ 1 VideoCore.kt\ncom/miui/video/biz/player/online/core/VideoCore\n*L\n833#1,8:1776\n536#1,2:1774\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00ba\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008)\n\u0002\u0018\u0002\u0018\u0000 \u00e8\u00012\u00020\u00012\u00020\u0002:\n\u00e8\u0001\u00e9\u0001\u00ea\u0001\u00eb\u0001\u00ec\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u000201J\u000e\u0010x\u001a\u00020v2\u0006\u0010w\u001a\u00020yJ\t\u0010z\u001a\u00020vH\u0082\u0008J\u0014\u0010{\u001a\u00020v2\u000c\u0010|\u001a\u0008\u0012\u0004\u0012\u00020~0}J\u000f\u0010\u007f\u001a\u00020v2\u0007\u0010\u0080\u0001\u001a\u00020[J\t\u0010\u0081\u0001\u001a\u00020vH\u0002J\u0007\u0010\u0082\u0001\u001a\u00020vJ\u001b\u0010\u0083\u0001\u001a\u00020\u00132\u0007\u0010\u0084\u0001\u001a\u00020\u00112\t\u0008\u0002\u0010\u0085\u0001\u001a\u00020\u0013J\u0011\u0010\u0086\u0001\u001a\u00020v2\u0008\u0010\u0087\u0001\u001a\u00030\u0088\u0001J\u001b\u0010\u0089\u0001\u001a\u0008\u0012\u0004\u0012\u00020~0}2\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u0001H\u0002J\u0007\u0010\u008c\u0001\u001a\u00020sJ\t\u0010\u008d\u0001\u001a\u00020vH\u0002J\t\u0010\u008e\u0001\u001a\u00020vH\u0002J\t\u0010\u008f\u0001\u001a\u00020vH\u0016J\u001b\u0010\u0090\u0001\u001a\u00020v2\u0007\u0010\u0091\u0001\u001a\u00020[2\u0007\u0010\u0092\u0001\u001a\u00020[H\u0002J\t\u0010\u0093\u0001\u001a\u00020vH\u0002J\u001e\u0010\u0094\u0001\u001a\u00020v2\u0007\u0010\u0095\u0001\u001a\u00020\u001a2\u000c\u0008\u0002\u0010\u0096\u0001\u001a\u0005\u0018\u00010\u0097\u0001J\u0012\u0010\u0098\u0001\u001a\u00020v2\u0007\u0010\u0099\u0001\u001a\u00020\u0007H\u0002J\t\u0010\u009a\u0001\u001a\u00020vH\u0002J/\u0010\u009b\u0001\u001a\u00020\u00132\u0007\u0010\u0084\u0001\u001a\u00020\u00112\u001b\u0010\u0087\u0001\u001a\u0016\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u009d\u00010}\u0012\u0004\u0012\u00020v0\u009c\u0001H\u0002J\u0007\u0010\u009e\u0001\u001a\u00020vJ\u0010\u0010\u009f\u0001\u001a\u00020v2\u0007\u0010\u00a0\u0001\u001a\u00020\u0007J\u0007\u0010\u00a1\u0001\u001a\u00020vJ\u0012\u0010\u00a2\u0001\u001a\u00020v2\u0007\u0010\u00a3\u0001\u001a\u00020[H\u0016J\'\u0010\u00a4\u0001\u001a\u00020v2\n\u0010\u00a5\u0001\u001a\u0005\u0018\u00010\u00a6\u00012\n\u0010\u00a7\u0001\u001a\u0005\u0018\u00010\u00a8\u0001H\u0000\u00a2\u0006\u0003\u0008\u00a9\u0001J\u000f\u0010\u00aa\u0001\u001a\u00020vH\u0000\u00a2\u0006\u0003\u0008\u00ab\u0001J\u000f\u0010\u00ac\u0001\u001a\u00020vH\u0000\u00a2\u0006\u0003\u0008\u00ad\u0001J\u000f\u0010\u00ae\u0001\u001a\u00020vH\u0000\u00a2\u0006\u0003\u0008\u00af\u0001J\u0013\u0010\u00b0\u0001\u001a\u00020\u00132\n\u0010\u00b1\u0001\u001a\u0005\u0018\u00010\u00b2\u0001J\u0018\u0010\u00b3\u0001\u001a\u00020v2\u0007\u0010\u00b4\u0001\u001a\u00020\u0013H\u0000\u00a2\u0006\u0003\u0008\u00b5\u0001J(\u0010\u00b6\u0001\u001a\u00020v2\u0007\u0010\u00b7\u0001\u001a\u00020\u00132\t\u0010\u00b8\u0001\u001a\u0004\u0018\u00010\u00072\t\u0010\u00b9\u0001\u001a\u0004\u0018\u00010\u0007H\u0016J\u0007\u0010\u00ba\u0001\u001a\u00020vJ\"\u0010\u00bb\u0001\u001a\u00020v2\u0007\u0010\u0084\u0001\u001a\u00020\u00112\u000e\u0010\u00bc\u0001\u001a\t\u0012\u0005\u0012\u00030\u009d\u00010}H\u0002J\u0012\u0010\u00bd\u0001\u001a\u00020v2\t\u0008\u0002\u0010\u00be\u0001\u001a\u00020[J\u0007\u0010\u00bf\u0001\u001a\u00020vJ\u0012\u0010\u00c0\u0001\u001a\u00020\u00132\u0007\u0010\u0084\u0001\u001a\u00020\u0011H\u0002J\u001a\u0010\u00c0\u0001\u001a\u00020\u00132\u0007\u0010\u00c1\u0001\u001a\u00020[2\u0008\u0008\u0002\u0010Z\u001a\u00020[J+\u0010\u00c2\u0001\u001a\u00020v2\u0007\u0010\u00c3\u0001\u001a\u00020\u00072\u0007\u0010\u0084\u0001\u001a\u00020\u00112\u000e\u0010\u00c4\u0001\u001a\t\u0012\u0004\u0012\u00020v0\u00c5\u0001H\u0002J\u0007\u0010\u00c6\u0001\u001a\u00020\u0013J\u0007\u0010\u00c7\u0001\u001a\u00020vJ\t\u0010\u00c8\u0001\u001a\u00020vH\u0002J\t\u0010\u00c9\u0001\u001a\u00020vH\u0002J\t\u0010\u00ca\u0001\u001a\u00020vH\u0002J\u0007\u0010\u00cb\u0001\u001a\u00020vJ\t\u0010\u00cc\u0001\u001a\u00020vH\u0002J\u0007\u0010\u00cd\u0001\u001a\u00020vJ\t\u0010\u00ce\u0001\u001a\u00020vH\u0002J\u0010\u0010\u00cf\u0001\u001a\u00020v2\u0007\u0010\u00d0\u0001\u001a\u00020\u0013J\t\u0010\u00d1\u0001\u001a\u00020vH\u0002J\u0012\u0010\u00d2\u0001\u001a\u00020v2\t\u0008\u0002\u0010\u00be\u0001\u001a\u00020[J\u0010\u0010\u00d3\u0001\u001a\u00020v2\u0007\u0010\u00d4\u0001\u001a\u00020[J \u0010\u00d5\u0001\u001a\u00020v2\t\u0010\u00d6\u0001\u001a\u0004\u0018\u00010B2\n\u0010\u00d7\u0001\u001a\u0005\u0018\u00010\u0097\u0001H\u0002J\u0012\u0010\u00d8\u0001\u001a\u00020v2\t\u0010\u00d9\u0001\u001a\u0004\u0018\u00010\u0007J\u001b\u0010\u00da\u0001\u001a\u00020v2\u0007\u0010\u00db\u0001\u001a\u00020f2\u0007\u0010\u00dc\u0001\u001a\u00020HH\u0002J\u0013\u0010\u00dd\u0001\u001a\u00020v2\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u0001J\t\u0010\u00de\u0001\u001a\u00020vH\u0002J\u0010\u0010\u00df\u0001\u001a\u00020v2\u0007\u0010\u00e0\u0001\u001a\u00020[J\u0007\u0010\u00e1\u0001\u001a\u00020vJ\u0010\u0010\u00e2\u0001\u001a\u00020\u00132\u0007\u0010\u0084\u0001\u001a\u00020\u0011J\u0010\u0010\u00e2\u0001\u001a\u00020\u00132\u0007\u0010\u00a0\u0001\u001a\u00020\u0007J\u0007\u0010\u00e3\u0001\u001a\u00020vJ\u0007\u0010\u00e4\u0001\u001a\u00020vJ\t\u0010\u00e5\u0001\u001a\u00020vH\u0002J\u0012\u0010\u00e6\u0001\u001a\u00020v2\u0007\u0010\u00e7\u0001\u001a\u00020sH\u0002R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR$\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u0013@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001f\"\u0004\u0008#\u0010!R\u000e\u0010$\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010%\u001a\u00020\u00138BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u001fR\u000e\u0010&\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010(\u001a\u0004\u0018\u00010)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u000e\u0010.\u001a\u00020/X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00103\u001a\u0004\u0018\u000104X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00105\u001a\u0008\u0018\u000106R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u000208X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00109\u001a\u0004\u0018\u00010:X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010<\u001a\u0004\u0018\u00010=X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020?X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u000208X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010A\u001a\u0004\u0018\u00010BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\u000e\u0010G\u001a\u00020HX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010I\u001a\u0004\u0018\u00010BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010D\"\u0004\u0008K\u0010FR\u0011\u0010L\u001a\u00020\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008M\u0010\u001cR\u0017\u0010N\u001a\u0008\u0012\u0004\u0012\u00020P0O8F\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010RR$\u0010T\u001a\u00020S2\u0006\u0010\u001d\u001a\u00020S@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR\u0010\u0010Y\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010Z\u001a\u00020[X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_R\u0010\u0010`\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010a\u001a\u00020b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008c\u0010dR\u000e\u0010e\u001a\u00020fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010g\u001a\u00020hX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010i\u001a\u00020\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008j\u0010\u001cR\u000e\u0010k\u001a\u00020lX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010m\u001a\u0004\u0018\u00010nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010o\u001a\u00020pX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010q\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010r\u001a\u00020sX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010t\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00ed\u0001\u00b2\u0006\u000c\u0010\u00ee\u0001\u001a\u00030\u00ef\u0001X\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/core/VideoCore;",
        "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
        "Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;",
        "hostActivity",
        "Landroid/support/v4/app/FragmentActivity;",
        "(Landroid/support/v4/app/FragmentActivity;)V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "currentScreenState",
        "Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;",
        "getCurrentScreenState",
        "()Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;",
        "setCurrentScreenState",
        "(Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;)V",
        "currentVideo",
        "Lcom/miui/video/player/service/model/VideoObject;",
        "firstInvokeOnPrepare",
        "",
        "firstTimeRegistNetWorkChange",
        "handleContinueWhileAdsPlaying",
        "hasRegisterPhoneState",
        "getHostActivity",
        "()Landroid/support/v4/app/FragmentActivity;",
        "innerVideoContainer",
        "Landroid/widget/FrameLayout;",
        "getInnerVideoContainer",
        "()Landroid/widget/FrameLayout;",
        "value",
        "isAttach",
        "()Z",
        "setAttach",
        "(Z)V",
        "isDurationInit",
        "setDurationInit",
        "isFirstFrameBuffer",
        "isReady2PlayVideo",
        "isShouldInit",
        "lastTrackTarget",
        "mAdView",
        "Lcom/miui/video/biz/player/online/ad/MiAdsView;",
        "getMAdView",
        "()Lcom/miui/video/biz/player/online/ad/MiAdsView;",
        "setMAdView",
        "(Lcom/miui/video/biz/player/online/ad/MiAdsView;)V",
        "mAudioManager",
        "Lcom/miui/video/player/service/audio/MiAudioManager;",
        "mChangeEpisodeListener",
        "Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;",
        "mInitPhoneState",
        "mMediaSession",
        "Lcom/miui/video/player/service/utils/media/MiMediaSession;",
        "mNetConnectListener",
        "Lcom/miui/video/biz/player/online/core/VideoCore$NetConnectListener;",
        "mNetHandler",
        "Lcom/miui/video/base/common/task/WeakHandler;",
        "mOnReceiveMediaEventListener",
        "Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;",
        "mPausedByLossAudio",
        "mPhoneStateListener",
        "Landroid/telephony/PhoneStateListener;",
        "mTogglePlayerRunner",
        "Ljava/lang/Runnable;",
        "mUIHandler",
        "miniScreenContain",
        "Landroid/view/ViewGroup;",
        "getMiniScreenContain",
        "()Landroid/view/ViewGroup;",
        "setMiniScreenContain",
        "(Landroid/view/ViewGroup;)V",
        "orientationUpdater",
        "Lcom/miui/video/player/service/play/OrientationUpdater;",
        "outerVideoContainer",
        "getOuterVideoContainer",
        "setOuterVideoContainer",
        "placeHolderView",
        "getPlaceHolderView",
        "playerControlProxy",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/miui/video/player/service/media/MediaPlayerControl;",
        "getPlayerControlProxy",
        "()Ljava/lang/ref/WeakReference;",
        "Lcom/miui/video/base/IPlayer$playerMode;",
        "playerMode",
        "getPlayerMode",
        "()Lcom/miui/video/base/IPlayer$playerMode;",
        "setPlayerMode",
        "(Lcom/miui/video/base/IPlayer$playerMode;)V",
        "playingVideo",
        "seekPos",
        "",
        "getSeekPos",
        "()I",
        "setSeekPos",
        "(I)V",
        "trackTarget",
        "videoContext",
        "Lcom/miui/video/onlineplayer/core/VideoContext;",
        "getVideoContext",
        "()Lcom/miui/video/onlineplayer/core/VideoContext;",
        "videoControllerPresenter",
        "Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;",
        "videoFragment",
        "Lcom/miui/video/biz/player/online/core/VideoFragment;",
        "videoFragmentContainer",
        "getVideoFragmentContainer",
        "videoLoadingPresenter",
        "Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;",
        "videoLoadingView",
        "Lcom/miui/video/onlineplayer/ui/VideoLoadingView;",
        "videoPlayControllerView",
        "Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;",
        "videoReadyToSaveHistory",
        "videoView",
        "Lcom/miui/video/player/service/media/IVideoView;",
        "videoViewPrepared",
        "addChangeEpisodeListener",
        "",
        "listener",
        "addPlayStatusListener",
        "Lcom/miui/video/base/IPlayer$IVideoStatusListener;",
        "addVideoView",
        "addVideos",
        "videos",
        "",
        "Lcom/miui/video/base/model/MediaData$Episode;",
        "callStateChanged",
        "state",
        "canShowController",
        "continuePlayFromNetWork",
        "corePlay",
        "video",
        "isForceRemote",
        "getCurrentPosition",
        "callback",
        "Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;",
        "getVideoObjects",
        "media",
        "Lcom/miui/video/base/model/MediaData$Media;",
        "getVideoView",
        "gotoFullScreen",
        "gotoMiniScreen",
        "handleContinuePlay",
        "handleError",
        "what",
        "extra",
        "hideController",
        "initVideoLayout",
        "layout",
        "fr",
        "Landroid/support/v4/app/Fragment;",
        "initVideoView",
        "plugin_id",
        "insertHistory",
        "loadAsync",
        "Lkotlin/Function1;",
        "Lcom/miui/video/common/feed/entity/PlayInfo;",
        "netChange",
        "notifyToDetailPage",
        "id",
        "onActivityDestroy",
        "onAudioFocusChange",
        "focusChange",
        "onFragmentConfigChanged",
        "context",
        "Landroid/content/Context;",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onFragmentConfigChanged$biz_player_online_release",
        "onFragmentDestroy",
        "onFragmentDestroy$biz_player_online_release",
        "onFragmentStart",
        "onFragmentStart$biz_player_online_release",
        "onFragmentStop",
        "onFragmentStop$biz_player_online_release",
        "onKeyDown",
        "event",
        "Landroid/view/KeyEvent;",
        "onMultiWindowChange",
        "boolean",
        "onMultiWindowChange$biz_player_online_release",
        "onShowUpdateView",
        "hasUpdate",
        "content",
        "targetVersionName",
        "onVideoCompleted",
        "onVideoPlayInfoLoaded",
        "repsonse",
        "pause",
        "mode",
        "pauseForNetWork",
        "play",
        "ciIndex",
        "playAd",
        "tagId",
        "after",
        "Lkotlin/Function0;",
        "reLoadVideo",
        "registerNetListener",
        "registerOnListeners",
        "registerPhoneStateListener",
        "release",
        "releasePlayer",
        "releaseVideoView",
        "replay",
        "reportServerError",
        "requestAudioFocus",
        "request",
        "reset",
        "resume",
        "seekTo",
        "position",
        "setLayoutContainer",
        "container",
        "frag",
        "setTarget",
        "target",
        "setVideoController",
        "videoPresenter",
        "mOrientationUpdater",
        "setVideos",
        "showVideoPlayError",
        "startPreload",
        "where",
        "stopIfPlaying",
        "switchPlayingVideo",
        "togglePlayState",
        "unRegisterNetListener",
        "unRegisterPhoneStateListener",
        "unregisterOnListeners",
        "vv",
        "Companion",
        "NetConnectListener",
        "PluginAdListener",
        "ScreenState",
        "phoneStateListener",
        "biz_player_online_release",
        "ft",
        "Landroid/support/v4/app/FragmentTransaction;"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/miui/video/biz/player/online/core/VideoCore$Companion;

.field public static final inline_preload:I = 0x1

.field public static final normal_preload:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentScreenState:Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentVideo:Lcom/miui/video/player/service/model/VideoObject;

.field private firstInvokeOnPrepare:Z

.field private firstTimeRegistNetWorkChange:Z

.field private handleContinueWhileAdsPlaying:Z

.field private hasRegisterPhoneState:Z

.field private final hostActivity:Landroid/support/v4/app/FragmentActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final innerVideoContainer:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isAttach:Z

.field private isDurationInit:Z

.field private isFirstFrameBuffer:Z

.field private isShouldInit:Z

.field private lastTrackTarget:Ljava/lang/String;

.field private mAdView:Lcom/miui/video/biz/player/online/ad/MiAdsView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

.field private mChangeEpisodeListener:Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;

.field private mInitPhoneState:Z

.field private mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

.field private mNetConnectListener:Lcom/miui/video/biz/player/online/core/VideoCore$NetConnectListener;

.field private final mNetHandler:Lcom/miui/video/base/common/task/WeakHandler;

.field private mOnReceiveMediaEventListener:Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;

.field private mPausedByLossAudio:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mTogglePlayerRunner:Ljava/lang/Runnable;

.field private final mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

.field private miniScreenContain:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final orientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

.field private outerVideoContainer:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final placeHolderView:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private playerMode:Lcom/miui/video/base/IPlayer$playerMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private playingVideo:Lcom/miui/video/player/service/model/VideoObject;

.field private seekPos:I

.field private trackTarget:Ljava/lang/String;

.field private final videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private videoControllerPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

.field private final videoFragment:Lcom/miui/video/biz/player/online/core/VideoFragment;

.field private final videoFragmentContainer:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoLoadingPresenter:Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

.field private videoLoadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

.field private videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

.field private videoReadyToSaveHistory:Z

.field private videoView:Lcom/miui/video/player/service/media/IVideoView;

.field private videoViewPrepared:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference0Impl;

    const-class v2, Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "ft"

    const-string v4, "<v#0>"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/video/biz/player/online/core/VideoCore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/miui/video/biz/player/online/core/VideoCore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/player/online/core/VideoCore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/player/online/core/VideoCore;->Companion:Lcom/miui/video/biz/player/online/core/VideoCore$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hostActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;-><init>(Landroid/content/Context;)V

    check-cast p1, Lcom/miui/video/player/service/media/IVideoView;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    new-instance p1, Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-direct {p1}, Lcom/miui/video/onlineplayer/core/VideoContext;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    new-instance p1, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    invoke-direct {p1}, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingPresenter:Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    new-instance p1, Lcom/miui/video/biz/player/online/core/VideoFragment;

    invoke-direct {p1}, Lcom/miui/video/biz/player/online/core/VideoFragment;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoFragment:Lcom/miui/video/biz/player/online/core/VideoFragment;

    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoFragmentContainer:Landroid/widget/FrameLayout;

    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->innerVideoContainer:Landroid/widget/FrameLayout;

    new-instance p1, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoControllerPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    new-instance p1, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    new-instance p1, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

    new-instance p1, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$mNetHandler$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$mNetHandler$1;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    check-cast v1, Landroid/os/Handler$Callback;

    invoke-direct {p1, v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mNetHandler:Lcom/miui/video/base/common/task/WeakHandler;

    new-instance p1, Lcom/miui/video/player/service/audio/MiAudioManager;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/miui/video/player/service/audio/MiAudioManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->firstTimeRegistNetWorkChange:Z

    new-instance v0, Lcom/miui/video/player/service/play/OrientationUpdater;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/video/player/service/play/OrientationUpdater;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->orientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->firstInvokeOnPrepare:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->handleContinueWhileAdsPlaying:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->isFirstFrameBuffer:Z

    sget-object v0, Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;->miniScreen:Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->currentScreenState:Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->placeHolderView:Landroid/widget/FrameLayout;

    sget-object v0, Lcom/miui/video/base/IPlayer$playerMode;->normal:Lcom/miui/video/base/IPlayer$playerMode;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playerMode:Lcom/miui/video/base/IPlayer$playerMode;

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->isAttach:Z

    new-instance p1, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    check-cast p1, Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mOnReceiveMediaEventListener:Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;

    new-instance p1, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mTogglePlayerRunner:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->keepScreenOn(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoFragment:Lcom/miui/video/biz/player/online/core/VideoFragment;

    invoke-virtual {p1, p0}, Lcom/miui/video/biz/player/online/core/VideoFragment;->setVideoCore(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoFragmentContainer:Landroid/widget/FrameLayout;

    sget v0, Lcom/miui/video/biz/player/online/R$id;->ovp_video_fragement_container_id:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->innerVideoContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    check-cast v1, Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Lcom/miui/video/base/IPlayer$playerMode;->normal:Lcom/miui/video/base/IPlayer$playerMode;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->setPlayerMode(Lcom/miui/video/base/IPlayer$playerMode;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->registerNetListener()V

    return-void
.end method

.method public static final synthetic access$canShowController(Lcom/miui/video/biz/player/online/core/VideoCore;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->canShowController()V

    return-void
.end method

.method public static final synthetic access$getCurrentVideo$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/model/VideoObject;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->currentVideo:Lcom/miui/video/player/service/model/VideoObject;

    return-object p0
.end method

.method public static final synthetic access$getFirstInvokeOnPrepare$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->firstInvokeOnPrepare:Z

    return p0
.end method

.method public static final synthetic access$getHandleContinueWhileAdsPlaying$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->handleContinueWhileAdsPlaying:Z

    return p0
.end method

.method public static final synthetic access$getMNetHandler$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/base/common/task/WeakHandler;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mNetHandler:Lcom/miui/video/base/common/task/WeakHandler;

    return-object p0
.end method

.method public static final synthetic access$getPlayingVideo$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/model/VideoObject;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    return-object p0
.end method

.method public static final synthetic access$getVideoControllerPresenter$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoControllerPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    return-object p0
.end method

.method public static final synthetic access$getVideoLoadingPresenter$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingPresenter:Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    return-object p0
.end method

.method public static final synthetic access$getVideoLoadingView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/onlineplayer/ui/VideoLoadingView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    return-object p0
.end method

.method public static final synthetic access$getVideoPlayControllerView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    return-object p0
.end method

.method public static final synthetic access$getVideoReadyToSaveHistory$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoReadyToSaveHistory:Z

    return p0
.end method

.method public static final synthetic access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    return-object p0
.end method

.method public static final synthetic access$getVideoViewPrepared$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoViewPrepared:Z

    return p0
.end method

.method public static final synthetic access$handleError(Lcom/miui/video/biz/player/online/core/VideoCore;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/player/online/core/VideoCore;->handleError(II)V

    return-void
.end method

.method public static final synthetic access$hideController(Lcom/miui/video/biz/player/online/core/VideoCore;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->hideController()V

    return-void
.end method

.method public static final synthetic access$insertHistory(Lcom/miui/video/biz/player/online/core/VideoCore;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->insertHistory()V

    return-void
.end method

.method public static final synthetic access$isFirstFrameBuffer$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->isFirstFrameBuffer:Z

    return p0
.end method

.method public static final synthetic access$isReady2PlayVideo$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->isReady2PlayVideo()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isShouldInit$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->isShouldInit:Z

    return p0
.end method

.method public static final synthetic access$onVideoPlayInfoLoaded(Lcom/miui/video/biz/player/online/core/VideoCore;Lcom/miui/video/player/service/model/VideoObject;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/player/online/core/VideoCore;->onVideoPlayInfoLoaded(Lcom/miui/video/player/service/model/VideoObject;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setCurrentVideo$p(Lcom/miui/video/biz/player/online/core/VideoCore;Lcom/miui/video/player/service/model/VideoObject;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->currentVideo:Lcom/miui/video/player/service/model/VideoObject;

    return-void
.end method

.method public static final synthetic access$setFirstFrameBuffer$p(Lcom/miui/video/biz/player/online/core/VideoCore;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->isFirstFrameBuffer:Z

    return-void
.end method

.method public static final synthetic access$setFirstInvokeOnPrepare$p(Lcom/miui/video/biz/player/online/core/VideoCore;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->firstInvokeOnPrepare:Z

    return-void
.end method

.method public static final synthetic access$setHandleContinueWhileAdsPlaying$p(Lcom/miui/video/biz/player/online/core/VideoCore;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->handleContinueWhileAdsPlaying:Z

    return-void
.end method

.method public static final synthetic access$setPlayingVideo$p(Lcom/miui/video/biz/player/online/core/VideoCore;Lcom/miui/video/player/service/model/VideoObject;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    return-void
.end method

.method public static final synthetic access$setShouldInit$p(Lcom/miui/video/biz/player/online/core/VideoCore;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->isShouldInit:Z

    return-void
.end method

.method public static final synthetic access$setVideoControllerPresenter$p(Lcom/miui/video/biz/player/online/core/VideoCore;Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoControllerPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    return-void
.end method

.method public static final synthetic access$setVideoLoadingView$p(Lcom/miui/video/biz/player/online/core/VideoCore;Lcom/miui/video/onlineplayer/ui/VideoLoadingView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    return-void
.end method

.method public static final synthetic access$setVideoPlayControllerView$p(Lcom/miui/video/biz/player/online/core/VideoCore;Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    return-void
.end method

.method public static final synthetic access$setVideoReadyToSaveHistory$p(Lcom/miui/video/biz/player/online/core/VideoCore;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoReadyToSaveHistory:Z

    return-void
.end method

.method public static final synthetic access$setVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;Lcom/miui/video/player/service/media/IVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    return-void
.end method

.method public static final synthetic access$setVideoViewPrepared$p(Lcom/miui/video/biz/player/online/core/VideoCore;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoViewPrepared:Z

    return-void
.end method

.method private final addVideoView()V
    .locals 2

    invoke-static {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->asView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getInnerVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/video/player/service/media/IVideoView;->asView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoPlayControllerView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method private final canShowController()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, "showController"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->isAdPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->syncPlayButtonState()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->setVisibility(I)V

    return-void
.end method

.method public static synthetic corePlay$default(Lcom/miui/video/biz/player/online/core/VideoCore;Lcom/miui/video/player/service/model/VideoObject;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/player/online/core/VideoCore;->corePlay(Lcom/miui/video/player/service/model/VideoObject;Z)Z

    move-result p0

    return p0
.end method

.method private final getVideoObjects(Lcom/miui/video/base/model/MediaData$Media;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/model/MediaData$Media;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/video/base/model/MediaData$Episode;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->episodes:Ljava/util/List;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->trailerList:Ljava/util/List;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->play_list:Ljava/util/List;

    if-nez v1, :cond_1

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->play_list:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->play_list:Ljava/util/List;

    const-string v3, "media.play_list"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->play_list:Ljava/util/List;

    const-string v3, "media.play_list"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v4, p1, Lcom/miui/video/base/model/MediaData$Media;->play_list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/base/model/MediaData$Episode;

    const-string v5, "type_playlist"

    iput-object v5, v4, Lcom/miui/video/base/model/MediaData$Episode;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->episodes:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->episodes:Ljava/util/List;

    const-string v3, "media.episodes"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->episodes:Ljava/util/List;

    const-string v3, "media.episodes"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    iget-object v4, p1, Lcom/miui/video/base/model/MediaData$Media;->episodes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/base/model/MediaData$Episode;

    const-string v5, "type_episodes"

    iput-object v5, v4, Lcom/miui/video/base/model/MediaData$Episode;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->trailerList:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->trailerList:Ljava/util/List;

    const-string v3, "media.trailerList"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_4

    iget-object v4, p1, Lcom/miui/video/base/model/MediaData$Media;->trailerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/base/model/MediaData$Episode;

    const-string v5, "type_trailer"

    iput-object v5, v4, Lcom/miui/video/base/model/MediaData$Episode;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->trending_list:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->trending_list:Ljava/util/List;

    const-string v3, "media.trending_list"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_5

    iget-object v4, p1, Lcom/miui/video/base/model/MediaData$Media;->trending_list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/base/model/MediaData$Episode;

    const-string v5, "type_trending"

    iput-object v5, v4, Lcom/miui/video/base/model/MediaData$Episode;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->recommend_list:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->recommend_list:Ljava/util/List;

    const-string v3, "media.recommend_list"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_4
    if-ge v2, v1, :cond_6

    iget-object v3, p1, Lcom/miui/video/base/model/MediaData$Media;->recommend_list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/model/MediaData$Episode;

    const-string v4, "type_recommend"

    iput-object v4, v3, Lcom/miui/video/base/model/MediaData$Episode;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final gotoFullScreen()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->currentScreenState:Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    sget-object v1, Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;->fullScreen:Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->outerVideoContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_d

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->miniScreenContain:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->miniScreenContain:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->miniScreenContain:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->outerVideoContainer:Landroid/view/ViewGroup;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->miniScreenContain:Landroid/view/ViewGroup;

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object v3, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->outerVideoContainer:Landroid/view/ViewGroup;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->placeHolderView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->placeHolderView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->placeHolderView:Landroid/widget/FrameLayout;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->miniScreenContain:Landroid/view/ViewGroup;

    if-nez v2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    iget-object v3, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->placeHolderView:Landroid/widget/FrameLayout;

    check-cast v3, Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->outerVideoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->outerVideoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :cond_8
    if-eqz v1, :cond_9

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->outerVideoContainer:Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3

    :cond_9
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "hostActivity.window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->outerVideoContainer:Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_b
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoFullScreen error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;)V

    :goto_4
    sget-object v0, Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;->fullScreen:Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->currentScreenState:Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    :cond_c
    return-void

    :cond_d
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final gotoMiniScreen()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->currentScreenState:Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    sget-object v1, Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;->miniScreen:Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->miniScreenContain:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "hostActivity.window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->outerVideoContainer:Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->miniScreenContain:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->placeHolderView:Landroid/widget/FrameLayout;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->placeHolderView:Landroid/widget/FrameLayout;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->outerVideoContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->outerVideoContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_4

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->outerVideoContainer:Landroid/view/ViewGroup;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->outerVideoContainer:Landroid/view/ViewGroup;

    check-cast v2, Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->miniScreenContain:Landroid/view/ViewGroup;

    goto :goto_3

    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoMiniScreen error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;)V

    :goto_3
    sget-object v0, Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;->miniScreen:Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->currentScreenState:Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    :cond_7
    return-void
.end method

.method private final handleError(II)V
    .locals 6

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->hideController()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/video/base/utils/AndroidUtils;->isNetworkConncected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->pauseForNetWork()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {p1}, Lcom/miui/video/onlineplayer/core/VideoContext;->getTargetCP()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/SupportCp;->INSTANCE:Lcom/miui/video/biz/player/online/plugin/cp/SupportCp;

    invoke-virtual {p2}, Lcom/miui/video/biz/player/online/plugin/cp/SupportCp;->getSupportCpList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->orientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/play/OrientationUpdater;->setUpdateHint(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingPresenter:Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-virtual {p1, p2}, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->onVideoHideLoading(Lcom/miui/video/player/service/media/IVideoView;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->showUpdateView$default(Lcom/miui/video/onlineplayer/ui/VideoLoadingView;Landroid/content/Context;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/miui/video/service/update/AppUpdateUtils;->get()Lcom/miui/video/service/update/AppUpdateUtils;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;

    invoke-virtual {p1, p2}, Lcom/miui/video/service/update/AppUpdateUtils;->registerUpdateCallback(Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;)V

    invoke-static {}, Lcom/miui/video/service/update/AppUpdateUtils;->get()Lcom/miui/video/service/update/AppUpdateUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast p2, Landroid/content/Context;

    sget-object v0, Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;->ALWAYS:Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;

    invoke-virtual {p1, p2, v0}, Lcom/miui/video/service/update/AppUpdateUtils;->checkVersion(Landroid/content/Context;Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;)V

    :cond_2
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->showVideoPlayError()V

    return-void
.end method

.method private final hideController()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, "hideController"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->hide()V

    return-void
.end method

.method public static synthetic initVideoLayout$default(Lcom/miui/video/biz/player/online/core/VideoCore;Landroid/widget/FrameLayout;Landroid/support/v4/app/Fragment;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    check-cast p2, Landroid/support/v4/app/Fragment;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/player/online/core/VideoCore;->initVideoLayout(Landroid/widget/FrameLayout;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private final initVideoView(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    instance-of v0, v0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-static {v0, p1}, Lcom/miui/video/onlineplayer/core/ExtensionKt;->isPluginInstanceOf(Lcom/miui/video/player/service/media/IVideoView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->releaseVideoView()V

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/VideoPluginManager;->INSTANCE:Lcom/miui/video/biz/player/online/plugin/VideoPluginManager;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "hostActivity.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/miui/video/biz/player/online/plugin/VideoPluginManager;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-static {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/player/service/media/IVideoView;->asView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getInnerVideoContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->asView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoPlayControllerView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->registerOnListeners()V

    return-void
.end method

.method private final insertHistory()V
    .locals 4

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/miui/video/base/database/OVHistoryEntity;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v2}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/video/player/service/model/VideoObject;->getPlaylistId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/miui/video/base/database/HistoryDaoUtil;->getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v3}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/miui/video/player/service/model/VideoObject;->getPlaylistId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v2, v0}, Lcom/miui/video/base/database/HistoryDaoUtil;->queryOnLineVideoHistoryByPlaylistId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/video/base/database/OVHistoryEntity;

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getPlayerControlProxy()Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/miui/video/biz/player/online/common/EntityBuildHelperKt;->buildOVHistroyEntity(Lcom/miui/video/base/database/OVHistoryEntity;Lcom/miui/video/player/service/model/VideoObject;Lcom/miui/video/onlineplayer/core/VideoContext;Ljava/lang/ref/WeakReference;)Lcom/miui/video/base/database/OVHistoryEntity;

    move-result-object v0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v2, "updateOnLineVideoHistory"

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/base/database/HistoryDaoUtil;->getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/video/base/database/HistoryDaoUtil;->updateOnLineVideoHistory(Lcom/miui/video/base/database/OVHistoryEntity;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v2, "insertOnLineVideoHistory"

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/base/database/HistoryDaoUtil;->getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/video/base/database/HistoryDaoUtil;->insertOnLineVideoHistory(Lcom/miui/video/base/database/OVHistoryEntity;)V

    :goto_1
    return-void
.end method

.method private final isReady2PlayVideo()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoFragment:Lcom/miui/video/biz/player/online/core/VideoFragment;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoFragment:Lcom/miui/video/biz/player/online/core/VideoFragment;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoFragment;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoFragment:Lcom/miui/video/biz/player/online/core/VideoFragment;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoFragment;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final loadAsync(Lcom/miui/video/player/service/model/VideoObject;Lkotlin/jvm/functions/Function1;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/player/service/model/VideoObject;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/common/feed/entity/PlayInfo;",
            ">;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAsync play?id=: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->endStep(I)V

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->startStep(I)V

    invoke-static {}, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;->getInstance()Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;->get(Ljava/lang/String;)Lcom/miui/video/base/common/net/model/PlayEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/PlayEntity;->getPlay_info()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/PlayEntity;->getPlay_info()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object p1, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    invoke-virtual {p1, v2}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->endStep(I)V

    sget-object p1, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->startStep(I)V

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/PlayEntity;->getPlay_info()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/video/framework/utils/NetworkUtils;->getNetworkState(Landroid/content/Context;)I

    move-result v2

    sget-object v3, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onVideoRequestStart(Ljava/lang/String;)V

    const-class v3, Lcom/miui/video/base/data/RetroPlayApi;

    invoke-static {v3}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/data/RetroPlayApi;

    invoke-interface {v3, v0}, Lcom/miui/video/base/data/RetroPlayApi;->getPlayInfo(Lorg/json/JSONArray;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v3, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$1;->INSTANCE:Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$1;

    check-cast v3, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v3, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$2;

    invoke-direct {v3, p0, p1, v2, p2}, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$2;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;Lcom/miui/video/player/service/model/VideoObject;ILkotlin/jvm/functions/Function1;)V

    check-cast v3, Lio/reactivex/functions/Consumer;

    new-instance p2, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$3;

    invoke-direct {p2, p1, v2}, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$3;-><init>(Lcom/miui/video/player/service/model/VideoObject;I)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v3, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return v1
.end method

.method private final onVideoPlayInfoLoaded(Lcom/miui/video/player/service/model/VideoObject;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/player/service/model/VideoObject;",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/common/feed/entity/PlayInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoPlayInfoLoaded1 video = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string p2, "OnlinePlayer onVideoPlayInfoLoaded repsonse.isEmpty"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->reportServerError()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getPlayInfoList()Ljava/util/ArrayList;

    move-result-object v0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getPlayInfoList()Ljava/util/ArrayList;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/miui/video/common/feed/entity/PlayInfo;

    iget-object v2, v2, Lcom/miui/video/common/feed/entity/PlayInfo;->cp:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getCurCp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/miui/video/common/feed/entity/PlayInfo;

    const/4 p2, 0x0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getPlayInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "video.playInfoList[0]"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/video/common/feed/entity/PlayInfo;

    :goto_1
    iget v2, v0, Lcom/miui/video/common/feed/entity/PlayInfo;->video_status:I

    if-nez v2, :cond_4

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is offline"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->showVideoPlayError()V

    return-void

    :cond_4
    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    iget-object v3, v0, Lcom/miui/video/common/feed/entity/PlayInfo;->cp:Ljava/lang/String;

    const-string v4, "playInfo.cp"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/miui/video/onlineplayer/core/VideoContext;->setTargetCP(Ljava/lang/String;)V

    sget-object v5, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v2}, Lcom/miui/video/onlineplayer/core/VideoContext;->getTargetCP()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v2}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    :goto_2
    move-object v7, v2

    goto :goto_3

    :cond_5
    const-string v2, ""

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getPlaylistId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    :goto_4
    move-object v8, v2

    goto :goto_5

    :cond_6
    const-string v2, ""

    goto :goto_4

    :goto_5
    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getTarget()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->setOpt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v3, "onVideoPlayInfoLoaded"

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {v2, p1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->setPlayingOnlineVideo(Lcom/miui/video/player/service/model/VideoObject;)V

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/PlayInfo;->haveAd()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object p2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {p2}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onAdRequestStart()V

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/PlayInfo;->getAdFirstTagId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "playInfo.adFirstTagId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/video/biz/player/online/core/VideoCore$onVideoPlayInfoLoaded$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore$onVideoPlayInfoLoaded$1;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;Lcom/miui/video/player/service/model/VideoObject;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p2, p1, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->playAd(Ljava/lang/String;Lcom/miui/video/player/service/model/VideoObject;Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_7
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->corePlay$default(Lcom/miui/video/biz/player/online/core/VideoCore;Lcom/miui/video/player/service/model/VideoObject;ZILjava/lang/Object;)Z

    :goto_6
    return-void
.end method

.method public static synthetic pause$default(Lcom/miui/video/biz/player/online/core/VideoCore;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->pause(I)V

    return-void
.end method

.method private final play(Lcom/miui/video/player/service/model/VideoObject;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, " play(video: VideoObject, cp: String) "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v0, " can\'t play the same playingVideo "

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->release()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->resetPlayId()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->isFirstFrameBuffer:Z

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->hideReplay()V

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->firstInvokeOnPrepare:Z

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingPresenter:Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-virtual {v1, v2}, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->onVideoLoading(Lcom/miui/video/player/service/media/IVideoView;)V

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getPlayInfoList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$play$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore$play$2;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;Lcom/miui/video/player/service/model/VideoObject;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->loadAsync(Lcom/miui/video/player/service/model/VideoObject;Lkotlin/jvm/functions/Function1;)Z

    return v0
.end method

.method public static synthetic play$default(Lcom/miui/video/biz/player/online/core/VideoCore;IIILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/player/online/core/VideoCore;->play(II)Z

    move-result p0

    return p0
.end method

.method private final playAd(Ljava/lang/String;Lcom/miui/video/player/service/model/VideoObject;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/video/player/service/model/VideoObject;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAdView:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->outerVideoContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$playAd$1;

    invoke-direct {v1, p0, p3}, Lcom/miui/video/biz/player/online/core/VideoCore$playAd$1;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;

    invoke-virtual {p2, v0, p1, v1}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->showAsChild(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;)V

    :cond_1
    return-void
.end method

.method private final registerOnListeners()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$2;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$3;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$3;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$4;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$4;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$5;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$5;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingPresenter:Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    check-cast v1, Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnVideoLoadingListener(Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    check-cast v1, Lcom/miui/video/player/service/media/AdsPlayListener;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setAdsPlayListener(Lcom/miui/video/player/service/media/AdsPlayListener;)V

    return-void
.end method

.method private final registerPhoneStateListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hasRegisterPhoneState:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mInitPhoneState:Z

    new-instance v0, Lcom/miui/video/biz/player/online/core/VideoCore$phoneStateListener;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$phoneStateListener;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    check-cast v0, Landroid/telephony/PhoneStateListener;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/audio/MiAudioManager;->startListenCallState(Landroid/telephony/PhoneStateListener;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hasRegisterPhoneState:Z

    return-void
.end method

.method private final release()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->stopIfPlaying()V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->releaseVideoView()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->onReleaseVideoView()V

    return-void
.end method

.method private final releaseVideoView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->unregisterOnListeners(Lcom/miui/video/player/service/media/IVideoView;)V

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->pause()V

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->close()V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->innerVideoContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->asView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    new-instance v0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/miui/video/player/service/media/IVideoView;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    return-void
.end method

.method private final reportServerError()V
    .locals 4

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->end$default(Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;ZILjava/lang/Object;)V

    return-void
.end method

.method private final reset()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoControllerPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    const-string v1, "1.0"

    invoke-static {v1}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getFullRatioValue(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->setCurrentSpeed(F)V

    const/4 v0, 0x0

    check-cast v0, Lcom/miui/video/player/service/model/VideoObject;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v1, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setPlayingVideo$biz_player_online_release(Lcom/miui/video/player/service/model/VideoObject;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->stopIfPlaying()V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->releaseVideoView()V

    return-void
.end method

.method public static synthetic resume$default(Lcom/miui/video/biz/player/online/core/VideoCore;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->resume(I)V

    return-void
.end method

.method private final setLayoutContainer(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/miui/video/biz/player/online/core/VideoCore$setLayoutContainer$ft$2;

    invoke-direct {v0, p0, p2}, Lcom/miui/video/biz/player/online/core/VideoCore$setLayoutContainer$ft$2;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;Landroid/support/v4/app/Fragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    sget-object v0, Lcom/miui/video/biz/player/online/core/VideoCore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->outerVideoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoFragmentContainer:Landroid/widget/FrameLayout;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoFragment:Lcom/miui/video/biz/player/online/core/VideoFragment;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",parent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoFragmentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoFragmentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoFragment:Lcom/miui/video/biz/player/online/core/VideoFragment;

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->outerVideoContainer:Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "videocore initlayout error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final setVideoController(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;Lcom/miui/video/player/service/play/OrientationUpdater;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->attachControllerView(Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->setPresenter(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->setOrientation(Lcom/miui/video/player/service/play/OrientationUpdater;)V

    return-void
.end method

.method private final showVideoPlayError()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->showLoadingErrorText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final unRegisterPhoneStateListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hasRegisterPhoneState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/audio/MiAudioManager;->stopListenCallState(Landroid/telephony/PhoneStateListener;)V

    const/4 v0, 0x0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hasRegisterPhoneState:Z

    return-void
.end method

.method private final unregisterOnListeners(Lcom/miui/video/player/service/media/IVideoView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IVideoView;->setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IVideoView;->setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IVideoView;->setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IVideoView;->setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IVideoView;->setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IVideoView;->setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IVideoView;->setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IVideoView;->setOnVideoLoadingListener(Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;)V

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IVideoView;->setAdsPlayListener(Lcom/miui/video/player/service/media/AdsPlayListener;)V

    return-void
.end method


# virtual methods
.method public final addChangeEpisodeListener(Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mChangeEpisodeListener:Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;

    return-void
.end method

.method public final addPlayStatusListener(Lcom/miui/video/base/IPlayer$IVideoStatusListener;)V
    .locals 2
    .param p1    # Lcom/miui/video/base/IPlayer$IVideoStatusListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/miui/video/onlineplayer/core/VideoContext;->addVideoStatusListener(Ljava/lang/String;Lcom/miui/video/base/IPlayer$IVideoStatusListener;)V

    return-void
.end method

.method public final addVideos(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/base/model/MediaData$Episode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/model/MediaData$Episode;

    const-string v4, "type_playlist"

    iput-object v4, v3, Lcom/miui/video/base/model/MediaData$Episode;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->addVideoItems(Ljava/util/List;)V

    return-void
.end method

.method public final callStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callStateChanged state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mInitPhoneState:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mInitPhoneState:Z

    return-void

    :cond_0
    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->pause(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->resume(I)V

    :goto_0
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final continuePlayFromNetWork()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->hideNetWorkView()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoViewPrepared:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->isShouldInit:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->currentVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->isShouldInit:Z

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->currentVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->corePlay(Lcom/miui/video/player/service/model/VideoObject;Z)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->start()V

    :goto_0
    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayResume(I)V

    return-void
.end method

.method public final corePlay(Lcom/miui/video/player/service/model/VideoObject;Z)Z
    .locals 5
    .param p1    # Lcom/miui/video/player/service/model/VideoObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "video"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " corePlay video == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/service/update/AppUpdateUtils;->get()Lcom/miui/video/service/update/AppUpdateUtils;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/update/AppUpdateUtils;->unregisterUpdateCallback(Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->orientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/play/OrientationUpdater;->setUpdateHint(Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->stopIfPlaying()V

    iput-boolean v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoViewPrepared:Z

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReady2PlayVideo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->isReady2PlayVideo()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->isReady2PlayVideo()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getTargetCP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/model/VideoObject;->findPlayInfoByCP(Ljava/lang/String;)Lcom/miui/video/common/feed/entity/PlayInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    sget-object v2, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->startStep(I)V

    sget-object v2, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->startStep(I)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->setVideoTitle(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/miui/video/common/feed/entity/PlayInfo;->plugin_id:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/miui/video/common/feed/entity/PlayInfo;->plugin_id:Ljava/lang/String;

    const-string v4, "playInfo.plugin_id"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/miui/video/common/feed/entity/PlayInfo;->cp:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/video/common/feed/entity/PlayInfo;->plugin_id:Ljava/lang/String;

    :cond_3
    iget-object v1, v0, Lcom/miui/video/common/feed/entity/PlayInfo;->plugin_id:Ljava/lang/String;

    const-string v2, "playInfo.plugin_id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->initVideoView(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/miui/video/common/feed/entity/PlayInfo;->app_info:Lcom/google/gson/JsonObject;

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const-string v2, "item_id"

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/miui/video/common/feed/entity/PlayInfo;->iframeUrl:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/miui/video/common/feed/entity/PlayInfo;->app_info:Lcom/google/gson/JsonObject;

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    const-string v2, "iframe_url"

    iget-object v4, v0, Lcom/miui/video/common/feed/entity/PlayInfo;->iframeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v1, v0, Lcom/miui/video/common/feed/entity/PlayInfo;->app_info:Lcom/google/gson/JsonObject;

    if-nez v1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    const-string v2, "isForceRemote"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->currentVideo:Lcom/miui/video/player/service/model/VideoObject;

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    iget-object v0, v0, Lcom/miui/video/common/feed/entity/PlayInfo;->app_info:Lcom/google/gson/JsonObject;

    if-nez v0, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/miui/video/player/service/media/IVideoView;->setDataSource(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {p2}, Lcom/miui/video/player/service/media/IVideoView;->start()V

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    instance-of p2, p2, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-nez p2, :cond_9

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->registerPhoneStateListener()V

    :cond_9
    invoke-virtual {p0, v3}, Lcom/miui/video/biz/player/online/core/VideoCore;->requestAudioFocus(Z)V

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {p2}, Lcom/miui/video/onlineplayer/core/VideoContext;->getTargetCP()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/model/VideoObject;->setCurCp(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoControllerPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    if-nez v0, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-virtual {p2, p1, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->onLaunch(Lcom/miui/video/player/service/model/VideoObject;Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    sget-object p2, Lcom/miui/video/onlineplayer/core/VideoContext;->Companion:Lcom/miui/video/onlineplayer/core/VideoContext$Companion;

    invoke-virtual {p2}, Lcom/miui/video/onlineplayer/core/VideoContext$Companion;->getFEATURE_AUTO_ROTATION()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lcom/miui/video/onlineplayer/core/VideoContext;->checkPlayFeatureBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->orientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-virtual {p1}, Lcom/miui/video/player/service/play/OrientationUpdater;->start()V

    :cond_b
    return v3

    :cond_c
    return v1
.end method

.method public final getCurrentPosition(Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;)V
    .locals 2
    .param p1    # Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    instance-of v0, v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getCachePosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getCachePosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;->onCurrentPosition(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$getCurrentPosition$1;

    invoke-direct {v1, p1}, Lcom/miui/video/biz/player/online/core/VideoCore$getCurrentPosition$1;-><init>(Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;)V

    check-cast v1, Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IAsyncVideoView;->getCurrentPosition(Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.player.service.media.IAsyncVideoView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->getCurrentPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;->onCurrentPosition(I)V

    :goto_0
    return-void
.end method

.method public final getCurrentScreenState()Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->currentScreenState:Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    return-object v0
.end method

.method public final getHostActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public final getInnerVideoContainer()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->innerVideoContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getMAdView()Lcom/miui/video/biz/player/online/ad/MiAdsView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAdView:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    return-object v0
.end method

.method public final getMiniScreenContain()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->miniScreenContain:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getOuterVideoContainer()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->outerVideoContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getPlaceHolderView()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->placeHolderView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getPlayerControlProxy()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/player/service/media/MediaPlayerControl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getPlayerMode()Lcom/miui/video/base/IPlayer$playerMode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playerMode:Lcom/miui/video/base/IPlayer$playerMode;

    return-object v0
.end method

.method public final getSeekPos()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->seekPos:I

    return v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    return-object v0
.end method

.method public final getVideoFragmentContainer()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoFragmentContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getVideoView()Lcom/miui/video/player/service/media/IVideoView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    return-object v0
.end method

.method public handleContinuePlay()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, "handleContinuePlay"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->seekPos:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->isAdsPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, "handleContinuePlay seekTo"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->handleContinueWhileAdsPlaying:Z

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    instance-of v0, v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->getDuration()I

    move-result v0

    iget v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->seekPos:I

    sub-int/2addr v0, v1

    const/16 v1, 0x1388

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->seekPos:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->seekTo(I)V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->handleContinueWhileAdsPlaying:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getType()I

    move-result v0

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/miui/video/biz/player/online/videoCoreManager;->INSTANCE:Lcom/miui/video/biz/player/online/videoCoreManager;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/videoCoreManager;->getContinuePlayMap()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v4, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v4}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v3

    :goto_1
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playerMode:Lcom/miui/video/base/IPlayer$playerMode;

    sget-object v4, Lcom/miui/video/base/IPlayer$playerMode;->inline:Lcom/miui/video/base/IPlayer$playerMode;

    if-eq v0, v4, :cond_b

    invoke-static {}, Lcom/miui/video/base/database/HistoryDaoUtil;->getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v4}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v3

    :cond_6
    invoke-virtual {v0, v3}, Lcom/miui/video/base/database/HistoryDaoUtil;->queryOnLineVideoHistoryByVid(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "history[0]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/database/OVHistoryEntity;->getOffset()I

    move-result v3

    if-lez v3, :cond_a

    iget-object v3, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v3}, Lcom/miui/video/player/service/media/IVideoView;->isAdsPlaying()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v3, "handleContinuePlay seekTo"

    invoke-static {v1, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->handleContinueWhileAdsPlaying:Z

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "history[0]"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/OVHistoryEntity;->getOffset()I

    move-result v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "history[0]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/database/OVHistoryEntity;->getDuration()I

    move-result v3

    const v4, 0x493e0

    if-le v3, v4, :cond_7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "history[0]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/database/OVHistoryEntity;->getDuration()I

    move-result v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "history[0]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {v4}, Lcom/miui/video/base/database/OVHistoryEntity;->getOffset()I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0x2710

    if-gt v3, v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "history[0]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/database/OVHistoryEntity;->getDuration()I

    move-result v3

    if-lez v3, :cond_8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "history[0]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/database/OVHistoryEntity;->getDuration()I

    move-result v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "history[0]"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/OVHistoryEntity;->getOffset()I

    move-result v0

    sub-int/2addr v3, v0

    const/16 v0, 0x3e8

    if-gt v3, v0, :cond_8

    goto :goto_2

    :cond_8
    move v2, v1

    :goto_2
    invoke-virtual {p0, v2}, Lcom/miui/video/biz/player/online/core/VideoCore;->seekTo(I)V

    goto :goto_3

    :cond_9
    iput-boolean v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->handleContinueWhileAdsPlaying:Z

    goto :goto_3

    :cond_a
    iput-boolean v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->handleContinueWhileAdsPlaying:Z

    goto :goto_3

    :cond_b
    iput-boolean v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->handleContinueWhileAdsPlaying:Z

    :goto_3
    return-void
.end method

.method public final initVideoLayout(Landroid/widget/FrameLayout;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initVideoLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->isDurationInit:Z

    new-instance v1, Lcom/miui/video/biz/player/online/ad/MiAdsView;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/video/biz/player/online/ad/MiAdsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAdView:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->setAttach(Z)V

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lcom/miui/video/biz/player/online/core/VideoCore;->setLayoutContainer(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;)V

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoControllerPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->orientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-direct {p0, p2, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->setVideoController(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;Lcom/miui/video/player/service/play/OrientationUpdater;)V

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p2}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->release()V

    :cond_1
    new-instance p2, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    invoke-direct {p2, p1}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;-><init>(Landroid/widget/FrameLayout;)V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingPresenter:Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1, p2}, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->setView(Lcom/miui/video/onlineplayer/ui/VideoLoadingView;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {p1}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->show()V

    return-void
.end method

.method public final isAttach()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->isAttach:Z

    return v0
.end method

.method public final isDurationInit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->isDurationInit:Z

    return v0
.end method

.method public final netChange()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->firstTimeRegistNetWorkChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->firstTimeRegistNetWorkChange:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/base/utils/AndroidUtils;->isNetworkConncected(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "net test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the net work receive -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->continuePlayFromNetWork()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->pauseForNetWork()V

    :goto_0
    return-void
.end method

.method public final notifyToDetailPage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/video/biz/player/online/videoCoreManager;->INSTANCE:Lcom/miui/video/biz/player/online/videoCoreManager;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/videoCoreManager;->getContinuePlayMap()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->insertHistory()V

    :cond_1
    return-void
.end method

.method public final onActivityDestroy()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v2, "onActivityDestroy"

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/miui/video/biz/player/online/videoCoreManager;->INSTANCE:Lcom/miui/video/biz/player/online/videoCoreManager;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/videoCoreManager;->getContinuePlayMap()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/video/framework/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v3, 0x0

    iget-object v1, v0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/video/player/service/model/VideoObject;->getCurEpisodeDuration()I

    move-result v1

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v1}, Lcom/miui/video/player/service/media/IVideoView;->getDuration()I

    move-result v1

    goto :goto_0

    :goto_1
    const/4 v5, -0x2

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayClose$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;ZIIIZILjava/lang/Object;)V

    goto :goto_4

    :cond_1
    sget-object v10, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v11, 0x0

    iget-object v1, v0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/video/player/service/model/VideoObject;->getCurEpisodeDuration()I

    move-result v1

    :goto_2
    move v12, v1

    goto :goto_3

    :cond_2
    iget-object v1, v0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v1}, Lcom/miui/video/player/service/media/IVideoView;->getDuration()I

    move-result v1

    goto :goto_2

    :goto_3
    const/4 v13, 0x2

    const/4 v14, -0x2

    const/4 v15, 0x0

    const/16 v16, 0x10

    const/16 v17, 0x0

    invoke-static/range {v10 .. v17}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayClose$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;ZIIIZILjava/lang/Object;)V

    :goto_4
    iget-object v1, v0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAdView:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->release()V

    :cond_3
    const/4 v1, 0x0

    check-cast v1, Lcom/miui/video/biz/player/online/ad/MiAdsView;

    iput-object v1, v0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAdView:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    invoke-direct/range {p0 .. p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->unRegisterPhoneStateListener()V

    invoke-direct/range {p0 .. p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->release()V

    iget-object v1, v0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->cancelScreenOn(Landroid/app/Activity;)V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange   focusChange == :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    instance-of v0, v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v2, "audio loss"

    invoke-static {p1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->pause(I)V

    iput-boolean v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mPausedByLossAudio:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, "audio gain"

    invoke-static {p1, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mPausedByLossAudio:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mPausedByLossAudio:Z

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->resume(I)V

    :cond_2
    :goto_0
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onFragmentConfigChanged$biz_player_online_release(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFragmentConfigChanged  == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->gotoFullScreen()V

    goto :goto_1

    :cond_2
    invoke-static {p1, p2}, Lcom/miui/video/framework/utils/AppUtils;->isFullScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->gotoFullScreen()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->gotoMiniScreen()V

    :goto_1
    return-void
.end method

.method public final onFragmentDestroy$biz_player_online_release()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, "onFragmentDestroy  == "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->onDestroy()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->onActivityDestroy()V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->release()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/audio/MiAudioManager;->destroyListen()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->unRegisterNetListener()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->onActivityDestroy()V

    return-void
.end method

.method public final onFragmentStart$biz_player_online_release()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, "onFragmentStart  == "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->orientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-virtual {v0}, Lcom/miui/video/player/service/play/OrientationUpdater;->start()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->orientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-virtual {v0}, Lcom/miui/video/player/service/play/OrientationUpdater;->onStart()V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playerMode:Lcom/miui/video/base/IPlayer$playerMode;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->setPlayerMode(Lcom/miui/video/base/IPlayer$playerMode;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->isIdle()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->isReplay()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAdView:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    instance-of v0, v0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, "onFragmentStart, playerPresenter.reLoadVideo() "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->reLoadVideo()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, "onFragmentStart, videoView.onActivityResume(): "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    instance-of v0, v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->registerPhoneStateListener()V

    :cond_2
    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayResume(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->onVideoStart()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->requestAudioFocus(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->onActivityResume()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAdView:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->isEnd()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAdView:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->onResume()V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->isReplay()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->onActivityResume()V

    :cond_5
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v0}, Lcom/miui/video/player/service/utils/media/MiMediaSession;->isActive()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    new-instance v0, Lcom/miui/video/player/service/utils/media/MiMediaSession;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mOnReceiveMediaEventListener:Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;

    invoke-direct {v0, v1, v2}, Lcom/miui/video/player/service/utils/media/MiMediaSession;-><init>(Landroid/content/Context;Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

    :cond_8
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

    invoke-static {v0, v1}, Lcom/miui/video/player/service/utils/media/MediaEventReceiver;->register(Landroid/content/Context;Lcom/miui/video/player/service/utils/media/MiMediaSession;)V

    return-void
.end method

.method public final onFragmentStop$biz_player_online_release()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, "onFragmentStop  == "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    instance-of v0, v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoReadyToSaveHistory:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playerMode:Lcom/miui/video/base/IPlayer$playerMode;

    sget-object v1, Lcom/miui/video/base/IPlayer$playerMode;->inline:Lcom/miui/video/base/IPlayer$playerMode;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->insertHistory()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->orientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-virtual {v0}, Lcom/miui/video/player/service/play/OrientationUpdater;->onStop()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->orientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-virtual {v0}, Lcom/miui/video/player/service/play/OrientationUpdater;->stop()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAdView:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->isReplay()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->onActivityPause()V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->onActivityPause()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    instance-of v0, v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->unRegisterPhoneStateListener()V

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->isIdle()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->isReplay()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->onPause()V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayPause(I)V

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->requestAudioFocus(Z)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

    invoke-static {v1, v2}, Lcom/miui/video/player/service/utils/media/MediaEventReceiver;->unRegister(Landroid/content/Context;Lcom/miui/video/player/service/utils/media/MiMediaSession;)V

    sget-object v1, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->end$default(Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;ZILjava/lang/Object;)V

    return-void
.end method

.method public final onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getFullScreenControllerView()Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->onKeyDown(Landroid/view/KeyEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final onMultiWindowChange$biz_player_online_release(Z)V
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onScreenOrientationChange(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hostActivity.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->switchViewOrientation(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-virtual {p1, v1}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->switchViewOrientation(I)V

    :goto_0
    return-void
.end method

.method public onShowUpdateView(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string p1, "detail_page"

    invoke-static {p1, p3}, Lcom/miui/video/service/update/UpgradeStatisticUtils;->exposeUpgrade(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/player/online/R$string;->ovp_player_update_dialog_info:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/player/online/R$string;->later:I

    sget v4, Lcom/miui/video/biz/player/online/R$string;->update:I

    new-instance p1, Lcom/miui/video/biz/player/online/core/VideoCore$onShowUpdateView$1;

    invoke-direct {p1, p0, p3}, Lcom/miui/video/biz/player/online/core/VideoCore$onShowUpdateView$1;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/miui/video/biz/player/online/core/VideoCore$onShowUpdateView$2;

    invoke-direct {p1, p0, p3}, Lcom/miui/video/biz/player/online/core/VideoCore$onShowUpdateView$2;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;Ljava/lang/String;)V

    move-object v6, p1

    check-cast v6, Landroid/view/View$OnClickListener;

    const/4 v7, 0x0

    sget-object v8, Lcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;->DIALOG_MIDDLE:Lcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;

    invoke-static/range {v0 .. v8}, Lcom/miui/video/service/update/ui/UpdateDialog;->showUpdateDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;)V

    :cond_0
    return-void
.end method

.method public final onVideoCompleted()V
    .locals 10

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, "OnlinePlayer onVideoCompleted "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->onFinishEpisode()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoControllerPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/video/player/service/model/VideoObject;->getCurEpisodeDuration()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->syncVideoObjPosition(I)V

    sget-object v2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getCurEpisodeDuration()I

    move-result v0

    :goto_1
    move v4, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->getDuration()I

    move-result v0

    goto :goto_1

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayClose$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;ZIIIZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playerMode:Lcom/miui/video/base/IPlayer$playerMode;

    sget-object v1, Lcom/miui/video/base/IPlayer$playerMode;->normal:Lcom/miui/video/base/IPlayer$playerMode;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/content/Context;

    const-string v1, "auto_play_next"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/video/service/common/VideoSPManager;->readBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoControllerPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayNext(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mChangeEpisodeListener:Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v1}, Lcom/miui/video/onlineplayer/core/VideoContext;->findNextVideoEpisode()Lcom/miui/video/base/model/MediaData$Episode;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-interface {v0, v1}, Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;->onEpisodeChanged(Lcom/miui/video/base/model/MediaData$Episode;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, "OnCompletion play next"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->hide()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingPresenter:Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-virtual {v0, v1}, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->onVideoHideLoading(Lcom/miui/video/player/service/media/IVideoView;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->showReplay()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->onReplay()V

    :goto_3
    return-void
.end method

.method public final pause(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, " pause "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->isReplay()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->isAdsPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAdView:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, "pause, videoView.pause(): "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->pause()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->onPause()V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayPause(I)V

    :cond_1
    return-void
.end method

.method public final pauseForNetWork()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->pause()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingView:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->showNetWorkView()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->hideController()V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayPause(I)V

    return-void
.end method

.method public final play(II)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " play("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": Int) isDurationInit("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->isDurationInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->isDurationInit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoFragment:Lcom/miui/video/biz/player/online/core/VideoFragment;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

    new-instance v2, Lcom/miui/video/biz/player/online/core/VideoCore$play$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/video/biz/player/online/core/VideoCore$play$1;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;II)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 p1, 0xc8

    invoke-virtual {v0, v2, p1, p2}, Lcom/miui/video/base/common/task/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    :cond_0
    iput p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->seekPos:I

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {p2, p1}, Lcom/miui/video/onlineplayer/core/VideoContext;->findVideoItem(I)Lcom/miui/video/player/service/model/VideoObject;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p2, p1}, Lcom/miui/video/onlineplayer/core/VideoContext;->findVideoItem(Ljava/lang/String;)Lcom/miui/video/player/service/model/VideoObject;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string p2, " can\'t find  VideoObject to play "

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->trackTarget:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->trackTarget:Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->lastTrackTarget:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "page setTarget:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->trackTarget:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->trackTarget:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/model/VideoObject;->setTarget(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->trackTarget:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->lastTrackTarget:Ljava/lang/String;

    :cond_4
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->play(Lcom/miui/video/player/service/model/VideoObject;)Z

    move-result p1

    return p1
.end method

.method public final reLoadVideo()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, " reLoadVideo "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->stopIfPlaying()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingPresenter:Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-virtual {v0, v1}, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->onVideoLoading(Lcom/miui/video/player/service/media/IVideoView;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getPlayInfoList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, " reLoadVideo  playInfoLoader.loadAsync"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$reLoadVideo$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$reLoadVideo$1;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0, v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->loadAsync(Lcom/miui/video/player/service/model/VideoObject;Lkotlin/jvm/functions/Function1;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final registerNetListener()V
    .locals 4

    new-instance v0, Lcom/miui/video/biz/player/online/core/VideoCore$NetConnectListener;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$NetConnectListener;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mNetConnectListener:Lcom/miui/video/biz/player/online/core/VideoCore$NetConnectListener;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mNetConnectListener:Lcom/miui/video/biz/player/online/core/VideoCore$NetConnectListener;

    check-cast v1, Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->firstTimeRegistNetWorkChange:Z

    return-void
.end method

.method public final releasePlayer()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, " releasePlayer "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->release()V

    return-void
.end method

.method public final replay()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, " replay(video: VideoObject, cp: String) "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->onReplayLaunch()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->resetPlayId()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->isFirstFrameBuffer:Z

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onReplay()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoPlayControllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->hideReplay()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoLoadingPresenter:Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-virtual {v0, v1}, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->onVideoLoading(Lcom/miui/video/player/service/media/IVideoView;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->currentVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->currentVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getCurCp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hungama"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->currentVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getPlayInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->currentVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$replay$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$replay$1;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0, v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->loadAsync(Lcom/miui/video/player/service/model/VideoObject;Lkotlin/jvm/functions/Function1;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->seekTo(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, "Video Object is missing"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final requestAudioFocus(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAudioFocus request == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    move-object v1, p0

    check-cast v1, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/player/service/audio/MiAudioManager;->requestAudioFocus(ZLandroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    return-void
.end method

.method public final resume(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, " resume "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->isReplay()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAdView:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->isReady2PlayVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, "resume, videoView.start(): "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->start()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->onVideoStart()V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayResume(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->requestAudioFocus(Z)V

    :cond_1
    return-void
.end method

.method public final seekTo(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " seekTo position == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->isReplay()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->isAdsPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IVideoView;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public final setAttach(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAttach:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->reset()V

    :cond_0
    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->isAttach:Z

    return-void
.end method

.method public final setCurrentScreenState(Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->currentScreenState:Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    return-void
.end method

.method public final setDurationInit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->isDurationInit:Z

    return-void
.end method

.method public final setMAdView(Lcom/miui/video/biz/player/online/ad/MiAdsView;)V
    .locals 0
    .param p1    # Lcom/miui/video/biz/player/online/ad/MiAdsView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAdView:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    return-void
.end method

.method public final setMiniScreenContain(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->miniScreenContain:Landroid/view/ViewGroup;

    return-void
.end method

.method public final setOuterVideoContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->outerVideoContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public final setPlayerMode(Lcom/miui/video/base/IPlayer$playerMode;)V
    .locals 1
    .param p1    # Lcom/miui/video/base/IPlayer$playerMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->setPlayerMode(Lcom/miui/video/base/IPlayer$playerMode;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playerMode:Lcom/miui/video/base/IPlayer$playerMode;

    return-void
.end method

.method public final setSeekPos(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->seekPos:I

    return-void
.end method

.method public final setTarget(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->trackTarget:Ljava/lang/String;

    return-void
.end method

.method public final setVideos(Lcom/miui/video/base/model/MediaData$Media;)V
    .locals 4
    .param p1    # Lcom/miui/video/base/model/MediaData$Media;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->episodes:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->episodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/miui/video/base/model/MediaData$Media;->play_list:Ljava/util/List;

    :cond_2
    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/miui/video/base/model/MediaData$Media;->play_list:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoObjects(Lcom/miui/video/base/model/MediaData$Media;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v2, "onlineplayer setVideos getVideoObjects items.isEmpty"

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v1, v0, p1}, Lcom/miui/video/onlineplayer/core/VideoContext;->setVideoItems(Ljava/util/List;Lcom/miui/video/base/model/MediaData$Media;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->author_info:Lcom/miui/video/base/model/MediaData$AuthorInfo;

    invoke-virtual {v0, v1}, Lcom/miui/video/onlineplayer/core/VideoContext;->setAuthorInfo(Lcom/miui/video/base/model/MediaData$AuthorInfo;)V

    iget-object v0, p1, Lcom/miui/video/base/model/MediaData$Media;->play:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/miui/video/base/model/MediaData$Media;->play:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Lcom/miui/video/base/common/net/model/PlayEntity;

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->id:Ljava/lang/String;

    const-string v2, "media.id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    iget-object p1, p1, Lcom/miui/video/base/model/MediaData$Media;->play:Ljava/util/List;

    const-string v3, "media.play"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, p1}, Lcom/miui/video/base/common/net/model/PlayEntity;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-static {}, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;->getInstance()Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;->put(Lcom/miui/video/base/common/net/model/PlayEntity;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->showVideoPlayError()V

    return-void
.end method

.method public final startPreload(I)V
    .locals 11

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->findNextVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playerMode:Lcom/miui/video/base/IPlayer$playerMode;

    sget-object v2, Lcom/miui/video/base/IPlayer$playerMode;->normal:Lcom/miui/video/base/IPlayer$playerMode;

    if-ne p1, v2, :cond_9

    sget-object p1, Lcom/miui/video/biz/player/online/router/ServiceHolder;->INSTANCE:Lcom/miui/video/biz/player/online/router/ServiceHolder;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/router/ServiceHolder;->getSLocalServerService()Lcom/miui/video/base/routers/localserver/LocalServerService;

    move-result-object p1

    new-array v1, v1, [Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;

    new-instance v10, Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v2}, Lcom/miui/video/onlineplayer/core/VideoContext;->findNextVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v2}, Lcom/miui/video/player/service/model/VideoObject;->getCurCp()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v2}, Lcom/miui/video/onlineplayer/core/VideoContext;->findNextVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v2}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const-string v6, "detail_page"

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v2}, Lcom/miui/video/onlineplayer/core/VideoContext;->findNextVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v2}, Lcom/miui/video/player/service/model/VideoObject;->getPlaylistId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_4
    const-string v2, ""

    goto :goto_0

    :goto_1
    const-wide/16 v8, 0x3

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    aput-object v10, v1, v0

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/miui/video/base/routers/localserver/LocalServerService;->preDownloadForItemId(Ljava/util/List;)V

    goto :goto_4

    :pswitch_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playerMode:Lcom/miui/video/base/IPlayer$playerMode;

    sget-object v2, Lcom/miui/video/base/IPlayer$playerMode;->inline:Lcom/miui/video/base/IPlayer$playerMode;

    if-ne p1, v2, :cond_9

    sget-object p1, Lcom/miui/video/biz/player/online/router/ServiceHolder;->INSTANCE:Lcom/miui/video/biz/player/online/router/ServiceHolder;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/router/ServiceHolder;->getSLocalServerService()Lcom/miui/video/base/routers/localserver/LocalServerService;

    move-result-object p1

    new-array v1, v1, [Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;

    new-instance v10, Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v2}, Lcom/miui/video/onlineplayer/core/VideoContext;->findNextVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v2}, Lcom/miui/video/player/service/model/VideoObject;->getCurCp()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v2}, Lcom/miui/video/onlineplayer/core/VideoContext;->findNextVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v2}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const-string v6, "playlist"

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v2}, Lcom/miui/video/onlineplayer/core/VideoContext;->findNextVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v2}, Lcom/miui/video/player/service/model/VideoObject;->getPlaylistId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    :goto_2
    move-object v7, v2

    goto :goto_3

    :cond_8
    const-string v2, ""

    goto :goto_2

    :goto_3
    const-wide/16 v8, 0x3

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    aput-object v10, v1, v0

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/miui/video/base/routers/localserver/LocalServerService;->preDownloadForItemId(Ljava/util/List;)V

    :cond_9
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final stopIfPlaying()V
    .locals 9

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, " stopIfPlaying "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->hideController()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoReadyToSaveHistory:Z

    sget-object v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getCurEpisodeDuration()I

    move-result v0

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->getDuration()I

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v8}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayClose$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;ZIIIZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    instance-of v0, v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$stopIfPlaying$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$stopIfPlaying$1;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    check-cast v1, Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IAsyncVideoView;->isPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;)V

    goto :goto_2

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.player.service.media.IAsyncVideoView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->pause()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->onFinished()V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mAdView:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->release()V

    :cond_4
    return-void
.end method

.method public final switchPlayingVideo(Lcom/miui/video/player/service/model/VideoObject;)Z
    .locals 9
    .param p1    # Lcom/miui/video/player/service/model/VideoObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "video"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, " switchPlayingVideo "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getVideoItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playerMode:Lcom/miui/video/base/IPlayer$playerMode;

    sget-object v1, Lcom/miui/video/base/IPlayer$playerMode;->inline:Lcom/miui/video/base/IPlayer$playerMode;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoCore;->insertHistory()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getVideoItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mChangeEpisodeListener:Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v1}, Lcom/miui/video/onlineplayer/core/VideoContext;->getEpisodeItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "videoContext.episodeItems[index]"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/miui/video/base/model/MediaData$Episode;

    invoke-interface {v0, p1}, Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;->onEpisodeChanged(Lcom/miui/video/base/model/MediaData$Episode;)V

    :cond_1
    sget-object v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v2, 0x1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getCurEpisodeDuration()I

    move-result p1

    :goto_0
    move v3, p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {p1}, Lcom/miui/video/player/service/media/IVideoView;->getDuration()I

    move-result p1

    goto :goto_0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayClose$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;ZIIIZILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final switchPlayingVideo(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, " switchPlayingVideo "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0, p1}, Lcom/miui/video/onlineplayer/core/VideoContext;->findVideoItem(Ljava/lang/String;)Lcom/miui/video/player/service/model/VideoObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->switchPlayingVideo(Lcom/miui/video/player/service/model/VideoObject;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final togglePlayState()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->TAG:Ljava/lang/String;

    const-string v1, " VideoCore togglePlayState: "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mTogglePlayerRunner:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mTogglePlayerRunner:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final unRegisterNetListener()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore;->mNetConnectListener:Lcom/miui/video/biz/player/online/core/VideoCore$NetConnectListener;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
