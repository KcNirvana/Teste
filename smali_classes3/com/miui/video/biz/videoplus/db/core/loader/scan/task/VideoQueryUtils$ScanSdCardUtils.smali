.class Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;
.super Ljava/lang/Object;
.source "VideoQueryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanSdCardUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils$Holder;
    }
.end annotation


# static fields
.field private static final LIMIT_SDCARD_SCAN:I = 0x3

.field private static final VIDEO_TYPE:Ljava/lang/String; = "video/mp4"


# instance fields
.field private isScanning:Z

.field private scanFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->isScanning:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->scanFiles:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils$Holder;->INSTANCE:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;

    return-object v0
.end method

.method public static synthetic lambda$scanSdCardVideos$3(Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    const-string v0, "VideoQueryUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanCompleted: s = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " ,scanFiles = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->scanFiles:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->scanFiles:Ljava/util/Set;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->scanFiles:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->scanFiles:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->scanFiles:Ljava/util/Set;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->scanFiles:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->isScanning:Z

    :cond_1
    return-void
.end method

.method private scanSdCard(Ljava/io/File;)V
    .locals 7

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->shouldContinueLoop(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "VideoQueryUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scanSdCard: directory = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->scanSdCard(Ljava/io/File;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x200000

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    invoke-static {v2}, Lcom/miui/video/framework/utils/FileUtils;->isVideo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->scanFiles:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private shouldContinueLoop(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "emulated/0/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    return v1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public scanSdCardVideos(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->isScanning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->isScanning:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->loadVideoByModifyTime()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/video/framework/utils/CacheUtils;->isExistsSdcard()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_21_LOLLIPOP()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/StorageUtils;->isExternalSdcardMounted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/StorageUtils;->getExternalSdCardRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/framework/utils/StorageUtils;->getExternalSdCardRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->scanSdCard(Ljava/io/File;)V

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->scanSdCard(Ljava/io/File;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->scanFiles:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_3

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->isScanning:Z

    return-void

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->scanFiles:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_4
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->scanFiles:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->scanFiles:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->scanFiles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_5

    const-string v3, "video/mp4"

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const-string v2, "VideoQueryUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanSdCardVideos: scanFileArray = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/-$$Lambda$VideoQueryUtils$ScanSdCardUtils$36EcWA0H0_-UgGlz-wQH7hU8RtQ;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/-$$Lambda$VideoQueryUtils$ScanSdCardUtils$36EcWA0H0_-UgGlz-wQH7hU8RtQ;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;)V

    invoke-static {v2, p1, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_2

    :cond_6
    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->isScanning:Z

    goto :goto_2

    :cond_7
    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->isScanning:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->isScanning:Z

    :goto_2
    return-void
.end method
