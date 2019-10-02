.class public Lcom/miui/video/base/database/CLVDatabase;
.super Lcom/miui/video/base/database/DBUtils;
.source "CLVDatabase.java"


# static fields
.field private static final CURRENT_AUDIO_TRACK:Ljava/lang/String; = "currentAudioTrack"

.field private static final CURRENT_SUBTITLE_PATH:Ljava/lang/String; = "currentSubtitlePath"

.field public static final DATABASE_CLV:Ljava/lang/String; = "mivideo.db"

.field public static final DATABASE_VERSION_20170617:I = 0x133c779

.field public static final DATABASE_VERSION_20180626:I = 0x133ee92

.field public static final DATABASE_VERSION_20190416:I = 0x13414d0

.field public static final DATABASE_VERSION_CLV:I = 0x13414d0

.field private static final DURATION:Ljava/lang/String; = "duration"

.field private static final EXTRA_SUBTITLE_OFFSETS:Ljava/lang/String; = "extraSubtitleOffset"

.field private static final EXTRA_SUBTITLE_PATH:Ljava/lang/String; = "extraSubtitlePath"

.field private static final FAVOUR_TIME:Ljava/lang/String; = "favourTime"

.field private static final IMGURL:Ljava/lang/String; = "imgUrl"

.field private static final MD5_PATH:Ljava/lang/String; = "md5_path"

.field private static final MEDIAID:Ljava/lang/String; = "mediaId"

.field private static final ONLINE_SUBTITLE_HASH:Ljava/lang/String; = "onlineSubHash"

.field private static final ONLINE_SUBTITLE_LOCAL_PATH:Ljava/lang/String; = "onlineSubLocalPath"

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PLAYPROGRESS:Ljava/lang/String; = "playProgress"

.field private static final REF:Ljava/lang/String; = "ref"

.field private static final SIZE:Ljava/lang/String; = "size"

.field private static final TABLE_FAVOUR:Ljava/lang/String; = "favour"

.field private static final TABLE_HISTORY:Ljava/lang/String; = "history"

.field private static final TABLE_LOCAL:Ljava/lang/String; = "local"

.field private static final TABLE_VIDEOHIDE:Ljava/lang/String; = "videohide"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final UPDATETIME:Ljava/lang/String; = "updateTime"

.field private static final URL:Ljava/lang/String; = "url"

.field private static final _ID:Ljava/lang/String; = "_id"

.field private static volatile mInstance:Lcom/miui/video/base/database/CLVDatabase;


# instance fields
.field private eHistory:Lcom/miui/video/base/database/DBUtils$IQueryListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/base/database/DBUtils$IQueryListener<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/LocalVideoEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private eLocalVideo:Lcom/miui/video/base/database/DBUtils$IQueryListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/base/database/DBUtils$IQueryListener<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/LocalVideoEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private eVideoHide:Lcom/miui/video/base/database/DBUtils$IQueryListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/base/database/DBUtils$IQueryListener<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/LocalVideoEntity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;-><init>()V

    new-instance v0, Lcom/miui/video/base/database/CLVDatabase$1;

    invoke-direct {v0, p0}, Lcom/miui/video/base/database/CLVDatabase$1;-><init>(Lcom/miui/video/base/database/CLVDatabase;)V

    iput-object v0, p0, Lcom/miui/video/base/database/CLVDatabase;->eLocalVideo:Lcom/miui/video/base/database/DBUtils$IQueryListener;

    new-instance v0, Lcom/miui/video/base/database/CLVDatabase$3;

    invoke-direct {v0, p0}, Lcom/miui/video/base/database/CLVDatabase$3;-><init>(Lcom/miui/video/base/database/CLVDatabase;)V

    iput-object v0, p0, Lcom/miui/video/base/database/CLVDatabase;->eVideoHide:Lcom/miui/video/base/database/DBUtils$IQueryListener;

    new-instance v0, Lcom/miui/video/base/database/CLVDatabase$6;

    invoke-direct {v0, p0}, Lcom/miui/video/base/database/CLVDatabase$6;-><init>(Lcom/miui/video/base/database/CLVDatabase;)V

    iput-object v0, p0, Lcom/miui/video/base/database/CLVDatabase;->eHistory:Lcom/miui/video/base/database/DBUtils$IQueryListener;

    return-void
.end method

.method private calmpSavePositon(JJ)I
    .locals 6

    const-wide/32 v0, 0x493e0

    cmp-long v0, p3, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    sub-long v2, p3, p1

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_1

    sub-long/2addr p3, p1

    const-wide/16 v2, 0x3e8

    cmp-long p3, p3, v2

    if-gtz p3, :cond_1

    return v1

    :cond_1
    long-to-int p1, p1

    return p1
.end method

.method private getFavourTable()Lcom/miui/video/base/database/TableEntity;
    .locals 2

    new-instance v0, Lcom/miui/video/base/database/TableEntity;

    const-string v1, "favour"

    invoke-direct {v0, v1}, Lcom/miui/video/base/database/TableEntity;-><init>(Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "imgUrl"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "favourTime"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addIntegerColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryTable()Lcom/miui/video/base/database/TableEntity;
    .locals 2

    new-instance v0, Lcom/miui/video/base/database/TableEntity;

    const-string v1, "history"

    invoke-direct {v0, v1}, Lcom/miui/video/base/database/TableEntity;-><init>(Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "imgUrl"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "md5_path"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addIntegerColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addIntegerColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "playProgress"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addIntegerColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "updateTime"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addIntegerColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "currentAudioTrack"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addIntegerColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "extraSubtitlePath"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "extraSubtitleOffset"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "onlineSubLocalPath"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "onlineSubHash"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "currentSubtitlePath"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "ref"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/miui/video/base/database/CLVDatabase;
    .locals 2

    sget-object v0, Lcom/miui/video/base/database/CLVDatabase;->mInstance:Lcom/miui/video/base/database/CLVDatabase;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/base/database/CLVDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/base/database/CLVDatabase;->mInstance:Lcom/miui/video/base/database/CLVDatabase;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/base/database/CLVDatabase;

    invoke-direct {v1}, Lcom/miui/video/base/database/CLVDatabase;-><init>()V

    sput-object v1, Lcom/miui/video/base/database/CLVDatabase;->mInstance:Lcom/miui/video/base/database/CLVDatabase;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/base/database/CLVDatabase;->mInstance:Lcom/miui/video/base/database/CLVDatabase;

    return-object v0
.end method

.method private getLocalVideoTable()Lcom/miui/video/base/database/TableEntity;
    .locals 2

    new-instance v0, Lcom/miui/video/base/database/TableEntity;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/miui/video/base/database/TableEntity;-><init>(Landroid/net/Uri;)V

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addIntegerColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "_display_name"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "_size"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addIntegerColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "date_added"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addIntegerColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    return-object v0
.end method

.method private getLocalVideoThumbnailsTable()Lcom/miui/video/base/database/TableEntity;
    .locals 2

    new-instance v0, Lcom/miui/video/base/database/TableEntity;

    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/miui/video/base/database/TableEntity;-><init>(Landroid/net/Uri;)V

    const-string v1, "video_id"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addIntegerColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    return-object v0
.end method

.method private getVideoHideTable()Lcom/miui/video/base/database/TableEntity;
    .locals 2

    new-instance v0, Lcom/miui/video/base/database/TableEntity;

    const-string v1, "videohide"

    invoke-direct {v0, v1}, Lcom/miui/video/base/database/TableEntity;-><init>(Ljava/lang/String;)V

    const-string v1, "mediaId"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addIntegerColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "md5_path"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    return-object v0
.end method

.method public static localVideoEntityToVideoHistoryEntity(Lcom/miui/video/base/database/LocalVideoEntity;)Lcom/miui/video/base/database/LocalVideoHistoryEntity;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoEntity;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setId(J)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoEntity;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setImgUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoEntity;->getMd5Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setMd5_path(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoEntity;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setSize(J)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoEntity;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setDuration(J)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoEntity;->getPlayProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setPlayProgress(I)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoEntity;->getCurrentAudioTrack()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setCurrentAudioTrack(I)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoEntity;->getOnlineSubtitlePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setOnlineSubLocalPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoEntity;->getOnlineSubtitleHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setOnlineSubHash(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoEntity;->getCurrentSubtitlePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setCurrentSubtitlePath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoEntity;->getExtraSubtitlePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setExtraSubtitlePath(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoEntity;->getSubtitleOffsetEntities()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setExtraSubtitleOffset(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoEntity;->getRef()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setRef(Ljava/lang/String;)V

    return-object v0
.end method

.method public static videoHistoryEntityToLocalVideoEntity(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)Lcom/miui/video/base/database/LocalVideoEntity;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/LocalVideoEntity;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoEntity;->setId(J)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setImgUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getMd5_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setMd5Path(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoEntity;->setSize(J)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoEntity;->setDuration(J)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getPlayProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setPlayProgress(I)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getCurrentAudioTrack()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setCurrentAudioTrack(I)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getOnlineSubLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setOnlineSubtitlePath(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getOnlineSubHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setOnlineSubtitleHash(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getCurrentSubtitlePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setCurrentSubtitlePath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getExtraSubtitlePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setExtraSubtitlePath(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/LocalVideoEntity;->setUpdateTime(J)V

    :cond_1
    const-string v1, "VideoPlayer"

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/base/utils/CLVEntitys;->createLinkHostUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setTarget(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getExtraSubtitleOffset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/miui/video/base/database/CLVDatabase$4;

    invoke-direct {v3}, Lcom/miui/video/base/database/CLVDatabase$4;-><init>()V

    invoke-virtual {v3}, Lcom/miui/video/base/database/CLVDatabase$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setSubtitleOffsetEntities(Ljava/util/List;)V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getRef()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/video/base/database/LocalVideoEntity;->setRef(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public deleteHistory(Ljava/lang/String;)J
    .locals 4

    invoke-direct {p0}, Lcom/miui/video/base/database/CLVDatabase;->getHistoryTable()Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    const-string v1, "md5_path = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/TableEntity;->setWhereClause(Ljava/lang/String;[Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/CLVDatabase;->delete(Lcom/miui/video/base/database/TableEntity;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteHistory(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/LocalVideoEntity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/video/base/database/CLVDatabase;->getHistoryTable()Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/database/CLVDatabase$5;

    invoke-direct {v1, p0}, Lcom/miui/video/base/database/CLVDatabase$5;-><init>(Lcom/miui/video/base/database/CLVDatabase;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/video/base/database/CLVDatabase;->runTransactionEach(Lcom/miui/video/base/database/TableEntity;Ljava/util/List;Lcom/miui/video/base/database/DBUtils$ITransactionListener;)V

    return-void
.end method

.method public deleteHistoryByID(J)J
    .locals 3

    invoke-direct {p0}, Lcom/miui/video/base/database/CLVDatabase;->getHistoryTable()Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/TableEntity;->setWhereClause(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/CLVDatabase;->delete(Lcom/miui/video/base/database/TableEntity;)J

    move-result-wide p1

    return-wide p1
.end method

.method public deleteLocalVideoTable(J)J
    .locals 3

    invoke-direct {p0}, Lcom/miui/video/base/database/CLVDatabase;->getLocalVideoTable()Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/TableEntity;->setWhereClause(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/CLVDatabase;->deleteUri(Lcom/miui/video/base/database/TableEntity;)J

    move-result-wide p1

    return-wide p1
.end method

.method public deleteVideoHideTable(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/LocalVideoEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-direct {p0}, Lcom/miui/video/base/database/CLVDatabase;->getVideoHideTable()Lcom/miui/video/base/database/TableEntity;

    move-result-object v3

    const-string v4, "md5_path=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/miui/video/base/database/LocalVideoEntity;->getMd5Path()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/miui/video/base/database/TableEntity;->setWhereClause(Ljava/lang/String;[Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/video/base/database/CLVDatabase;->delete(Lcom/miui/video/base/database/TableEntity;)J

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v1, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-direct {v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setPath(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/database/LocalVideoEntity;->getMd5Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setMd5_path(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setIs_hide(Z)V

    invoke-static {}, Lcom/miui/video/base/database/HistoryDaoUtil;->getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/miui/video/base/database/HistoryDaoUtil;->changeHideStateByPath(Lcom/miui/video/base/database/LocalVideoHistoryEntity;Ljava/lang/Boolean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method protected getRealDatabaseName()Ljava/lang/String;
    .locals 1

    const-string v0, "mivideo.db"

    return-object v0
.end method

.method protected getRealDatabaseVersion()I
    .locals 1

    const v0, 0x13414d0

    return v0
.end method

.method public insertHistory(Lcom/miui/video/base/database/LocalVideoEntity;)J
    .locals 5

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/FileUtils;->getThumbCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".thumb"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imgUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path"

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getMd5Path()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "md5_path"

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/framework/utils/CipherUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "md5_path"

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getMd5Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "size"

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "duration"

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "playProgress"

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getPlayProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "currentAudioTrack"

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getCurrentAudioTrack()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "onlineSubLocalPath"

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getOnlineSubtitlePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "onlineSubHash"

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getOnlineSubtitleHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "currentSubtitlePath"

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getCurrentSubtitlePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extraSubtitlePath"

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getExtraSubtitlePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getSubtitleOffsetEntities()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "extraSubtitleOffset"

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ref"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/miui/video/base/database/CLVDatabase;->getHistoryTable()Lcom/miui/video/base/database/TableEntity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/miui/video/base/database/TableEntity;->setWhereClause(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/video/base/database/TableEntity;->setValues(Landroid/content/ContentValues;)Lcom/miui/video/base/database/TableEntity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/CLVDatabase;->insertOrUpdate(Lcom/miui/video/base/database/TableEntity;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertVideoHideTable(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/LocalVideoEntity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/video/base/database/CLVDatabase;->getVideoHideTable()Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/database/CLVDatabase$2;

    invoke-direct {v1, p0}, Lcom/miui/video/base/database/CLVDatabase$2;-><init>(Lcom/miui/video/base/database/CLVDatabase;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/video/base/database/CLVDatabase;->runTransactionEach(Lcom/miui/video/base/database/TableEntity;Ljava/util/List;Lcom/miui/video/base/database/DBUtils$ITransactionListener;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-direct {v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setPath(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/LocalVideoEntity;->getMd5Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setMd5_path(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setIs_hide(Z)V

    invoke-static {}, Lcom/miui/video/base/database/HistoryDaoUtil;->getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/miui/video/base/database/HistoryDaoUtil;->changeHideStateByPath(Lcom/miui/video/base/database/LocalVideoHistoryEntity;Ljava/lang/Boolean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isHideVideo(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/video/base/database/CLVDatabase;->getVideoHideTable()Lcom/miui/video/base/database/TableEntity;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/base/database/CLVDatabase;->eVideoHide:Lcom/miui/video/base/database/DBUtils$IQueryListener;

    invoke-virtual {v2, v3}, Lcom/miui/video/base/database/TableEntity;->setQueryListener(Lcom/miui/video/base/database/DBUtils$IQueryListener;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/video/base/database/CLVDatabase;->query(Lcom/miui/video/base/database/TableEntity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_2
    return v0
.end method

.method protected onDataBaseCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/base/database/CLVDatabase;->getHistoryTable()Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/database/TableEntity;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/base/database/CLVDatabase;->runExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/miui/video/base/database/CLVDatabase;->getFavourTable()Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/database/TableEntity;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/base/database/CLVDatabase;->runExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/miui/video/base/database/CLVDatabase;->getVideoHideTable()Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/database/TableEntity;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/base/database/CLVDatabase;->runExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    return-void
.end method

.method protected onDataBaseDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method protected onDataBaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const v0, 0x133ee92

    invoke-static {v0, p2, p3}, Lcom/miui/video/base/database/CLVDatabase;->checkUpgradeVersion(III)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ALTER TABLE videohide ADD path TEXT"

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/base/database/CLVDatabase;->runExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    :cond_0
    const v0, 0x13414d0

    invoke-static {v0, p2, p3}, Lcom/miui/video/base/database/CLVDatabase;->checkUpgradeVersion(III)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "ALTER TABLE history ADD ref TEXT"

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/base/database/CLVDatabase;->runExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    const-string p2, "UPDATE history SET ref = \'com.miui.videoplayer\' WHERE _id is not NULL"

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/base/database/CLVDatabase;->runExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public queryHistoryEntityByMd5Path(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoHistoryEntity;
    .locals 1

    invoke-static {}, Lcom/miui/video/base/database/HistoryDaoUtil;->getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/HistoryDaoUtil;->queryLocalVideoHistoryByMd5Path(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public queryHistoryEntityByPath(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoHistoryEntity;
    .locals 1

    invoke-static {}, Lcom/miui/video/base/database/HistoryDaoUtil;->getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/video/framework/utils/CipherUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/HistoryDaoUtil;->queryLocalVideoHistoryByMd5Path(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public queryHistoryList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/LocalVideoEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/HistoryDaoUtil;->getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/database/HistoryDaoUtil;->queryAllLocalVideoHistory()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-static {v3}, Lcom/miui/video/base/database/CLVDatabase;->videoHistoryEntityToLocalVideoEntity(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)Lcom/miui/video/base/database/LocalVideoEntity;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryLocalVideoEntityByPath(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoEntity;
    .locals 1

    invoke-static {}, Lcom/miui/video/base/database/HistoryDaoUtil;->getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/video/framework/utils/CipherUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/HistoryDaoUtil;->queryLocalVideoHistoryByMd5Path(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-static {p1}, Lcom/miui/video/base/database/CLVDatabase;->videoHistoryEntityToLocalVideoEntity(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)Lcom/miui/video/base/database/LocalVideoEntity;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public queryLocalVideoTable()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/LocalVideoEntity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/video/base/database/CLVDatabase;->getLocalVideoTable()Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase;->eLocalVideo:Lcom/miui/video/base/database/DBUtils$IQueryListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->setQueryListener(Lcom/miui/video/base/database/DBUtils$IQueryListener;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/database/CLVDatabase;->queryUri(Lcom/miui/video/base/database/TableEntity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public queryPlayPosition(Ljava/lang/String;)J
    .locals 2

    invoke-static {p1}, Lcom/miui/video/framework/utils/CipherUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/CLVDatabase;->queryHistoryEntityByMd5Path(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getPlayProgress()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public queryVideoHideTable()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/LocalVideoEntity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/video/base/database/CLVDatabase;->getVideoHideTable()Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/database/CLVDatabase;->queryCount(Lcom/miui/video/base/database/TableEntity;)I

    invoke-direct {p0}, Lcom/miui/video/base/database/CLVDatabase;->getVideoHideTable()Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/base/database/CLVDatabase;->eVideoHide:Lcom/miui/video/base/database/DBUtils$IQueryListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/TableEntity;->setQueryListener(Lcom/miui/video/base/database/DBUtils$IQueryListener;)Lcom/miui/video/base/database/TableEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/database/CLVDatabase;->query(Lcom/miui/video/base/database/TableEntity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public saveLocalHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/database/CLVDatabase;->isHideVideo(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "DBUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setIs_hide(Z)V

    const-string v0, "DBUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLVDatabase saveLocalHistory insertLocalVideoHistory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isHide == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getIs_hide()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/base/database/HistoryDaoUtil;->getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/HistoryDaoUtil;->insertLocalVideoHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    return-void
.end method

.method public updatePlayPositionInfo(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setLast_play_time(J)V

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->isPlayComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setPlayProgress(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getPlayProgress()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getDuration()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/video/base/database/CLVDatabase;->calmpSavePositon(JJ)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setPlayProgress(I)V

    :goto_0
    return-void
.end method
