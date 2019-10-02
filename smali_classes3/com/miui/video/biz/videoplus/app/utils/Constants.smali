.class public Lcom/miui/video/biz/videoplus/app/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CHANNEL_POSITION:Ljava/lang/String; = "channel_position"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COUNT_EXTERNAL_CARD_FILE_SEPARATOR:I = 0x6

.field public static final COUNT_INTERANL_CARD_FILE_SEPARATOR:I = 0x7

.field public static final EXTRA_VIDEO_SIZE:I = 0x1400000

.field public static final INTERNAL_SDCARD:Ljava/lang/String; = "emulated/0/"

.field public static final KEY_VOLUMN_SWITCH:Ljava/lang/String; = "volumn_switch"

.field public static final LAUNCH_FROM:Ljava/lang/String; = "launch"

.field public static final ONE_NUM:I = 0x1

.field public static final PLUS_FIRST_ACCESS_FOLDER:Ljava/lang/String; = "plus_first_access_folder"

.field public static final PLUS_FIRST_ACCESS_PLUS:Ljava/lang/String; = "plus_first_access_plus"

.field public static final POSTER_SETTING_FROM_GALLERY:Ljava/lang/String; = "1"

.field public static final POSTER_SETTING_FROM_REVERT:Ljava/lang/String; = "2"

.field public static final REQUEST_CODE_PLAY:I = 0x64

.field public static final RESULT_CODE_EDITED:I = 0x64

.field public static final SP_COVER_PATH:Ljava/lang/String; = "cover_path"

.field public static final TAB_POSITION:Ljava/lang/String; = "tab_position"

.field public static final TWO_NUM:I = 0x2

.field public static final VIDEOS_HIDE_KEY:Ljava/lang/String; = "VIDEOS_HIDE_PASSWORD"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/video/biz/videoplus/app/utils/Constants;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
