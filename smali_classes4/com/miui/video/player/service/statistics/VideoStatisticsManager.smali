.class public final Lcom/miui/video/player/service/statistics/VideoStatisticsManager;
.super Ljava/lang/Object;
.source "VideoStatisticsManager.kt"

# interfaces
.implements Lcom/miui/video/base/IPlayer$IVideoStatusListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoStatisticsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoStatisticsManager.kt\ncom/miui/video/player/service/statistics/VideoStatisticsManager\n*L\n1#1,843:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u001b\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u0002\n\u0002\u0008/\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010d\u001a\u00020\"2\u0006\u0010e\u001a\u00020\"H\u0002J*\u0010f\u001a\u001e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0Qj\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"`R2\u0006\u0010g\u001a\u00020\"J\u0006\u0010h\u001a\u00020iJ\u000e\u0010j\u001a\u00020i2\u0006\u0010k\u001a\u00020.J\u0006\u0010l\u001a\u00020iJ\u000e\u0010m\u001a\u00020i2\u0006\u0010n\u001a\u00020\u0004J\u0006\u0010o\u001a\u00020iJ\u000e\u0010p\u001a\u00020i2\u0006\u0010q\u001a\u00020.J\u000e\u0010r\u001a\u00020i2\u0006\u0010s\u001a\u00020.J4\u0010t\u001a\u00020i2\u0006\u0010u\u001a\u00020.2\u0006\u0010v\u001a\u00020\u00042\u0008\u0008\u0002\u0010w\u001a\u00020\u00042\u0008\u0008\u0002\u0010x\u001a\u00020\u00042\u0008\u0008\u0002\u0010y\u001a\u00020.J\u0006\u0010z\u001a\u00020iJ\u0016\u0010{\u001a\u00020i2\u0006\u0010|\u001a\u00020\"2\u0006\u0010}\u001a\u00020\"J\u000e\u0010~\u001a\u00020i2\u0006\u0010n\u001a\u00020\u0004J\u000e\u0010\u007f\u001a\u00020i2\u0006\u0010n\u001a\u00020\u0004J\u000f\u0010\u0080\u0001\u001a\u00020i2\u0006\u0010n\u001a\u00020\u0004J\u000f\u0010\u0081\u0001\u001a\u00020i2\u0006\u0010n\u001a\u00020\u0004J\u0007\u0010\u0082\u0001\u001a\u00020iJ&\u0010\u0083\u0001\u001a\u00020i2\t\u0008\u0002\u0010\u0084\u0001\u001a\u00020.2\u0008\u0008\u0002\u0010w\u001a\u00020\u00042\u0008\u0008\u0002\u0010x\u001a\u00020\u0004JG\u0010\u0085\u0001\u001a\u00020i2\u0007\u0010\u0086\u0001\u001a\u00020\"2\u0007\u0010\u0087\u0001\u001a\u00020\"2\u0007\u0010\u0088\u0001\u001a\u00020\u00042\u0007\u0010\u0089\u0001\u001a\u00020\"2\u0007\u0010\u008a\u0001\u001a\u00020\"2\u0007\u0010\u0084\u0001\u001a\u00020.2\u0008\u0008\u0002\u0010w\u001a\u00020\u0004J4\u0010\u008b\u0001\u001a\u00020i2\u0007\u0010\u0086\u0001\u001a\u00020\"2\u0007\u0010\u0087\u0001\u001a\u00020\"2\u0007\u0010\u0088\u0001\u001a\u00020\u00042\u0007\u0010\u0089\u0001\u001a\u00020\"2\u0007\u0010\u008a\u0001\u001a\u00020\"J\u0007\u0010\u008c\u0001\u001a\u00020iJ\u0007\u0010\u008d\u0001\u001a\u00020iJ\u0010\u0010\u008e\u0001\u001a\u00020i2\u0007\u0010\u008f\u0001\u001a\u00020.J\u000f\u0010\u0090\u0001\u001a\u00020i2\u0006\u0010n\u001a\u00020\u0004J\u0007\u0010\u0091\u0001\u001a\u00020iJ\u000f\u0010\u0092\u0001\u001a\u00020i2\u0006\u0010n\u001a\u00020\u0004J*\u0010\u0093\u0001\u001a\u00020i2\u0007\u0010\u0094\u0001\u001a\u00020\"2\u0007\u0010\u0084\u0001\u001a\u00020.2\u0006\u0010w\u001a\u00020\"2\u0007\u0010\u0095\u0001\u001a\u00020\u0004J\u0010\u0010\u0096\u0001\u001a\u00020i2\u0007\u0010\u0094\u0001\u001a\u00020\"J\u0013\u0010\u0097\u0001\u001a\u00020i2\u0008\u0010\u0098\u0001\u001a\u00030\u0099\u0001H\u0016J\u000f\u0010\u009a\u0001\u001a\u00020i2\u0006\u0010n\u001a\u00020\u0004J\t\u0010\u009b\u0001\u001a\u00020iH\u0002J\t\u0010\u009c\u0001\u001a\u00020iH\u0002JA\u0010\u009d\u0001\u001a\u00020i2#\u0010\u009e\u0001\u001a\u001e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0Qj\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"`R2\u0006\u0010g\u001a\u00020\"2\t\u0008\u0002\u0010\u009f\u0001\u001a\u00020.H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u00020\"X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u000e\u0010%\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010/\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u000e\u00103\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010:\u001a\u0004\u0018\u00010\"2\u0008\u00109\u001a\u0004\u0018\u00010\"@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010$\"\u0004\u0008<\u0010=R\u000e\u0010>\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010A\u001a\u00020BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\u001c\u0010G\u001a\u0004\u0018\u00010HX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u001c\u0010M\u001a\u0004\u0018\u00010\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010$\"\u0004\u0008O\u0010=R*\u0010P\u001a\u001e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u00060Qj\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u0006`RX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010T\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010U\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010V\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010W\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010X\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010Y\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010Z\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010[\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\\\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010]\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010^\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010_\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010`\u001a\u0004\u0018\u00010BX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010a\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010b\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010c\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00a0\u0001"
    }
    d2 = {
        "Lcom/miui/video/player/service/statistics/VideoStatisticsManager;",
        "Lcom/miui/video/base/IPlayer$IVideoStatusListener;",
        "()V",
        "DEFAULT_COUNT",
        "",
        "DEFAULT_TIME",
        "",
        "ERRORCANTPLAY",
        "ERROREXTRA_NORMAL",
        "ERROREXTRA_USERQUIT",
        "ERROREXTRA_YTBCANTREQUEST",
        "ERROREXTRA_YTBIDERROR",
        "ERROREXTRA_YTBNOTALLOWPLAY",
        "ERROREXTRA_YTBNOTALLOWPLAYONOTHERWEB",
        "ERRORNETWORK",
        "ERRORNORMAL",
        "ERRORUSERQUIT",
        "MiCloudplayEndTime",
        "MiCloudplayStartTime",
        "PLAY_CLOSE_SUCCESS",
        "PLAY_NEXT_AUTO",
        "PLAY_NEXT_CONTROLLER_CLICK",
        "PLAY_NEXT_EPISODE",
        "PLAY_ORIENTATION_CONTROLLER_CLICK",
        "PLAY_ORIENTATION_INMULTIWINDOW",
        "PLAY_ORIENTATION_SENSOR_GRAVITY",
        "PLAY_STATUS_MODE_BACKGROUND",
        "PLAY_STATUS_MODE_CONTROLLER_CLICK",
        "PLAY_STATUS_MODE_DEFAULT",
        "PLAY_STATUS_MODE_DOUBLE_CLICK",
        "PLAY_STATUS_MODE_NETWORK_CHANGE",
        "PRELOAD_DOWNLOAD_NO_VIDEO_FILE_ERROR",
        "PRELOAD_DOWNLOAD_REQUEST_ERROR",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "adEndTime",
        "adRequestStartTime",
        "adStartTime",
        "brightSettingCount",
        "brightSwipeCount",
        "coutinueByClickCount",
        "coutinueByForgroundCount",
        "forceFullScreenCount",
        "hasPlayStart",
        "",
        "isPreload",
        "()Z",
        "setPreload",
        "(Z)V",
        "isReplay",
        "pauseByBackgroundCount",
        "pauseByClickCount",
        "pauseByDoubleClickCount",
        "pauseByNetCount",
        "playControllerOutCount",
        "value",
        "playId",
        "getPlayId",
        "setPlayId",
        "(Ljava/lang/String;)V",
        "playPauseTime",
        "playSpeedChangedCount",
        "playStartTime",
        "playerMode",
        "Lcom/miui/video/base/IPlayer$playerMode;",
        "getPlayerMode",
        "()Lcom/miui/video/base/IPlayer$playerMode;",
        "setPlayerMode",
        "(Lcom/miui/video/base/IPlayer$playerMode;)V",
        "playingOnlineVideo",
        "Lcom/miui/video/player/service/model/VideoObject;",
        "getPlayingOnlineVideo",
        "()Lcom/miui/video/player/service/model/VideoObject;",
        "setPlayingOnlineVideo",
        "(Lcom/miui/video/player/service/model/VideoObject;)V",
        "preloadId",
        "getPreloadId",
        "setPreloadId",
        "preloadIdTimeMap",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "resolutionChangeCount",
        "screenLockCount",
        "screenOrientationChangedClickCount",
        "screenOrientationChangedGravityCount",
        "screenOrientationChangedInMultiCount",
        "screenShotCount",
        "screenUnlockCount",
        "seekDragBarCount",
        "seekSwipeScreenCount",
        "showPlaylistByClickCount",
        "showPlaylistByRecommendCount",
        "soundSettingCount",
        "soundSwipeCount",
        "thisTimeplayMode",
        "totalPauseTime",
        "useNotchCloseCount",
        "useNotchOpenCount",
        "addParams",
        "item",
        "getCommonParams",
        "event",
        "onAdPlayClose",
        "",
        "onAdPlayStart",
        "playAds",
        "onAdRequestStart",
        "onBrightnessChange",
        "mode",
        "onForceFullScreen",
        "onMultiWindowModeChanged",
        "isInMultiWindowMode",
        "onNotchAreaChange",
        "open",
        "onPlayClose",
        "isComplete",
        "playPos",
        "error",
        "errorExtra",
        "shouldReportMiCloud",
        "onPlayControllerOut",
        "onPlayListItemClick",
        "targetID",
        "position",
        "onPlayListOut",
        "onPlayNext",
        "onPlayPause",
        "onPlayResume",
        "onPlaySpeedChange",
        "onPlayStart",
        "isSuccess",
        "onPreloadEnd",
        "video_id",
        "preload_id",
        "preload_type",
        "preload_page",
        "playlist_id",
        "onPreloadStart",
        "onReplay",
        "onResolutionChange",
        "onScreenLock",
        "lock",
        "onScreenOrientationChange",
        "onScreenshot",
        "onSeek",
        "onVideoRequestEnd",
        "videoId",
        "network",
        "onVideoRequestStart",
        "onVideoStatusChanged",
        "status",
        "Lcom/miui/video/base/PlayStatus;",
        "onVolumeChange",
        "reportMiCloud",
        "reset",
        "trackPlayInfo",
        "toJsonParams",
        "needPlayId",
        "video_player_service_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final DEFAULT_COUNT:I = 0x0

.field private static final DEFAULT_TIME:J = -0x1L

.field public static final ERRORCANTPLAY:I = 0x1

.field public static final ERROREXTRA_NORMAL:I = -0x1

.field public static final ERROREXTRA_USERQUIT:I = -0x2

.field public static final ERROREXTRA_YTBCANTREQUEST:I = 0x2

.field public static final ERROREXTRA_YTBIDERROR:I = 0x1

.field public static final ERROREXTRA_YTBNOTALLOWPLAY:I = 0x3

.field public static final ERROREXTRA_YTBNOTALLOWPLAYONOTHERWEB:I = 0x4

.field public static final ERRORNETWORK:I = 0x2

.field public static final ERRORNORMAL:I = -0x1

.field public static final ERRORUSERQUIT:I = -0x2

.field public static final INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

.field private static MiCloudplayEndTime:J = 0x0L

.field private static MiCloudplayStartTime:J = 0x0L

.field private static final PLAY_CLOSE_SUCCESS:I = 0x0

.field public static final PLAY_NEXT_AUTO:I = 0x3

.field public static final PLAY_NEXT_CONTROLLER_CLICK:I = 0x1

.field public static final PLAY_NEXT_EPISODE:I = 0x2

.field public static final PLAY_ORIENTATION_CONTROLLER_CLICK:I = 0x0

.field public static final PLAY_ORIENTATION_INMULTIWINDOW:I = 0x2

.field public static final PLAY_ORIENTATION_SENSOR_GRAVITY:I = 0x1

.field public static final PLAY_STATUS_MODE_BACKGROUND:I = 0x3

.field public static final PLAY_STATUS_MODE_CONTROLLER_CLICK:I = 0x0

.field public static final PLAY_STATUS_MODE_DEFAULT:I = -0x1

.field public static final PLAY_STATUS_MODE_DOUBLE_CLICK:I = 0x1

.field public static final PLAY_STATUS_MODE_NETWORK_CHANGE:I = 0x2

.field public static final PRELOAD_DOWNLOAD_NO_VIDEO_FILE_ERROR:I = 0x2

.field public static final PRELOAD_DOWNLOAD_REQUEST_ERROR:I = 0x1

# The value of this static final field might be set in the static constructor
.field private static final TAG:Ljava/lang/String; = "VideoStatisticsManager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static adEndTime:J

.field private static adRequestStartTime:J

.field private static adStartTime:J

.field private static brightSettingCount:I

.field private static brightSwipeCount:I

.field private static coutinueByClickCount:I

.field private static coutinueByForgroundCount:I

.field private static forceFullScreenCount:I

.field private static hasPlayStart:Z

.field private static isPreload:Z

.field private static isReplay:Z

.field private static pauseByBackgroundCount:I

.field private static pauseByClickCount:I

.field private static pauseByDoubleClickCount:I

.field private static pauseByNetCount:I

.field private static playControllerOutCount:I

.field private static playId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static playPauseTime:J

.field private static playSpeedChangedCount:I

.field private static playStartTime:J

.field private static playerMode:Lcom/miui/video/base/IPlayer$playerMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static preloadId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static preloadIdTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static resolutionChangeCount:I

.field private static screenLockCount:I

.field private static screenOrientationChangedClickCount:I

.field private static screenOrientationChangedGravityCount:I

.field private static screenOrientationChangedInMultiCount:I

.field private static screenShotCount:I

.field private static screenUnlockCount:I

.field private static seekDragBarCount:I

.field private static seekSwipeScreenCount:I

.field private static showPlaylistByClickCount:I

.field private static showPlaylistByRecommendCount:I

.field private static soundSettingCount:I

.field private static soundSwipeCount:I

.field private static thisTimeplayMode:Lcom/miui/video/base/IPlayer$playerMode;

.field private static totalPauseTime:J

.field private static useNotchCloseCount:I

.field private static useNotchOpenCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-direct {v0}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;-><init>()V

    sput-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const-string v0, "VideoStatisticsManager"

    sput-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->adRequestStartTime:J

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->adStartTime:J

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->adEndTime:J

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playStartTime:J

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->MiCloudplayStartTime:J

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->MiCloudplayEndTime:J

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playPauseTime:J

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->totalPauseTime:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->preloadIdTimeMap:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/video/base/IPlayer$playerMode;->normal:Lcom/miui/video/base/IPlayer$playerMode;

    sput-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playerMode:Lcom/miui/video/base/IPlayer$playerMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final addParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "O2OTarget"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "link.getHost()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "rc_items"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_4

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "ext"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_1

    const-string v4, "duration"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v6

    :goto_0
    sget-wide v8, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->MiCloudplayEndTime:J

    sget-wide v10, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->MiCloudplayStartTime:J

    const/4 v12, 0x0

    sub-long/2addr v8, v10

    const/16 v10, 0x3e8

    int-to-long v10, v10

    div-long v12, v8, v10

    cmp-long v6, v3, v6

    if-lez v6, :cond_2

    div-long/2addr v8, v10

    long-to-double v3, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double v3, v3, v6

    double-to-long v3, v3

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    :cond_2
    const-string v3, "duration"

    invoke-virtual {v2, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "duration"

    invoke-virtual {v1, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "url="

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    if-eqz p1, :cond_5

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    goto :goto_3

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_3
    return-object p1
.end method

.method public static synthetic onPlayClose$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;ZIIIZILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, -0x1

    if-eqz p7, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    move v6, p5

    :goto_2
    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayClose(ZIIIZ)V

    return-void
.end method

.method public static synthetic onPlayStart$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;ZIIILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayStart(ZII)V

    return-void
.end method

.method public static synthetic onPreloadEnd$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZIILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const/4 v8, -0x1

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPreloadEnd(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method private final reportMiCloud()V
    .locals 8

    sget-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->MiCloudplayEndTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    sget-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->MiCloudplayStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    sget-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getTargetAdditions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getTargetAdditions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getTargetAdditions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v1}, Lcom/miui/video/player/service/model/VideoObject;->getTargetAdditions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_a

    sget-object v6, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez v6, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v6}, Lcom/miui/video/player/service/model/VideoObject;->getTargetAdditions()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->addParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_a
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_1
    if-ge v4, v1, :cond_b

    sget-object v5, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reportMiCloud "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->getInstance()Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    move-result-object v1

    sget-object v4, Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;->ACTION_VIDEO:Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;

    const/4 v5, 0x0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v4, v5, v0}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->addStatistics(Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;Ljava/lang/Object;Ljava/util/List;)V

    sput-wide v2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->MiCloudplayStartTime:J

    sput-wide v2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->MiCloudplayEndTime:J

    :cond_c
    return-void

    :cond_d
    :goto_2
    return-void
.end method

.method private final reset()V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    const-string v1, "reset()"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->adStartTime:J

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->adRequestStartTime:J

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->adEndTime:J

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playStartTime:J

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->MiCloudplayStartTime:J

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->MiCloudplayEndTime:J

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playPauseTime:J

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->totalPauseTime:J

    const/4 v0, 0x0

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playControllerOutCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playSpeedChangedCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenOrientationChangedClickCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenOrientationChangedGravityCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenOrientationChangedInMultiCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenLockCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenUnlockCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->resolutionChangeCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenShotCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->seekDragBarCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->seekSwipeScreenCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->pauseByClickCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->pauseByDoubleClickCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->pauseByNetCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->pauseByBackgroundCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->coutinueByClickCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->coutinueByForgroundCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->brightSwipeCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->brightSettingCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->soundSwipeCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->soundSettingCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->forceFullScreenCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->showPlaylistByClickCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->showPlaylistByRecommendCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->useNotchOpenCount:I

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->useNotchCloseCount:I

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->preloadId:Ljava/lang/String;

    sput-boolean v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->isReplay:Z

    check-cast v1, Lcom/miui/video/base/IPlayer$playerMode;

    sput-object v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->thisTimeplayMode:Lcom/miui/video/base/IPlayer$playerMode;

    sput-boolean v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->hasPlayStart:Z

    return-void
.end method

.method private final trackPlayInfo(Ljava/util/HashMap;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$trackPlayInfo$1;

    invoke-direct {v0, p1, p3, p2}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$trackPlayInfo$1;-><init>(Ljava/util/HashMap;ZLjava/lang/String;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeNetWorkTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic trackPlayInfo$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;Ljava/util/HashMap;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->trackPlayInfo(Ljava/util/HashMap;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getCommonParams(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "module"

    const-string v3, "player"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "event"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "source"

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getPlayId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayerMode()Lcom/miui/video/base/IPlayer$playerMode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playerMode:Lcom/miui/video/base/IPlayer$playerMode;

    return-object v0
.end method

.method public final getPlayingOnlineVideo()Lcom/miui/video/player/service/model/VideoObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    return-object v0
.end method

.method public final getPreloadId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->preloadId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final isPreload()Z
    .locals 1

    sget-boolean v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->isPreload:Z

    return v0
.end method

.method public final onAdPlayClose()V
    .locals 8

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    const-string v1, "onAdPlayClose"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->adStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->adEndTime:J

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    const-string v1, "front_advertisement_play_duration"

    sget-wide v4, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->adEndTime:J

    sget-wide v6, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->adStartTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "front_advertisement_duration"

    sget-wide v4, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->adEndTime:J

    sget-wide v6, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->adRequestStartTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ad_play_close"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->trackPlayInfo$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;Ljava/util/HashMap;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onAdPlayStart(Z)V
    .locals 8

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    const-string v1, "onAdPlayStart"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    move-object p1, v3

    check-cast p1, Ljava/util/Map;

    const-string v0, "is_play_front_advertisement"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->adStartTime:J

    goto :goto_0

    :cond_0
    move-object p1, v3

    check-cast p1, Ljava/util/Map;

    const-string v0, "is_play_front_advertisement"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move-object p1, v3

    check-cast p1, Ljava/util/Map;

    const-string v0, "ad_load_duration"

    sget-wide v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->adStartTime:J

    sget-wide v4, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->adRequestStartTime:J

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ad_play_start"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->trackPlayInfo$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;Ljava/util/HashMap;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final onAdRequestStart()V
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    const-string v1, "onAdRequestStart"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->adRequestStartTime:J

    return-void
.end method

.method public final onBrightnessChange(I)V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBrightnessChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->brightSettingCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->brightSettingCount:I

    goto :goto_0

    :pswitch_1
    sget p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->brightSwipeCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->brightSwipeCount:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onForceFullScreen()V
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    const-string v1, "onForceFullScreen"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->forceFullScreenCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->forceFullScreenCount:I

    return-void
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenOrientationChangedInMultiCount:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenOrientationChangedInMultiCount:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenOrientationChangedGravityCount:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenOrientationChangedGravityCount:I

    :goto_0
    return-void
.end method

.method public final onNotchAreaChange(Z)V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayListOut"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->useNotchOpenCount:I

    add-int/2addr p1, v0

    sput p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->useNotchOpenCount:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    sget p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->useNotchCloseCount:I

    add-int/2addr p1, v0

    sput p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->useNotchCloseCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPlayClose(ZIIIZ)V
    .locals 15

    move/from16 v1, p3

    move/from16 v2, p4

    sget-wide v3, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    sget-object v3, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    const-string v7, "onPlayClose"

    invoke-static {v3, v7}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v3, v9

    check-cast v3, Ljava/util/Map;

    const-string v7, "video_id"

    sget-object v8, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    const-string v8, ""

    :goto_0
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->thisTimeplayMode:Lcom/miui/video/base/IPlayer$playerMode;

    if-eqz v7, :cond_2

    sget-object v7, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->thisTimeplayMode:Lcom/miui/video/base/IPlayer$playerMode;

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    sget-object v8, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v7}, Lcom/miui/video/base/IPlayer$playerMode;->ordinal()I

    move-result v7

    aget v7, v8, v7

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v7, "play_type"

    const-string v8, "detail_page_play"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    const-string v7, "play_type"

    const-string v8, "inline_page_play"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playerMode:Lcom/miui/video/base/IPlayer$playerMode;

    sget-object v8, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v7}, Lcom/miui/video/base/IPlayer$playerMode;->ordinal()I

    move-result v7

    aget v7, v8, v7

    packed-switch v7, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    const-string v7, "play_type"

    const-string v8, "detail_page_play"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_3
    const-string v7, "play_type"

    const-string v8, "inline_page_play"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sput-wide v10, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->MiCloudplayEndTime:J

    sget-wide v10, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playStartTime:J

    sub-long v10, v7, v10

    sget-wide v12, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->totalPauseTime:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-gez v14, :cond_3

    move-wide v10, v12

    :cond_3
    const-string v12, "video_play_duration"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "video_duration"

    sget-wide v11, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playStartTime:J

    sub-long/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "end_duration"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_4

    const-string v0, "error"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "extra"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const-string v0, "error"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "extra"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-boolean v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->isReplay:Z

    if-eqz v0, :cond_5

    const-string v0, "is_replay"

    const-string v1, "1"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    const-string v0, "is_replay"

    const-string v1, "0"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const-string v0, "play_out_screen_click_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playControllerOutCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "play_speed_change_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playSpeedChangedCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "change_orientation_click_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenOrientationChangedClickCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "change_orientation_gravity_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenOrientationChangedGravityCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "change_orientation_inmulti_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenOrientationChangedInMultiCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lock_screen_lock_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenLockCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lock_screen_unlock_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenUnlockCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resolution_change_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->resolutionChangeCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screenshot_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenShotCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "seek_drag_bar_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->seekDragBarCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "seek_swipe_screen_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->seekSwipeScreenCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pause_by_click_button_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->pauseByClickCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pause_by_double_click_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->pauseByDoubleClickCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pause_by_network_change_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->pauseByNetCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pause_by_enter_background_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->pauseByBackgroundCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "continue_by_click_button_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->coutinueByClickCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "continue_by_enter_foreground_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->coutinueByForgroundCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "change_brightness_swipe_screen_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->brightSwipeCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "change_brightness_phone_system_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->brightSettingCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "change_sound_swipe_screen_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->soundSwipeCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "change_sound_phone_system_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->soundSettingCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "force_fullscreen_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->forceFullScreenCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "play_list_show_by_click_button_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->showPlaylistByClickCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "play_list_show_by_click_recomm_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->showPlaylistByRecommendCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "use_notch_area_open_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->useNotchOpenCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "use_notch_area_close_count"

    sget v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->useNotchCloseCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "playlist_id"

    sget-object v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/miui/video/player/service/model/VideoObject;->getPlaylistId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    const-string v1, ""

    :goto_4
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "play_close"

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v8, p0

    invoke-static/range {v8 .. v13}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->trackPlayInfo$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;Ljava/util/HashMap;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p5, :cond_7

    invoke-direct {p0}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->reportMiCloud()V

    :cond_7
    sput-wide v5, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playStartTime:J

    goto :goto_5

    :cond_8
    if-nez p1, :cond_9

    const/4 v0, -0x1

    if-eq v1, v0, :cond_9

    if-eq v2, v0, :cond_9

    move-object v0, p0

    invoke-virtual {p0, v4, v1, v2}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayStart(ZII)V

    goto :goto_6

    :cond_9
    :goto_5
    move-object v0, p0

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final onPlayControllerOut()V
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    const-string v1, "onPlayControllerOut"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playControllerOutCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playControllerOutCount:I

    return-void
.end method

.method public final onPlayListItemClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "targetID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    const-string v1, "onPlayListItemClick"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    const-string v1, "video_id"

    sget-object v2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/video/player/service/model/VideoObject;->getEpisodeType()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v2, "type_episodes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "video_module"

    const-string v2, "episodes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :sswitch_1
    const-string v2, "type_recommend"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "video_module"

    const-string v2, "recommend"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :sswitch_2
    const-string v2, "type_playlist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "video_module"

    const-string v2, "recommend"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :sswitch_3
    const-string v2, "type_trending"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "video_module"

    const-string v2, "trending"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :sswitch_4
    const-string v2, "type_trailer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "video_module"

    const-string v2, "trailer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    const-string v1, "target_video_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "position"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "playlist_id"

    sget-object p2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/miui/video/player/service/model/VideoObject;->getPlaylistId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    const-string p2, ""

    :goto_3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "play_list_card_click"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->trackPlayInfo$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;Ljava/util/HashMap;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77540ed2 -> :sswitch_4
        -0x6c178776 -> :sswitch_3
        -0x4f365ac9 -> :sswitch_2
        0x129759f7 -> :sswitch_1
        0x1b09253d -> :sswitch_0
    .end sparse-switch
.end method

.method public final onPlayListOut(I)V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayListOut"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->showPlaylistByRecommendCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->showPlaylistByRecommendCount:I

    goto :goto_0

    :pswitch_1
    sget p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->showPlaylistByClickCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->showPlaylistByClickCount:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPlayNext(I)V
    .locals 8

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    const-string v1, "onPlayNext"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    const-string v1, "video_id"

    sget-object v2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playerMode:Lcom/miui/video/base/IPlayer$playerMode;

    sget-object v2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Lcom/miui/video/base/IPlayer$playerMode;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v1, "play_type"

    const-string v2, "detail_page_play"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    const-string v1, "play_type"

    const-string v2, "inline_page_play"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v1, "playlist_id"

    sget-object v2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/video/player/service/model/VideoObject;->getPlaylistId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, ""

    :goto_2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "play_next"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->trackPlayInfo$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;Ljava/util/HashMap;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPlayPause(I)V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playPauseTime:J

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->pauseByBackgroundCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->pauseByBackgroundCount:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->pauseByNetCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->pauseByNetCount:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->pauseByDoubleClickCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->pauseByDoubleClickCount:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->pauseByClickCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->pauseByClickCount:I

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->MiCloudplayEndTime:J

    invoke-direct {p0}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->reportMiCloud()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPlayResume(I)V
    .locals 6

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playPauseTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->totalPauseTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playPauseTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->totalPauseTime:J

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->coutinueByForgroundCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->coutinueByForgroundCount:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->coutinueByClickCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->coutinueByClickCount:I

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->MiCloudplayStartTime:J

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPlaySpeedChange()V
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    const-string v1, "onPlaySpeedChange"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playSpeedChangedCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playSpeedChangedCount:I

    return-void
.end method

.method public final onPlayStart(ZII)V
    .locals 8

    sget-boolean v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->hasPlayStart:Z

    if-nez v0, :cond_6

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    const-string v1, "onPlayStart"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    const-string v1, "video_id"

    sget-object v2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playerMode:Lcom/miui/video/base/IPlayer$playerMode;

    sget-object v2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/miui/video/base/IPlayer$playerMode;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v1, "play_type"

    const-string v2, "detail_page_play"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    const-string v1, "play_type"

    const-string v2, "inline_page_play"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playerMode:Lcom/miui/video/base/IPlayer$playerMode;

    sput-object v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->thisTimeplayMode:Lcom/miui/video/base/IPlayer$playerMode;

    sget-boolean v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->isPreload:Z

    if-eqz v1, :cond_2

    const-string v1, "is_preload"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "preload_id"

    sget-object v2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->preloadId:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, ""

    :goto_2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    const-string v1, "is_preload"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const-string v1, "error"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "extra"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->isReplay:Z

    if-eqz p2, :cond_3

    const-string p2, "is_replay"

    const-string p3, "1"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    const-string p2, "is_replay"

    const-string p3, "0"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const-string p2, "playlist_id"

    sget-object p3, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/miui/video/player/service/model/VideoObject;->getPlaylistId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    goto :goto_5

    :cond_4
    const-string p3, ""

    :goto_5
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->MiCloudplayStartTime:J

    :cond_5
    const-string v4, "play_start"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->trackPlayInfo$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;Ljava/util/HashMap;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->hasPlayStart:Z

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPreloadEnd(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "video_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preload_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preload_page"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlist_id"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    const-string v1, "onPreloadEnd"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->preloadIdTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    const-string v3, "preload_id"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "video_id"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "playlist_id"

    invoke-interface {v2, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "preload_type"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "preload_page"

    invoke-interface {v2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const-string p1, "end_time"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    invoke-interface {v2, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    if-eqz p6, :cond_0

    const-string p5, "is_success"

    const-string p6, "1"

    invoke-interface {v2, p5, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "error"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    invoke-interface {v2, p5, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p5, "is_success"

    const-string p6, "0"

    invoke-interface {v2, p5, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "error"

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    invoke-interface {v2, p5, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p5, "duration"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p6

    sub-long/2addr p3, p6

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "video_preload_end"

    invoke-direct {p0, v1, p3, p1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->trackPlayInfo(Ljava/util/HashMap;Ljava/lang/String;Z)V

    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->preloadIdTimeMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final onPreloadStart(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "video_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preload_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preload_page"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlist_id"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    const-string v1, "onPreloadStart"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "preload_id"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "video_id"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "playlist_id"

    invoke-interface {v1, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "preload_type"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "preload_page"

    invoke-interface {v1, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const-string p1, "start_time"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    invoke-interface {v1, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->preloadIdTimeMap:Ljava/util/HashMap;

    check-cast p1, Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "video_preload_start"

    const/4 p2, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->trackPlayInfo(Ljava/util/HashMap;Ljava/lang/String;Z)V

    return-void
.end method

.method public final onReplay()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->isReplay:Z

    return-void
.end method

.method public final onResolutionChange()V
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    const-string v1, "onResolutionChange"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->resolutionChangeCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->resolutionChangeCount:I

    return-void
.end method

.method public final onScreenLock(Z)V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenLock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenLockCount:I

    add-int/2addr p1, v0

    sput p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenLockCount:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    sget p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenUnlockCount:I

    add-int/2addr p1, v0

    sput p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenUnlockCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final onScreenOrientationChange(I)V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenOrientationChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenOrientationChangedInMultiCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenOrientationChangedInMultiCount:I

    goto :goto_0

    :pswitch_1
    sget p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenOrientationChangedGravityCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenOrientationChangedGravityCount:I

    goto :goto_0

    :pswitch_2
    sget p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenOrientationChangedClickCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenOrientationChangedClickCount:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onScreenshot()V
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenshotCount"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenShotCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->screenShotCount:I

    return-void
.end method

.method public final onSeek(I)V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeek"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->seekSwipeScreenCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->seekSwipeScreenCount:I

    goto :goto_0

    :pswitch_1
    sget p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->seekDragBarCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->seekDragBarCount:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onVideoRequestEnd(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoRequestEnd isSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    const-string v1, "video_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p1, "is_success"

    const-string p2, "1"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "is_success"

    const-string p2, "0"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p1, "error"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "network_environment"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "playlist_id"

    sget-object p2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/miui/video/player/service/model/VideoObject;->getPlaylistId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, ""

    :goto_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "video_request_end"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->trackPlayInfo$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;Ljava/util/HashMap;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final onVideoRequestStart(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    const-string v1, "onVideoRequestStart"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    const-string v1, "video_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "playlist_id"

    sget-object v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/video/player/service/model/VideoObject;->getPlaylistId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "video_request_start"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->trackPlayInfo$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;Ljava/util/HashMap;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public onVideoStatusChanged(Lcom/miui/video/base/PlayStatus;)V
    .locals 6
    .param p1    # Lcom/miui/video/base/PlayStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {p1}, Lcom/miui/video/base/PlayStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayStart$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;ZIIILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onAdPlayClose()V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onAdPlayStart(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onVolumeChange(I)V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSoundChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->soundSettingCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->soundSettingCount:I

    goto :goto_0

    :pswitch_1
    sget p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->soundSwipeCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->soundSwipeCount:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setPlayId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->reset()V

    sput-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final setPlayerMode(Lcom/miui/video/base/IPlayer$playerMode;)V
    .locals 1
    .param p1    # Lcom/miui/video/base/IPlayer$playerMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playerMode:Lcom/miui/video/base/IPlayer$playerMode;

    return-void
.end method

.method public final setPlayingOnlineVideo(Lcom/miui/video/player/service/model/VideoObject;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/model/VideoObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->playingOnlineVideo:Lcom/miui/video/player/service/model/VideoObject;

    return-void
.end method

.method public final setPreload(Z)V
    .locals 0

    sput-boolean p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->isPreload:Z

    return-void
.end method

.method public final setPreloadId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->preloadId:Ljava/lang/String;

    return-void
.end method
