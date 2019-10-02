.class public final Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;
.super Ljava/lang/Object;
.source "VootVideoView.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IVideoView;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0010%\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\u0092\u0001\u001a\u00030\u0093\u00012\u0008\u0010\u0094\u0001\u001a\u00030\u0095\u0001H\u0002J\n\u0010\u0096\u0001\u001a\u00030\u0093\u0001H\u0002J\u0014\u0010\u0097\u0001\u001a\u00030\u0093\u00012\u0008\u0010\u0094\u0001\u001a\u00030\u0095\u0001H\u0002J\u000c\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0084\u0001H\u0016J\u0013\u0010\u0099\u0001\u001a\u00030\u009a\u00012\u0007\u0010\u009b\u0001\u001a\u00020\u0016H\u0002J\u0015\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u009d\u00012\u0007\u0010\u009b\u0001\u001a\u00020\u0016H\u0002J\t\u0010\u009e\u0001\u001a\u00020\u001bH\u0016J\t\u0010\u009f\u0001\u001a\u00020\u001bH\u0016J\t\u0010\u00a0\u0001\u001a\u00020\u001bH\u0016J\t\u0010\u00a1\u0001\u001a\u00020\u001bH\u0016J\n\u0010\u00a2\u0001\u001a\u00030\u0093\u0001H\u0016J\u0014\u0010\u00a3\u0001\u001a\u00030\u0093\u00012\u0008\u0010\u0094\u0001\u001a\u00030\u0095\u0001H\u0002J\u0013\u0010\u00a4\u0001\u001a\u00030\u0093\u00012\u0007\u0010\u00a5\u0001\u001a\u00020\u0006H\u0016J\u0012\u0010\u00a6\u0001\u001a\u00020\u00162\u0007\u0010\u00a7\u0001\u001a\u00020\u0016H\u0002J\t\u0010\u00a8\u0001\u001a\u00020\u0006H\u0016J\n\u0010\u00a9\u0001\u001a\u00030\u0084\u0001H\u0002J\t\u0010\u00aa\u0001\u001a\u00020\u0006H\u0016J\t\u0010\u00ab\u0001\u001a\u00020\u0016H\u0016J\t\u0010\u00ac\u0001\u001a\u00020\u0006H\u0016J\t\u0010\u00ad\u0001\u001a\u00020\u0016H\u0016J\t\u0010\u00ae\u0001\u001a\u00020\u001bH\u0016J\n\u0010\u00af\u0001\u001a\u00030\u00b0\u0001H\u0016J\u0010\u0010\u00b1\u0001\u001a\t\u0012\u0004\u0012\u00020\u00160\u00b2\u0001H\u0016J\u000c\u0010\u00b3\u0001\u001a\u0005\u0018\u00010\u00b4\u0001H\u0016J\u0011\u0010\u00b5\u0001\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\t\u0010\u00b6\u0001\u001a\u00020\u0006H\u0016J\t\u0010\u00b7\u0001\u001a\u00020\u0006H\u0016J\n\u0010\u00b8\u0001\u001a\u00030\u0084\u0001H\u0002J\t\u0010\u00b9\u0001\u001a\u00020\u001bH\u0016J\n\u0010\u00ba\u0001\u001a\u00030\u0093\u0001H\u0002J\n\u0010\u00bb\u0001\u001a\u00030\u0093\u0001H\u0002J\n\u0010\u00bc\u0001\u001a\u00030\u0093\u0001H\u0002J\t\u0010\u00bd\u0001\u001a\u00020\u001bH\u0016J\t\u0010\u00be\u0001\u001a\u00020\u001bH\u0016J\t\u0010\u00bf\u0001\u001a\u00020\u001bH\u0016J\t\u0010\u00c0\u0001\u001a\u00020\u001bH\u0016J\n\u0010\u00c1\u0001\u001a\u00030\u0093\u0001H\u0016J\n\u0010\u00c2\u0001\u001a\u00030\u0093\u0001H\u0016J\n\u0010\u00c3\u0001\u001a\u00030\u0093\u0001H\u0016J\n\u0010\u00c4\u0001\u001a\u00030\u0093\u0001H\u0016J\u0008\u0010\u00c5\u0001\u001a\u00030\u0093\u0001J\u0008\u0010\u00c6\u0001\u001a\u00030\u0093\u0001J\n\u0010\u00c7\u0001\u001a\u00030\u0093\u0001H\u0016J\u0013\u0010\u00c8\u0001\u001a\u00030\u0093\u00012\u0007\u0010\u00a5\u0001\u001a\u00020\u0006H\u0016J\u0015\u0010\u00c9\u0001\u001a\u00030\u0093\u00012\t\u0010\u00ca\u0001\u001a\u0004\u0018\u000104H\u0016J\u0013\u0010\u00cb\u0001\u001a\u00030\u0093\u00012\u0007\u0010\u00cc\u0001\u001a\u00020\u0016H\u0016J4\u0010\u00cb\u0001\u001a\u00030\u0093\u00012\u0007\u0010\u00cc\u0001\u001a\u00020\u00162\u0007\u0010\u00cd\u0001\u001a\u00020\u00062\u0016\u0010\u00ce\u0001\u001a\u0011\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00cf\u0001H\u0016J+\u0010\u00cb\u0001\u001a\u00030\u0093\u00012\u0007\u0010\u00cc\u0001\u001a\u00020\u00162\u0016\u0010\u00ce\u0001\u001a\u0011\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00cf\u0001H\u0016J\u0013\u0010\u00d0\u0001\u001a\u00030\u0093\u00012\u0007\u0010\u00d1\u0001\u001a\u00020\u001bH\u0016J\u0016\u0010\u00d2\u0001\u001a\u00030\u0093\u00012\n\u0010\u00d3\u0001\u001a\u0005\u0018\u00010\u00d4\u0001H\u0016J\u0015\u0010\u00d5\u0001\u001a\u00030\u0093\u00012\t\u0010\u00d6\u0001\u001a\u0004\u0018\u00010:H\u0016J\u0015\u0010\u00d7\u0001\u001a\u00030\u0093\u00012\t\u0010\u00d8\u0001\u001a\u0004\u0018\u00010@H\u0016J\u0015\u0010\u00d9\u0001\u001a\u00030\u0093\u00012\t\u0010\u00da\u0001\u001a\u0004\u0018\u00010FH\u0016J\u0015\u0010\u00db\u0001\u001a\u00030\u0093\u00012\t\u0010\u00dc\u0001\u001a\u0004\u0018\u00010MH\u0016J\u0015\u0010\u00dd\u0001\u001a\u00030\u0093\u00012\t\u0010\u00de\u0001\u001a\u0004\u0018\u00010SH\u0016J\u0015\u0010\u00df\u0001\u001a\u00030\u0093\u00012\t\u0010\u00e0\u0001\u001a\u0004\u0018\u00010YH\u0016J\u0015\u0010\u00e1\u0001\u001a\u00030\u0093\u00012\t\u0010\u00e2\u0001\u001a\u0004\u0018\u00010_H\u0016J\u0014\u0010\u00e3\u0001\u001a\u00030\u0093\u00012\u0008\u0010\u00e4\u0001\u001a\u00030\u00b0\u0001H\u0016J\u0013\u0010\u00e5\u0001\u001a\u00030\u0093\u00012\u0007\u0010\u00e6\u0001\u001a\u00020\u0016H\u0016J\n\u0010\u00e7\u0001\u001a\u00030\u0093\u0001H\u0002J\n\u0010\u00e8\u0001\u001a\u00030\u0093\u0001H\u0016J\t\u0010\u00e9\u0001\u001a\u00020\u001bH\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0014\u0010\u000b\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008R\u0014\u0010\r\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008R\u0014\u0010\u000f\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008R\u0014\u0010\u0011\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008R\u0014\u0010\u0013\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0008R\u0014\u0010\u0015\u001a\u00020\u0016X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010\u0004R\u000e\u0010*\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010/\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u0008\"\u0004\u00081\u00102R\u001c\u00103\u001a\u0004\u0018\u000104X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001c\u0010?\u001a\u0004\u0018\u00010@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001c\u0010E\u001a\u0004\u0018\u00010FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u000e\u0010K\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010L\u001a\u0004\u0018\u00010MX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\u001c\u0010R\u001a\u0004\u0018\u00010SX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR\u001c\u0010X\u001a\u0004\u0018\u00010YX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]R\u001c\u0010^\u001a\u0004\u0018\u00010_X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010cR\u001c\u0010d\u001a\u0004\u0018\u00010eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u0010g\"\u0004\u0008h\u0010iR\u001c\u0010j\u001a\u0004\u0018\u00010kX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008l\u0010m\"\u0004\u0008n\u0010oR\u0010\u0010p\u001a\u0004\u0018\u00010qX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010r\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010s\u001a\u0004\u0018\u00010tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008u\u0010v\"\u0004\u0008w\u0010xR\u001a\u0010y\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008z\u0010\u0018\"\u0004\u0008{\u0010|R\u001f\u0010}\u001a\u0004\u0018\u00010~X\u0086\u000e\u00a2\u0006\u0011\n\u0000\u001a\u0005\u0008\u007f\u0010\u0080\u0001\"\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\"\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0085\u0001\u0010\u0086\u0001\"\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u0011\u0010\u0089\u0001\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0005\n\u0003\u0010\u008e\u0001R\u0010\u0010\u008f\u0001\u001a\u00030\u0090\u0001X\u0082.\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0091\u0001\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00ea\u0001"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;",
        "Lcom/miui/video/player/service/media/IVideoView;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "STATE_ERROR",
        "",
        "getSTATE_ERROR",
        "()I",
        "STATE_IDLE",
        "getSTATE_IDLE",
        "STATE_PAUSED",
        "getSTATE_PAUSED",
        "STATE_PLAYBACK_COMPLETED",
        "getSTATE_PLAYBACK_COMPLETED",
        "STATE_PLAYING",
        "getSTATE_PLAYING",
        "STATE_PREPARED",
        "getSTATE_PREPARED",
        "STATE_PREPARING",
        "getSTATE_PREPARING",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "TRACK_TYPE_VIDEO",
        "changingResolution",
        "",
        "isPlayingForPause",
        "mAdCuePointList",
        "",
        "",
        "mAdStartTime",
        "mAdUrl",
        "mAdsPlaying",
        "mChanelUrl",
        "mChannelMark",
        "Landroid/widget/ImageView;",
        "mContext",
        "getMContext",
        "()Landroid/content/Context;",
        "setMContext",
        "mCurrentState",
        "mMediaConfig",
        "Lcom/kaltura/playkit/PKMediaConfig;",
        "mMediaId",
        "mMediaTitle",
        "mOffset",
        "getMOffset",
        "setMOffset",
        "(I)V",
        "mOnAdsPlayListener",
        "Lcom/miui/video/player/service/media/AdsPlayListener;",
        "getMOnAdsPlayListener",
        "()Lcom/miui/video/player/service/media/AdsPlayListener;",
        "setMOnAdsPlayListener",
        "(Lcom/miui/video/player/service/media/AdsPlayListener;)V",
        "mOnCompletionListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;",
        "getMOnCompletionListener",
        "()Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;",
        "setMOnCompletionListener",
        "(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V",
        "mOnErrorListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;",
        "getMOnErrorListener",
        "()Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;",
        "setMOnErrorListener",
        "(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V",
        "mOnInfoListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;",
        "getMOnInfoListener",
        "()Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;",
        "setMOnInfoListener",
        "(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V",
        "mOnPrepared",
        "mOnPreparedListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;",
        "getMOnPreparedListener",
        "()Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;",
        "setMOnPreparedListener",
        "(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V",
        "mOnSeekCompleteListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;",
        "getMOnSeekCompleteListener",
        "()Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;",
        "setMOnSeekCompleteListener",
        "(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V",
        "mOnVideoLoadingListener",
        "Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;",
        "getMOnVideoLoadingListener",
        "()Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;",
        "setMOnVideoLoadingListener",
        "(Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;)V",
        "mOnVideoSizeChangedListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;",
        "getMOnVideoSizeChangedListener",
        "()Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;",
        "setMOnVideoSizeChangedListener",
        "(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V",
        "mPlayer",
        "Lcom/kaltura/playkit/Player;",
        "getMPlayer",
        "()Lcom/kaltura/playkit/Player;",
        "setMPlayer",
        "(Lcom/kaltura/playkit/Player;)V",
        "mPlayerEngine",
        "Lcom/kaltura/playkit/player/ExoPlayerWrapper;",
        "getMPlayerEngine",
        "()Lcom/kaltura/playkit/player/ExoPlayerWrapper;",
        "setMPlayerEngine",
        "(Lcom/kaltura/playkit/player/ExoPlayerWrapper;)V",
        "mPlayingAdInfo",
        "Lcom/kaltura/playkit/plugins/ads/AdInfo;",
        "mTapPlayTime",
        "mTrackSelector",
        "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;",
        "getMTrackSelector",
        "()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;",
        "setMTrackSelector",
        "(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)V",
        "mVideoInfoUri",
        "getMVideoInfoUri",
        "setMVideoInfoUri",
        "(Ljava/lang/String;)V",
        "mVootLayout",
        "Landroid/widget/RelativeLayout;",
        "getMVootLayout",
        "()Landroid/widget/RelativeLayout;",
        "setMVootLayout",
        "(Landroid/widget/RelativeLayout;)V",
        "mVootScreenView",
        "Landroid/view/View;",
        "getMVootScreenView",
        "()Landroid/view/View;",
        "setMVootScreenView",
        "(Landroid/view/View;)V",
        "mWaterMark",
        "resolutionCost",
        "resolutionFrom",
        "resolutionTo",
        "timeStamp",
        "Ljava/lang/Long;",
        "trackGroupArray",
        "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
        "videoRendererIndex",
        "addIMAPluginConfig",
        "",
        "config",
        "Lcom/kaltura/playkit/PKPluginConfigs;",
        "addPlayerListeners",
        "addYouboraPlugin",
        "asView",
        "buildAppInfo",
        "Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;",
        "videoInfoUri",
        "buildPKMediaEntry",
        "Lcom/kaltura/playkit/PKMediaEntry;",
        "canBuffering",
        "canPause",
        "canSeekBackward",
        "canSeekForward",
        "close",
        "configurePlugins",
        "continuePlay",
        "position",
        "getAdUrl",
        "s",
        "getBufferPercentage",
        "getChanelMark",
        "getCurrentPosition",
        "getCurrentResolution",
        "getDuration",
        "getInitResolution",
        "getIsSupportChangeSpeed",
        "getPlaySpeed",
        "",
        "getSupportedResolutions",
        "",
        "getUri",
        "Landroid/net/Uri;",
        "getVersionCode",
        "getVideoHeight",
        "getVideoWidth",
        "getWaterMark",
        "hasLoadingAfterAd",
        "hideMark",
        "initPlayer",
        "initVootVideoView",
        "isAdsPlaying",
        "isAirkanEnable",
        "isInPlaybackState",
        "isPlaying",
        "onActivityDestroy",
        "onActivityPause",
        "onActivityResume",
        "pause",
        "prepare",
        "releasePlayer",
        "requestVideoLayout",
        "seekTo",
        "setAdsPlayListener",
        "adsPlayListener",
        "setDataSource",
        "uri",
        "offset",
        "headers",
        "",
        "setForceFullScreen",
        "forceFullScreen",
        "setOnBufferingUpdateListener",
        "p0",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;",
        "setOnCompletionListener",
        "onCompletionListener",
        "setOnErrorListener",
        "onErrorListener",
        "setOnInfoListener",
        "onInfoListener",
        "setOnPreparedListener",
        "onPreparedListener",
        "setOnSeekCompleteListener",
        "onSeekCompleteListener",
        "setOnVideoLoadingListener",
        "loadingListener",
        "setOnVideoSizeChangedListener",
        "onVideoSizeChangedListener",
        "setPlaySpeed",
        "speed",
        "setResolution",
        "resolution",
        "showMark",
        "start",
        "supportPrepare",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final STATE_ERROR:I

.field private final STATE_IDLE:I

.field private final STATE_PAUSED:I

.field private final STATE_PLAYBACK_COMPLETED:I

.field private final STATE_PLAYING:I

.field private final STATE_PREPARED:I

.field private final STATE_PREPARING:I

.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final TRACK_TYPE_VIDEO:I

.field private changingResolution:Z

.field private isPlayingForPause:Z

.field private mAdCuePointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mAdStartTime:J

.field private mAdUrl:Ljava/lang/String;

.field private mAdsPlaying:Z

.field private mChanelUrl:Ljava/lang/String;

.field private mChannelMark:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mCurrentState:I

.field private mMediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

.field private mMediaId:Ljava/lang/String;

.field private mMediaTitle:Ljava/lang/String;

.field private mOffset:I

.field private mOnAdsPlayListener:Lcom/miui/video/player/service/media/AdsPlayListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOnPrepared:Z

.field private mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOnSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOnVideoLoadingListener:Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOnVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPlayer:Lcom/kaltura/playkit/Player;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPlayerEngine:Lcom/kaltura/playkit/player/ExoPlayerWrapper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPlayingAdInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

.field private mTapPlayTime:J

.field private mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mVideoInfoUri:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mVootLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mVootScreenView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mWaterMark:Landroid/widget/ImageView;

.field private resolutionCost:Ljava/lang/String;

.field private resolutionFrom:Ljava/lang/String;

.field private resolutionTo:Ljava/lang/String;

.field private timeStamp:Ljava/lang/Long;

.field private trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private videoRendererIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VootVideoView"

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_ERROR:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PREPARING:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PREPARED:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PLAYING:I

    const/4 v3, 0x4

    iput v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PAUSED:I

    const/4 v3, 0x5

    iput v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PLAYBACK_COMPLETED:I

    const-string v3, ""

    iput-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVideoInfoUri:Ljava/lang/String;

    iget v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_IDLE:I

    iput v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mCurrentState:I

    const-string v3, ""

    iput-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mMediaId:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mMediaTitle:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mAdUrl:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mChanelUrl:Ljava/lang/String;

    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->videoRendererIndex:I

    iput v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->TRACK_TYPE_VIDEO:I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->TAG:Ljava/lang/String;

    const-string v2, "VootVideoView 20190218"

    invoke-static {v0, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    new-array v0, v1, [Lcom/kaltura/playkit/PKPlugin$Factory;

    sget-object v2, Lcom/kaltura/playkit/plugins/SamplePlugin;->factory:Lcom/kaltura/playkit/PKPlugin$Factory;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Lcom/kaltura/playkit/PlayKitManager;->registerPlugins(Landroid/content/Context;[Lcom/kaltura/playkit/PKPlugin$Factory;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    new-array v0, v1, [Lcom/kaltura/playkit/PKPlugin$Factory;

    sget-object v2, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->factory:Lcom/kaltura/playkit/PKPlugin$Factory;

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Lcom/kaltura/playkit/PlayKitManager;->registerPlugins(Landroid/content/Context;[Lcom/kaltura/playkit/PKPlugin$Factory;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    new-array v0, v1, [Lcom/kaltura/playkit/PKPlugin$Factory;

    sget-object v1, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->factory:Lcom/kaltura/playkit/PKPlugin$Factory;

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/kaltura/playkit/PlayKitManager;->registerPlugins(Landroid/content/Context;[Lcom/kaltura/playkit/PKPlugin$Factory;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->initVootVideoView()V

    return-void
.end method

.method public static final synthetic access$getChangingResolution$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->changingResolution:Z

    return p0
.end method

.method public static final synthetic access$getMAdCuePointList$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mAdCuePointList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMAdStartTime$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mAdStartTime:J

    return-wide v0
.end method

.method public static final synthetic access$getMAdsPlaying$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mAdsPlaying:Z

    return p0
.end method

.method public static final synthetic access$getMCurrentState$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mCurrentState:I

    return p0
.end method

.method public static final synthetic access$getMOnPrepared$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnPrepared:Z

    return p0
.end method

.method public static final synthetic access$getMPlayingAdInfo$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)Lcom/kaltura/playkit/plugins/ads/AdInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayingAdInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    return-object p0
.end method

.method public static final synthetic access$getMTapPlayTime$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mTapPlayTime:J

    return-wide v0
.end method

.method public static final synthetic access$getResolutionCost$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->resolutionCost:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getTimeStamp$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->timeStamp:Ljava/lang/Long;

    return-object p0
.end method

.method public static final synthetic access$hideMark(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->hideMark()V

    return-void
.end method

.method public static final synthetic access$setChangingResolution$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->changingResolution:Z

    return-void
.end method

.method public static final synthetic access$setMAdCuePointList$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mAdCuePointList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setMAdStartTime$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mAdStartTime:J

    return-void
.end method

.method public static final synthetic access$setMAdsPlaying$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mAdsPlaying:Z

    return-void
.end method

.method public static final synthetic access$setMCurrentState$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mCurrentState:I

    return-void
.end method

.method public static final synthetic access$setMOnPrepared$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnPrepared:Z

    return-void
.end method

.method public static final synthetic access$setMPlayingAdInfo$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;Lcom/kaltura/playkit/plugins/ads/AdInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayingAdInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    return-void
.end method

.method public static final synthetic access$setMTapPlayTime$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mTapPlayTime:J

    return-void
.end method

.method public static final synthetic access$setResolutionCost$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->resolutionCost:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setTimeStamp$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->timeStamp:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic access$showMark(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->showMark()V

    return-void
.end method

.method private final addIMAPluginConfig(Lcom/kaltura/playkit/PKPluginConfigs;)V
    .locals 3

    new-instance v0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-direct {v0}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mAdUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->setAdTagURL(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    move-result-object v0

    sget-object v1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->factory:Lcom/kaltura/playkit/PKPlugin$Factory;

    const-string v2, "IMAPlugin.factory"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/kaltura/playkit/PKPlugin$Factory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->toJSONObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/kaltura/playkit/PKPluginConfigs;->setPluginConfig(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final addPlayerListeners()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-instance v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$1;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$1;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v4, v2, [Ljava/lang/Enum;

    sget-object v5, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_REQUESTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    check-cast v5, Ljava/lang/Enum;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_1

    new-instance v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$2;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$2;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v4, v2, [Ljava/lang/Enum;

    sget-object v5, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CONTENT_RESUME_REQUESTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    check-cast v5, Ljava/lang/Enum;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_2

    new-instance v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$3;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$3;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v4, v2, [Ljava/lang/Enum;

    sget-object v5, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->STARTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    check-cast v5, Ljava/lang/Enum;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_3

    new-instance v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$4;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$4;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v4, v2, [Ljava/lang/Enum;

    sget-object v5, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->COMPLETED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    check-cast v5, Ljava/lang/Enum;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_4

    new-instance v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$5;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$5;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v4, v2, [Ljava/lang/Enum;

    sget-object v5, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ERROR:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    check-cast v5, Ljava/lang/Enum;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_5

    new-instance v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$6;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$6;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v4, v2, [Ljava/lang/Enum;

    sget-object v5, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BREAK_IGNORED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    check-cast v5, Ljava/lang/Enum;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_5
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_6

    new-instance v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$7;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$7;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v4, v2, [Ljava/lang/Enum;

    sget-object v5, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CUEPOINTS_CHANGED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    check-cast v5, Ljava/lang/Enum;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_7

    new-instance v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$8;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$8;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v4, v2, [Ljava/lang/Enum;

    sget-object v5, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->LOADED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    check-cast v5, Ljava/lang/Enum;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_7
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_8

    new-instance v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$9;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$9;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v4, v2, [Ljava/lang/Enum;

    sget-object v5, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ALL_ADS_COMPLETED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    check-cast v5, Ljava/lang/Enum;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_8
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_9

    new-instance v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$10;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$10;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v4, v2, [Ljava/lang/Enum;

    sget-object v5, Lcom/kaltura/playkit/PlayerEvent$Type;->TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    check-cast v5, Ljava/lang/Enum;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_9
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_a

    new-instance v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$11;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$11;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v4, v2, [Ljava/lang/Enum;

    sget-object v5, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

    check-cast v5, Ljava/lang/Enum;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_a
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_b

    new-instance v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$12;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$12;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v4, v2, [Ljava/lang/Enum;

    sget-object v5, Lcom/kaltura/playkit/PlayerEvent$Type;->PAUSE:Lcom/kaltura/playkit/PlayerEvent$Type;

    check-cast v5, Ljava/lang/Enum;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_b
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_c

    new-instance v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$13;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$13;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    invoke-interface {v0, v3}, Lcom/kaltura/playkit/Player;->addStateChangeListener(Lcom/kaltura/playkit/PKEvent$Listener;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_c
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_d

    new-instance v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$14;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$14;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v4, v2, [Ljava/lang/Enum;

    sget-object v5, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYING:Lcom/kaltura/playkit/PlayerEvent$Type;

    check-cast v5, Ljava/lang/Enum;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_d
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_e

    new-instance v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$15;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$15;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v4, v2, [Ljava/lang/Enum;

    sget-object v5, Lcom/kaltura/playkit/PlayerEvent$Type;->SEEKED:Lcom/kaltura/playkit/PlayerEvent$Type;

    check-cast v5, Ljava/lang/Enum;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_e
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_f

    new-instance v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$16;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$16;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v4, v2, [Ljava/lang/Enum;

    sget-object v5, Lcom/kaltura/playkit/PlayerEvent$Type;->ENDED:Lcom/kaltura/playkit/PlayerEvent$Type;

    check-cast v5, Ljava/lang/Enum;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_f
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_10

    new-instance v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$17;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$17;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v4, v2, [Ljava/lang/Enum;

    sget-object v5, Lcom/kaltura/playkit/PlayerEvent$Type;->ERROR:Lcom/kaltura/playkit/PlayerEvent$Type;

    check-cast v5, Ljava/lang/Enum;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_10
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_11

    sget-object v3, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$18;->INSTANCE:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$18;

    check-cast v3, Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v2, v2, [Ljava/lang/Enum;

    sget-object v4, Lcom/kaltura/playkit/PlayerEvent$Type;->CAN_PLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

    check-cast v4, Ljava/lang/Enum;

    aput-object v4, v2, v1

    invoke-interface {v0, v3, v2}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_11
    return-void
.end method

.method private final addYouboraPlugin(Lcom/kaltura/playkit/PKPluginConfigs;)V
    .locals 5

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "accountCode"

    const-string v2, "viacom18"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "username"

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "param1"

    const-string v3, "Mi_Mobile"

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "param2"

    iget-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mMediaId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "param3"

    iget-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v3, "title"

    iget-object v4, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mMediaTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "extraParams"

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v3, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "media"

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addYouboraPlugin, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->factory:Lcom/kaltura/playkit/PKPlugin$Factory;

    const-string v2, "YouboraPlugin.factory"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/kaltura/playkit/PKPlugin$Factory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/kaltura/playkit/PKPluginConfigs;->setPluginConfig(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final buildAppInfo(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    invoke-direct {p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;-><init>()V

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->duration:I

    const-string v1, "contentType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->contentType:Ljava/lang/String;

    const-string v1, "episodeID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->episodeID:Ljava/lang/String;

    const-string v1, "genre"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->genre:Ljava/lang/String;

    const-string v1, "language"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->language:Ljava/lang/String;

    const-string v1, "sbu"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->sbu:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->title:Ljava/lang/String;

    const-string v1, "seriesTitle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->seriesTitle:Ljava/lang/String;

    return-object p1
.end method

.method private final buildPKMediaEntry(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaEntry;
    .locals 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "url"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "channelLogo"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "json.optString(\"channelLogo\")"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mChanelUrl:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/kaltura/playkit/PKMediaEntry;

    invoke-direct {v0}, Lcom/kaltura/playkit/PKMediaEntry;-><init>()V

    new-instance v5, Lcom/kaltura/playkit/PKMediaSource;

    invoke-direct {v5}, Lcom/kaltura/playkit/PKMediaSource;-><init>()V

    invoke-virtual {v5, p1}, Lcom/kaltura/playkit/PKMediaSource;->setUrl(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaSource;

    move-result-object v6

    const-string v7, "src.setUrl(url)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kaltura/playkit/PKMediaFormat;->valueOfUrl(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaFormat;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/kaltura/playkit/PKMediaSource;->setMediaFormat(Lcom/kaltura/playkit/PKMediaFormat;)Lcom/kaltura/playkit/PKMediaSource;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKMediaEntry;->setId(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaEntry;

    invoke-virtual {v0, v2}, Lcom/kaltura/playkit/PKMediaEntry;->setName(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaEntry;

    invoke-virtual {v0, v3, v4}, Lcom/kaltura/playkit/PKMediaEntry;->setDuration(J)Lcom/kaltura/playkit/PKMediaEntry;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/PKMediaEntry;->setSources(Ljava/util/List;)Lcom/kaltura/playkit/PKMediaEntry;

    return-object v0
.end method

.method private final configurePlugins(Lcom/kaltura/playkit/PKPluginConfigs;)V
    .locals 3

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "delay"

    const/16 v2, 0x4b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "Sample"

    invoke-virtual {p1, v1, v0}, Lcom/kaltura/playkit/PKPluginConfigs;->setPluginConfig(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->addYouboraPlugin(Lcom/kaltura/playkit/PKPluginConfigs;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->addIMAPluginConfig(Lcom/kaltura/playkit/PKPluginConfigs;)V

    return-void
.end method

.method private final getAdUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "sbu"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "entryId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->getDistinctId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://pubads.g.doubleclick.net/gampad/ads?sz=640x360&iu=/21633895671/video/android_native_app/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "&impl=s&gdfp_req="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "1&env=vp&output=vmap&unviewed_position_start=1&ad_rule=1&cmsid"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=2467608&vid="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "&cust_params=sample_ar%3Dskippablelinear"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%26TPDevice%3DMi%20Mobile&ppid="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&correlator="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the ad test --- getAdUrl entryId --"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and distinctId --"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and randomNumber"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and url --"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method private final getChanelMark()Landroid/view/View;
    .locals 5

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x64

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v2, 0xf

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mChannelMark:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mChanelUrl:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channelMark:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mChanelUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mChanelUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/bumptech/glide/RequestBuilder;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mChannelMark:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mChannelMark:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mChannelMark:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mChannelMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getVersionCode(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method private final getWaterMark()Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mWaterMark:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mWaterMark:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sget v2, Lcom/miui/video/biz/player/online/R$drawable;->voot_watermark_logo:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mWaterMark:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mWaterMark:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mWaterMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final hideMark()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->TAG:Ljava/lang/String;

    const-string v1, "voot test hideMark"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mWaterMark:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mChannelMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private final initPlayer()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->releasePlayer()V

    new-instance v0, Lcom/kaltura/playkit/PKPluginConfigs;

    invoke-direct {v0}, Lcom/kaltura/playkit/PKPluginConfigs;-><init>()V

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->configurePlugins(Lcom/kaltura/playkit/PKPluginConfigs;)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/kaltura/playkit/PlayKitManager;->loadPlayer(Landroid/content/Context;Lcom/kaltura/playkit/PKPluginConfigs;)Lcom/kaltura/playkit/Player;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    const-string v1, "myApp"

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/playback/KalturaPlaybackRequestAdapter;->install(Lcom/kaltura/playkit/Player;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->addPlayerListeners()V

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_IDLE:I

    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mCurrentState:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/kaltura/playkit/Player;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVootScreenView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVootScreenView:Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVootScreenView:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVootLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVootScreenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVootLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getWaterMark()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVootLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getChanelMark()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_5
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->hideMark()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private final initVootVideoView()V
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVootLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private final showMark()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->TAG:Ljava/lang/String;

    const-string v1, "voot test showMark"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mWaterMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mChannelMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public asView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVootLayout:Landroid/widget/RelativeLayout;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public canBuffering()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mixpanelTrackPlayEnd(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->destroy()V

    :cond_1
    const/4 v0, 0x0

    check-cast v0, Lcom/kaltura/playkit/Player;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_IDLE:I

    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mCurrentState:I

    return-void
.end method

.method public continuePlay(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->seekTo(I)V

    return-void
.end method

.method public getBufferPercentage()I
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getBufferedPosition()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getCurrentPosition()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentResolution()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    iget v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->videoRendererIndex:I

    iget-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-nez v3, :cond_2

    const-string v4, "trackGroupArray"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v1

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->videoRendererIndex:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v0, "0"

    return-object v0
.end method

.method public getDuration()I
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getInitResolution()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayerEngine:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getPlayerEngine()Lcom/kaltura/playkit/player/PlayerEngine;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayerEngine:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayerEngine:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayerEngine:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->getExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "0"

    return-object v0
.end method

.method public getIsSupportChangeSpeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getMContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getMOffset()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOffset:I

    return v0
.end method

.method public final getMOnAdsPlayListener()Lcom/miui/video/player/service/media/AdsPlayListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnAdsPlayListener:Lcom/miui/video/player/service/media/AdsPlayListener;

    return-object v0
.end method

.method public final getMOnCompletionListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method public final getMOnErrorListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method public final getMOnInfoListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-object v0
.end method

.method public final getMOnPreparedListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method public final getMOnSeekCompleteListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method public final getMOnVideoLoadingListener()Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnVideoLoadingListener:Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;

    return-object v0
.end method

.method public final getMOnVideoSizeChangedListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method public final getMPlayer()Lcom/kaltura/playkit/Player;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    return-object v0
.end method

.method public final getMPlayerEngine()Lcom/kaltura/playkit/player/ExoPlayerWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayerEngine:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    return-object v0
.end method

.method public final getMTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    return-object v0
.end method

.method public final getMVideoInfoUri()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVideoInfoUri:Ljava/lang/String;

    return-object v0
.end method

.method public final getMVootLayout()Landroid/widget/RelativeLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVootLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getMVootScreenView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVootScreenView:Landroid/view/View;

    return-object v0
.end method

.method public getPlaySpeed()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayerEngine:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->getExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final getSTATE_ERROR()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_ERROR:I

    return v0
.end method

.method public final getSTATE_IDLE()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_IDLE:I

    return v0
.end method

.method public final getSTATE_PAUSED()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PAUSED:I

    return v0
.end method

.method public final getSTATE_PLAYBACK_COMPLETED()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PLAYBACK_COMPLETED:I

    return v0
.end method

.method public final getSTATE_PLAYING()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PLAYING:I

    return v0
.end method

.method public final getSTATE_PREPARED()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PREPARED:I

    return v0
.end method

.method public final getSTATE_PREPARING()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PREPARING:I

    return v0
.end method

.method public getSupportedResolutions()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayerEngine:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getPlayerEngine()Lcom/kaltura/playkit/player/PlayerEngine;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayerEngine:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayerEngine:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    if-lez v2, :cond_e

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    const-string v4, "mappedTrackInfo.getTrackGroups(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v1

    iget v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->TRACK_TYPE_VIDEO:I

    if-ne v1, v3, :cond_c

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-nez v1, :cond_4

    const-string v3, "trackGroupArray"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v1, :cond_c

    iput v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->videoRendererIndex:I

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-nez v1, :cond_6

    const-string v3, "trackGroupArray"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    if-nez v1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_c

    iget-object v4, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-nez v4, :cond_8

    const-string v5, "trackGroupArray"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    if-nez v4, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    iget v5, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_b

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    check-cast v1, Ljava/util/List;

    return-object v1

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVideoInfoUri:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVideoInfoUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasLoadingAfterAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAdsPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mAdsPlaying:Z

    return v0
.end method

.method public isAirkanEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInPlaybackState()Z
    .locals 2

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mCurrentState:I

    iget v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_IDLE:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mCurrentState:I

    iget v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_ERROR:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mCurrentState:I

    iget v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PREPARING:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->isPlaying()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    return v0
.end method

.method public onActivityDestroy()V
    .locals 8

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mAdsPlaying:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayingAdInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayingAdInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    iget-wide v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mAdStartTime:J

    iget-wide v5, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mTapPlayTime:J

    iget-object v7, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mAdCuePointList:Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mixpanelTrackAdForceQuit(Landroid/content/Context;Lcom/kaltura/playkit/plugins/ads/AdInfo;JJLjava/util/List;)V

    const/4 v0, 0x0

    check-cast v0, Lcom/kaltura/playkit/plugins/ads/AdInfo;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayingAdInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->close()V

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->flush()V

    return-void
.end method

.method public onActivityPause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->onApplicationPaused()V

    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->onApplicationResumed()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->pause()V

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PAUSED:I

    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mCurrentState:I

    return-void
.end method

.method public final prepare()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mMediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0, v1}, Lcom/kaltura/playkit/Player;->prepare(Lcom/kaltura/playkit/PKMediaConfig;)V

    :cond_1
    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PREPARING:I

    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mCurrentState:I

    return-void
.end method

.method public final releasePlayer()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->hideMark()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->destroy()V

    :cond_1
    const/4 v0, 0x0

    check-cast v0, Lcom/kaltura/playkit/Player;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    return-void
.end method

.method public requestVideoLayout()V
    .locals 0

    return-void
.end method

.method public seekTo(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/kaltura/playkit/Player;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setAdsPlayListener(Lcom/miui/video/player/service/media/AdsPlayListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/AdsPlayListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnAdsPlayListener:Lcom/miui/video/player/service/media/AdsPlayListener;

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;ILjava/util/Map;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p3, "uri"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-object p3, p1

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/16 v0, 0x2711

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, v2, v1, v0}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mTapPlayTime:J

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getAdUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mAdUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVideoInfoUri:Ljava/lang/String;

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOffset:I

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVideoInfoUri:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->buildPKMediaEntry(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaEntry;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVideoInfoUri:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->buildAppInfo(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    move-result-object p2

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    if-eqz p1, :cond_2

    invoke-interface {p1, v2, v1, v0}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaEntry;->getId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "mediaEntry.id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mMediaId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaEntry;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "mediaEntry.name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mMediaTitle:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->initPlayer()V

    iget-object p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mixpanelTrackPlayBegin(Landroid/content/Context;Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;)V

    new-instance p2, Lcom/kaltura/playkit/PKMediaConfig;

    invoke-direct {p2}, Lcom/kaltura/playkit/PKMediaConfig;-><init>()V

    invoke-virtual {p2, p1}, Lcom/kaltura/playkit/PKMediaConfig;->setMediaEntry(Lcom/kaltura/playkit/PKMediaEntry;)Lcom/kaltura/playkit/PKMediaConfig;

    move-result-object p1

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKMediaConfig;->setStartPosition(Ljava/lang/Long;)Lcom/kaltura/playkit/PKMediaConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mMediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Lcom/kaltura/playkit/Player;->prepare(Lcom/kaltura/playkit/PKMediaConfig;)V

    :cond_4
    iget p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PREPARING:I

    iput p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mCurrentState:I

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->setDataSource(Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public setForceFullScreen(Z)V
    .locals 0

    return-void
.end method

.method public final setMContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final setMOffset(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOffset:I

    return-void
.end method

.method public final setMOnAdsPlayListener(Lcom/miui/video/player/service/media/AdsPlayListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/AdsPlayListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnAdsPlayListener:Lcom/miui/video/player/service/media/AdsPlayListener;

    return-void
.end method

.method public final setMOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public final setMOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public final setMOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public final setMOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public final setMOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public final setMOnVideoLoadingListener(Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnVideoLoadingListener:Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;

    return-void
.end method

.method public final setMOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public final setMPlayer(Lcom/kaltura/playkit/Player;)V
    .locals 0
    .param p1    # Lcom/kaltura/playkit/Player;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    return-void
.end method

.method public final setMPlayerEngine(Lcom/kaltura/playkit/player/ExoPlayerWrapper;)V
    .locals 0
    .param p1    # Lcom/kaltura/playkit/player/ExoPlayerWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayerEngine:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    return-void
.end method

.method public final setMTrackSelector(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    return-void
.end method

.method public final setMVideoInfoUri(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVideoInfoUri:Ljava/lang/String;

    return-void
.end method

.method public final setMVootLayout(Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1    # Landroid/widget/RelativeLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVootLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public final setMVootScreenView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mVootScreenView:Landroid/view/View;

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnVideoLoadingListener(Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnVideoLoadingListener:Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mOnVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayerEngine:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->getExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_0
    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "resolution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getCurrentResolution()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->resolutionFrom:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->resolutionTo:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->changingResolution:Z

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setResolution:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    iget v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->videoRendererIndex:I

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverrides(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    :cond_3
    if-eqz v3, :cond_b

    if-lez p1, :cond_b

    iget v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->videoRendererIndex:I

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    const-string v4, "mappedTrackInfo.getTrackGroups(videoRendererIndex)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->videoRendererIndex:I

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v1

    iget v4, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->TRACK_TYPE_VIDEO:I

    if-ne v1, v4, :cond_d

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-nez v1, :cond_4

    const-string v4, "trackGroupArray"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v1, :cond_d

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-nez v1, :cond_5

    const-string v4, "trackGroupArray"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_d

    iget-object v6, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-nez v6, :cond_6

    const-string v7, "trackGroupArray"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    iget v7, v6, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_a

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    iget v9, v9, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne p1, v9, :cond_9

    new-instance p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    new-array v0, v0, [I

    aput v8, v0, v4

    invoke-direct {p1, v5, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    if-eqz v2, :cond_7

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->videoRendererIndex:I

    iget v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->videoRendererIndex:I

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    :cond_7
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-nez p1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    return-void

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-nez p1, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    :cond_d
    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mPlayer:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->play()V

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mCurrentState:I

    iget v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PAUSED:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mCurrentState:I

    iget v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PREPARED:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mCurrentState:I

    iget v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PLAYBACK_COMPLETED:I

    if-ne v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->STATE_PLAYING:I

    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->mCurrentState:I

    :cond_2
    return-void
.end method

.method public supportPrepare()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
