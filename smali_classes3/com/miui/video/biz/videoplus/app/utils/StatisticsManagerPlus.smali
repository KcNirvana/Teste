.class public Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlus;
.super Ljava/lang/Object;
.source "StatisticsManagerPlus.java"

# interfaces
.implements Lcom/miui/video/base/statistics/StatisticsUtils2$IStatisticsConstant;


# static fields
.field public static final CHANGE_AFTER:Ljava/lang/String; = "change_after"

.field public static final CHANGE_BEFORE:Ljava/lang/String; = "change_before"

.field public static final CHANGE_BRIGHTNESS_LOCAL:Ljava/lang/String; = "change_brightness_local"
    .annotation runtime Lcom/miui/video/biz/videoplus/app/utils/ActionParameterKeys;
        key = {
            "play_id",
            "type"
        }
    .end annotation
.end field

.field public static final CHANGE_BRIGHTNESS_LOCAL_TYPE:Ljava/lang/String; = "type"

.field public static final CHANGE_ORIENTATION_LOCAL:Ljava/lang/String; = "change_orientation_local"
    .annotation runtime Lcom/miui/video/biz/videoplus/app/utils/ActionParameterKeys;
        key = {
            "play_id",
            "type",
            "orientation"
        }
    .end annotation
.end field

.field public static final CHANGE_SOUND_LOCAL:Ljava/lang/String; = "change_sound_local"
    .annotation runtime Lcom/miui/video/biz/videoplus/app/utils/ActionParameterKeys;
        key = {
            "play_id",
            "type"
        }
    .end annotation
.end field

.field public static final CHANGE_SOUND_LOCAL_TYPE:Ljava/lang/String; = "type"

.field public static final DELATE_IN_PLAYER_LOCAL:Ljava/lang/String; = "delete_in_player_local"
    .annotation runtime Lcom/miui/video/biz/videoplus/app/utils/ActionParameterKeys;
        key = {
            "from"
        }
    .end annotation
.end field

.field public static final DELATE_IN_PLAYER_LOCAL_FROM:Ljava/lang/String; = "from"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final FROM_PAGE:Ljava/lang/String; = "play_from_local"

.field public static final LOCK_SCREEN_LOCAL:Ljava/lang/String; = "lock_screen_local"
    .annotation runtime Lcom/miui/video/biz/videoplus/app/utils/ActionParameterKeys;
        key = {
            "play_id",
            "type"
        }
    .end annotation
.end field

.field public static final LOCK_SCREEN_TYPE:Ljava/lang/String; = "type"

.field public static final OPEN_DEVICE_LIST_PLAYER_LOCAL:Ljava/lang/String; = "open_device_list_player_local"
    .annotation runtime Lcom/miui/video/biz/videoplus/app/utils/ActionParameterKeys;
        key = {
            "play_id",
            "from"
        }
    .end annotation
.end field

.field public static final OPEN_DEVICE_LIST_PLAYER_LOCAL_FROM:Ljava/lang/String; = "from"

.field public static final OPEN_SUBTITLE_LIST_LOCAL:Ljava/lang/String; = "open_subtitle_list_local"
    .annotation runtime Lcom/miui/video/biz/videoplus/app/utils/ActionParameterKeys;
        key = {
            "play_id",
            "from"
        }
    .end annotation
.end field

.field public static final OPEN_SUBTITLE_LIST_LOCAL_FROM:Ljava/lang/String; = "from"

.field public static final OPEN_TRACK_LIST_LOCAL:Ljava/lang/String; = "open_track_list_local"
    .annotation runtime Lcom/miui/video/biz/videoplus/app/utils/ActionParameterKeys;
        key = {
            "play_id",
            "from"
        }
    .end annotation
.end field

.field public static final OPEN_TRACK_LIST_LOCAL_FROM:Ljava/lang/String; = "from"

.field public static final ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final ORIENTATION_RESULT_LANDSCAPE:Ljava/lang/String; = "\u7ad6\u5c4f\u53d8\u6a2a\u5c4f"

.field public static final ORIENTATION_RESULT_PORTRAIT:Ljava/lang/String; = "\u6a2a\u5c4f\u53d8\u7ad6\u5c4f"

.field public static final ORIENTATION_TYPE:Ljava/lang/String; = "type"

.field public static final ORIENTATION_TYPE_CLICK:Ljava/lang/String; = "\u70b9\u51fb"

.field public static final ORIENTATION_TYPE_GRATITY:Ljava/lang/String; = "\u91cd\u529b\u611f\u5e94"

.field public static final PLAYBACK_MODE_LOCAL:Ljava/lang/String; = "playback_mode_local"
    .annotation runtime Lcom/miui/video/biz/videoplus/app/utils/ActionParameterKeys;
        key = {
            "play_id",
            "change_after"
        }
    .end annotation
.end field

.field public static final PLAYBACK_MODE_LOCAL_CHANGE_AFTER:Ljava/lang/String; = "change_after"

.field public static final PLAY_END_LOCAL:Ljava/lang/String; = "play_end_local"
    .annotation runtime Lcom/miui/video/biz/videoplus/app/utils/ActionParameterKeys;
        key = {
            "play_id",
            "video_play_duration",
            "video_duration",
            "error"
        }
    .end annotation
.end field

.field public static final PLAY_ID:Ljava/lang/String; = "play_id"

.field public static final PLAY_SPEED_CHANGE_LOCAL:Ljava/lang/String; = "play_speed_change_local"
    .annotation runtime Lcom/miui/video/biz/videoplus/app/utils/ActionParameterKeys;
        key = {
            "play_id",
            "change_before",
            "change_after"
        }
    .end annotation
.end field

.field public static final PLAY_START_LOCAL:Ljava/lang/String; = "play_start_local"
    .annotation runtime Lcom/miui/video/biz/videoplus/app/utils/ActionParameterKeys;
        key = {
            "play_id",
            "play_from_local",
            "type"
        }
    .end annotation
.end field

.field public static final SCREEN_ON_TV_PLAYER_LOCAL:Ljava/lang/String; = "screen_on_tv_player_local"
    .annotation runtime Lcom/miui/video/biz/videoplus/app/utils/ActionParameterKeys;
        key = {
            "play_id",
            "type"
        }
    .end annotation
.end field

.field public static final SCREEN_ON_TV_PLAYER_LOCAL_TYPE:Ljava/lang/String; = "type"

.field public static final SHARE_IN_PLAYER_LOCAL:Ljava/lang/String; = "share_in_player_local"
    .annotation runtime Lcom/miui/video/biz/videoplus/app/utils/ActionParameterKeys;
        key = {
            "from"
        }
    .end annotation
.end field

.field public static final SHARE_IN_PLAYER_LOCAL_FROM:Ljava/lang/String; = "from"

.field public static final SMALL_WINDOW_CLICK_LOCAL:Ljava/lang/String; = "small_window_click_local"
    .annotation runtime Lcom/miui/video/biz/videoplus/app/utils/ActionParameterKeys;
        key = {
            "play_id"
        }
    .end annotation
.end field

.field public static final STOP_LOCAL:Ljava/lang/String; = "stop_local"
    .annotation runtime Lcom/miui/video/biz/videoplus/app/utils/ActionParameterKeys;
        key = {
            "play_id",
            "type"
        }
    .end annotation
.end field

.field public static final STOP_LOCAL_TYPE:Ljava/lang/String; = "type"

.field public static final TAG:Ljava/lang/String; = "StatisticsManagerPlus"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_CLICK:Ljava/lang/String; = "\u70b9\u51fb\u64ad\u653e"

.field public static final TYPE_INLINE:Ljava/lang/String; = "inline\u64ad\u653e"

.field public static final TYPE_TAG_1:Ljava/lang/String; = "1"

.field public static final TYPE_TAG_2:Ljava/lang/String; = "2"

.field public static final TYPE_TAG_3:Ljava/lang/String; = "3"

.field public static final TYPE_TAG_4:Ljava/lang/String; = "4"

.field public static final TYPE_TAG_5:Ljava/lang/String; = "5"

.field public static final VIDEO_DURATION:Ljava/lang/String; = "video_duration"

.field public static final VIDEO_PLAY_DURATION:Ljava/lang/String; = "video_play_duration"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
