.class public Lcom/miui/video/base/common/task/DownloadTask;
.super Landroid/os/AsyncTask;
.source "DownloadTask.java"

# interfaces
.implements Lcom/miui/video/base/common/impl/IState;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/miui/video/base/common/task/TaskEntity;",
        ">;",
        "Lcom/miui/video/base/common/impl/IState;"
    }
.end annotation


# static fields
.field public static final LEVEL_DEFALUT:I = 0x0

.field public static final LEVEL_HIGH:I = 0x1

.field public static final LEVEL_LOWEST:I = -0x1

.field public static final TYPE_DOWNLOAD_FILE:I = 0x3

.field public static final TYPE_DOWNLOAD_FILE_LIST:I = 0x4

.field public static final TYPE_DO_IN_BACKGROUND:I = 0x5

.field public static final TYPE_OPEN_URL_GET:I = 0x1

.field public static final TYPE_OPEN_URL_POST:I = 0x2

.field public static final TYPE_UNKNOWN:I

.field private static mBuffer:I


# instance fields
.field private mCaneclListener:Lcom/miui/video/base/common/impl/ICancelListener;

.field private mId:J

.field private mPriority:I

.field private mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

.field private mTaskListener:Lcom/miui/video/base/common/task/IDownloadTaskListener;

.field private mUIListener:Lcom/miui/video/base/common/impl/IUIListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getConnectBuffer()I

    move-result v0

    sput v0, Lcom/miui/video/base/common/task/DownloadTask;->mBuffer:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/base/common/task/TaskEntity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/base/common/task/DownloadTask;-><init>(Lcom/miui/video/base/common/task/TaskEntity;Lcom/miui/video/base/common/task/IDownloadTaskListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/base/common/task/TaskEntity;Lcom/miui/video/base/common/task/IDownloadTaskListener;)V
    .locals 8

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mPriority:I

    new-instance v1, Lcom/miui/video/base/common/task/DownloadTask$1;

    invoke-direct {v1, p0}, Lcom/miui/video/base/common/task/DownloadTask$1;-><init>(Lcom/miui/video/base/common/task/DownloadTask;)V

    iput-object v1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mCaneclListener:Lcom/miui/video/base/common/impl/ICancelListener;

    new-instance v1, Lcom/miui/video/base/common/task/DownloadTask$2;

    invoke-direct {v1, p0}, Lcom/miui/video/base/common/task/DownloadTask$2;-><init>(Lcom/miui/video/base/common/task/DownloadTask;)V

    iput-object v1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mUIListener:Lcom/miui/video/base/common/impl/IUIListener;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/video/base/common/task/TaskEntity;

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/miui/video/base/common/task/TaskEntity;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    iput-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    :goto_0
    iput-object p2, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskListener:Lcom/miui/video/base/common/task/IDownloadTaskListener;

    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getLevel()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iput v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mPriority:I

    goto :goto_1

    :cond_1
    const/4 p1, -0x2

    iput p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mPriority:I

    goto :goto_1

    :cond_2
    const/16 p1, 0x13

    iput p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mPriority:I

    :goto_1
    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/framework/FrameworkConfig;->getConnectBuffer()I

    move-result p1

    sput p1, Lcom/miui/video/base/common/task/DownloadTask;->mBuffer:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/base/common/task/DownloadTask;)Lcom/miui/video/base/common/task/TaskEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/base/common/task/DownloadTask;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/common/task/DownloadTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private loadCacheFile(Lcom/miui/video/base/common/entity/FileEntity;)Ljava/io/File;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getCache()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/base/common/entity/FileEntity;->setCache(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getState()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Lcom/miui/video/base/common/entity/FileEntity;->setSize(I)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/common/entity/FileEntity;->setDownloadSize(J)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getCache()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getCache()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getExtName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getCache()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getExtName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getDownloadSize()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/video/base/common/entity/FileEntity;->setDownloadSize(J)V

    :cond_4
    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getDownloadSize()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getSize()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V

    invoke-direct {p0, p1}, Lcom/miui/video/base/common/task/DownloadTask;->loadFile(Lcom/miui/video/base/common/entity/FileEntity;)Ljava/io/File;

    move-result-object v0

    :cond_6
    :goto_0
    const-string v1, "loadCacheFile"

    if-nez v0, :cond_7

    const-string p1, "file= null"

    goto :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  getState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  getSize= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  getDownloadSize= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getDownloadSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private loadFile(Lcom/miui/video/base/common/entity/FileEntity;)Ljava/io/File;
    .locals 5

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getState()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/miui/video/base/common/entity/FileEntity;->setSize(I)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/common/entity/FileEntity;->setDownloadSize(J)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getExtName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getExtName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getDownloadSize()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/video/base/common/entity/FileEntity;->setDownloadSize(J)V

    :cond_2
    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getDownloadSize()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getSize()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V

    invoke-direct {p0, p1}, Lcom/miui/video/base/common/task/DownloadTask;->loadFile(Lcom/miui/video/base/common/entity/FileEntity;)Ljava/io/File;

    move-result-object v0

    :cond_4
    :goto_0
    const-string v1, "loadFile"

    if-nez v0, :cond_5

    const-string p1, "file= null"

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  getState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  getSize= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  getDownloadSize= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getDownloadSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private runBackgroundTask()V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/video/base/common/task/DownloadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/common/task/TaskEntity;->getTaskToDo()Lcom/miui/video/base/common/impl/ITaskToDo;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/video/base/common/impl/IBackgroundToDo;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/video/base/common/impl/IBackgroundToDo;

    iget-object v1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    iget-object v2, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/common/task/TaskEntity;->getInEntity()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/base/common/task/DownloadTask;->mCaneclListener:Lcom/miui/video/base/common/impl/ICancelListener;

    iget-object v5, p0, Lcom/miui/video/base/common/task/DownloadTask;->mUIListener:Lcom/miui/video/base/common/impl/IUIListener;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/miui/video/base/common/impl/IBackgroundToDo;->runBackground(Ljava/lang/String;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ICancelListener;Lcom/miui/video/base/common/impl/IUIListener;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/video/base/common/task/TaskEntity;->setOutEntity(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    :goto_0
    return-void
.end method

.method private runDownloadFile()V
    .locals 13

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/common/task/TaskEntity;->getConEntity()Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/common/task/TaskEntity;->getFileEntity()Lcom/miui/video/base/common/entity/FileEntity;

    move-result-object v1

    const/16 v2, 0xa

    if-eqz v0, :cond_8

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/base/common/net/ConnectEntity;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    return-void

    :cond_1
    new-instance v9, Lcom/miui/video/base/common/net/Connect;

    invoke-direct {v9}, Lcom/miui/video/base/common/net/Connect;-><init>()V

    const/4 v10, 0x2

    :try_start_0
    invoke-direct {p0, v1}, Lcom/miui/video/base/common/task/DownloadTask;->loadCacheFile(Lcom/miui/video/base/common/entity/FileEntity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/video/base/common/entity/FileEntity;->getDownloadSize()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/miui/video/base/common/net/ConnectEntity;->setRequestByteIndex(I)V

    invoke-static {v9, v0}, Lcom/miui/video/base/common/net/ConnectUtils;->openGetUrl(Lcom/miui/video/base/common/net/Connect;Lcom/miui/video/base/common/net/ConnectEntity;)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/miui/video/base/common/task/DownloadTask;->isCancelled()Z

    move-result v0

    const/4 v4, 0x5

    if-nez v0, :cond_5

    invoke-virtual {v11}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v0

    if-ne v4, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v11}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v0

    const/4 v12, 0x1

    if-ne v12, v0, :cond_4

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V

    invoke-virtual {v11}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {v1, v0}, Lcom/miui/video/base/common/entity/FileEntity;->setSize(I)V

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/common/task/TaskEntity;->getTaskToDo()Lcom/miui/video/base/common/impl/ITaskToDo;

    move-result-object v0

    instance-of v2, v0, Lcom/miui/video/base/common/impl/IDownloadToDo;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lcom/miui/video/base/common/impl/IDownloadToDo;

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    iget-object v3, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v4, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v4}, Lcom/miui/video/base/common/task/TaskEntity;->getInEntity()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/video/base/common/task/DownloadTask;->mCaneclListener:Lcom/miui/video/base/common/impl/ICancelListener;

    iget-object v8, p0, Lcom/miui/video/base/common/task/DownloadTask;->mUIListener:Lcom/miui/video/base/common/impl/IUIListener;

    move-object v4, v1

    invoke-interface/range {v2 .. v8}, Lcom/miui/video/base/common/impl/IDownloadToDo;->runDownload(Ljava/lang/String;Lcom/miui/video/base/common/entity/FileEntity;Ljava/io/InputStream;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ICancelListener;Lcom/miui/video/base/common/impl/IUIListener;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/video/base/common/task/TaskEntity;->setOutEntity(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v11}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v1, v0, v3}, Lcom/miui/video/base/common/task/DownloadTask;->saveFile(Lcom/miui/video/base/common/entity/FileEntity;Ljava/io/InputStream;Ljava/io/File;)Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Lcom/miui/video/base/common/entity/FileEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/miui/video/framework/utils/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    :goto_0
    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0, v12}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v10}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0, v2}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v1, v10}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0, v4}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-eqz v11, :cond_6

    :try_start_2
    invoke-virtual {v11}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v11}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    :goto_3
    invoke-static {p0, v0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    invoke-virtual {v9}, Lcom/miui/video/base/common/net/Connect;->close()V

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v1

    move-object v11, v0

    move-object v0, v1

    goto :goto_7

    :catch_2
    move-exception v2

    move-object v11, v0

    move-object v0, v2

    :goto_5
    :try_start_3
    invoke-static {p0, v0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v10}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v11, :cond_6

    :try_start_4
    invoke-virtual {v11}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v11}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :goto_6
    return-void

    :catchall_1
    move-exception v0

    :goto_7
    if-eqz v11, :cond_7

    :try_start_5
    invoke-virtual {v11}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v11}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    :catch_4
    move-exception v1

    invoke-static {p0, v1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_7
    :goto_8
    invoke-virtual {v9}, Lcom/miui/video/base/common/net/Connect;->close()V

    throw v0

    :cond_8
    :goto_9
    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0, v2}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    return-void
.end method

.method private runDownloadFileList()V
    .locals 23

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/common/task/TaskEntity;->getFileEntity()Lcom/miui/video/base/common/entity/FileEntity;

    move-result-object v2

    iget-object v0, v1, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/common/task/TaskEntity;->getFileList()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v2, :cond_b

    invoke-static {v3}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    new-instance v5, Lcom/miui/video/base/common/net/Connect;

    invoke-direct {v5}, Lcom/miui/video/base/common/net/Connect;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v10, v8

    move-object v11, v10

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_9

    const/4 v14, 0x2

    :try_start_0
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/miui/video/base/common/entity/FileEntity;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v15}, Lcom/miui/video/base/common/entity/FileEntity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v15, v14}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v10, :cond_1

    :try_start_2
    invoke-virtual {v10}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v10}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    :goto_1
    move-object v10, v8

    :goto_2
    move-object v11, v15

    goto/16 :goto_9

    :cond_2
    :try_start_3
    invoke-direct {v1, v15}, Lcom/miui/video/base/common/task/DownloadTask;->loadCacheFile(Lcom/miui/video/base/common/entity/FileEntity;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v15}, Lcom/miui/video/base/common/entity/FileEntity;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15}, Lcom/miui/video/base/common/entity/FileEntity;->getDownloadSize()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v11, v8, v12, v7}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v5, v11}, Lcom/miui/video/base/common/net/ConnectUtils;->openGetUrl(Lcom/miui/video/base/common/net/Connect;Lcom/miui/video/base/common/net/ConnectEntity;)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/base/common/task/DownloadTask;->isCancelled()Z

    move-result v11

    const/4 v12, 0x5

    if-nez v11, :cond_6

    invoke-virtual {v10}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v11

    if-ne v12, v11, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v10}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v12, v11, :cond_5

    const/4 v11, 0x3

    invoke-virtual {v15, v11}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V

    invoke-virtual {v10}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentLength()J

    move-result-wide v11

    long-to-int v11, v11

    invoke-virtual {v15, v11}, Lcom/miui/video/base/common/entity/FileEntity;->setSize(I)V

    iget-object v11, v1, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v11}, Lcom/miui/video/base/common/task/TaskEntity;->getTaskToDo()Lcom/miui/video/base/common/impl/ITaskToDo;

    move-result-object v11

    instance-of v12, v11, Lcom/miui/video/base/common/impl/IDownloadToDo;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v12, :cond_4

    :try_start_6
    move-object v0, v11

    check-cast v0, Lcom/miui/video/base/common/impl/IDownloadToDo;

    iget-object v11, v1, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    iget-object v12, v1, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v12}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v10}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v18

    iget-object v12, v1, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v12}, Lcom/miui/video/base/common/task/TaskEntity;->getInEntity()Ljava/lang/Object;

    move-result-object v19

    iget-object v12, v1, Lcom/miui/video/base/common/task/DownloadTask;->mCaneclListener:Lcom/miui/video/base/common/impl/ICancelListener;

    iget-object v13, v1, Lcom/miui/video/base/common/task/DownloadTask;->mUIListener:Lcom/miui/video/base/common/impl/IUIListener;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v22, v15

    move-object v15, v0

    move-object/from16 v17, v22

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    :try_start_7
    invoke-interface/range {v15 .. v21}, Lcom/miui/video/base/common/impl/IDownloadToDo;->runDownload(Ljava/lang/String;Lcom/miui/video/base/common/entity/FileEntity;Ljava/io/InputStream;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ICancelListener;Lcom/miui/video/base/common/impl/IUIListener;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/miui/video/base/common/task/TaskEntity;->setOutEntity(Ljava/lang/Object;)V

    move-object/from16 v13, v22

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v22, v15

    :goto_3
    move-object/from16 v13, v22

    goto/16 :goto_6

    :cond_4
    move-object/from16 v22, v15

    invoke-virtual {v10}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v11
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v13, v22

    :try_start_8
    invoke-direct {v1, v13, v11, v0}, Lcom/miui/video/base/common/task/DownloadTask;->saveFile(Lcom/miui/video/base/common/entity/FileEntity;Ljava/io/InputStream;Ljava/io/File;)Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/miui/video/base/common/entity/FileEntity;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/miui/video/base/common/entity/FileEntity;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/miui/video/base/common/entity/FileEntity;->getExtName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/miui/video/framework/utils/FileUtils;->moveFile(Ljava/io/File;Ljava/lang/String;)Z

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_5
    move-object v13, v15

    invoke-virtual {v13, v14}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V

    iget-object v0, v1, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0, v4}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_4
    if-eqz v10, :cond_7

    :try_start_9
    invoke-virtual {v10}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v10}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :cond_6
    :goto_5
    move-object v13, v15

    :try_start_a
    invoke-virtual {v13, v14}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V

    iget-object v0, v1, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0, v12}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v10, :cond_9

    :try_start_b
    invoke-virtual {v10}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v10}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_c

    :catch_3
    move-exception v0

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v10, v11

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v13, v15

    move-object v10, v11

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v13, v15

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v13, v11

    :goto_6
    :try_start_c
    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v13, v14}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V

    iget-object v0, v1, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0, v4}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v10, :cond_7

    :try_start_d
    invoke-virtual {v10}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v10}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_7

    :catch_8
    move-exception v0

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_7
    :goto_7
    move-object v10, v8

    :goto_8
    move-object v11, v13

    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :goto_a
    if-eqz v10, :cond_8

    :try_start_e
    invoke-virtual {v10}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v10}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_b

    :catch_9
    move-exception v0

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_8
    :goto_b
    throw v2

    :cond_9
    :goto_c
    iget-object v0, v1, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/common/task/TaskEntity;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_a

    iget-object v0, v1, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    :cond_a
    invoke-virtual {v5}, Lcom/miui/video/base/common/net/Connect;->close()V

    return-void

    :cond_b
    :goto_d
    iget-object v0, v1, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0, v4}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    return-void
.end method

.method private runOpenUrl(I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/common/task/TaskEntity;->getConEntity()Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {p1, v1}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/base/common/net/ConnectEntity;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v3, p1, :cond_2

    invoke-static {v0}, Lcom/miui/video/base/common/net/ConnectUtils;->openGetUrl(Lcom/miui/video/base/common/net/ConnectEntity;)[B

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne v4, p1, :cond_3

    invoke-static {v0}, Lcom/miui/video/base/common/net/ConnectUtils;->openPostUrl(Lcom/miui/video/base/common/net/ConnectEntity;)[B

    move-result-object v2

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/base/common/task/DownloadTask;->isCancelled()Z

    move-result p1

    const/4 v4, 0x5

    if-nez p1, :cond_a

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result p1

    if-ne v4, p1, :cond_4

    goto/16 :goto_2

    :cond_4
    if-nez v2, :cond_5

    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {p1, v1}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result p1

    if-ne v3, p1, :cond_9

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/framework/FrameworkConfig;->isLogAll()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "runOpenUrl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/miui/video/base/common/task/DownloadTask;->mId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  result= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_6

    const-string v1, "null"

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getTaskToDo()Lcom/miui/video/base/common/impl/ITaskToDo;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/video/base/common/impl/IParserToDo;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/miui/video/base/common/impl/IParserToDo;

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    iget-object v1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v4}, Lcom/miui/video/base/common/task/TaskEntity;->getInEntity()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v1, v2, v4}, Lcom/miui/video/base/common/impl/IParserToDo;->runParser(Ljava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/base/common/task/TaskEntity;->setOutEntity(Ljava/lang/Object;)V

    :cond_8
    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {p1, v3}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    goto :goto_3

    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {p1, v4}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    :goto_3
    return-void
.end method

.method private saveFile(Lcom/miui/video/base/common/entity/FileEntity;Ljava/io/InputStream;Ljava/io/File;)Ljava/io/File;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, p3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V

    sget v2, Lcom/miui/video/base/common/task/DownloadTask;->mBuffer:I

    new-array v2, v2, [B

    const-wide/16 v3, 0x0

    :cond_1
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getDownloadSize()J

    move-result-wide v6

    int-to-long v8, v5

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7}, Lcom/miui/video/base/common/entity/FileEntity;->setDownloadSize(J)V

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/video/framework/FrameworkConfig;->isLogAll()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getSize()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getDownloadSize()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    mul-long v5, v5, v7

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getSize()I

    move-result v7

    int-to-long v7, v7

    div-long/2addr v5, v7

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const-string v3, "saveFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getName= "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  save= "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " / 10  [ "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getDownloadSize()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/FileEntity;->getSize()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v3, v5

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/base/common/task/DownloadTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-object p3

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/miui/video/base/common/entity/FileEntity;->setState(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-object p3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    :goto_1
    throw p1

    :cond_5
    :goto_2
    return-object p3
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/miui/video/base/common/task/TaskEntity;
    .locals 3

    iget p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mPriority:I

    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mId:J

    const-string p1, "doInBackground"

    invoke-virtual {p0}, Lcom/miui/video/base/common/task/DownloadTask;->getLog()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    const/16 v0, 0xa

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getState()I

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/base/common/task/DownloadTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x5

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getType()I

    move-result p1

    const/4 v2, 0x1

    if-ne v2, p1, :cond_2

    invoke-direct {p0, v2}, Lcom/miui/video/base/common/task/DownloadTask;->runOpenUrl(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getType()I

    move-result p1

    const/4 v2, 0x2

    if-ne v2, p1, :cond_3

    invoke-direct {p0, v2}, Lcom/miui/video/base/common/task/DownloadTask;->runOpenUrl(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getType()I

    move-result p1

    if-ne v1, p1, :cond_4

    invoke-direct {p0}, Lcom/miui/video/base/common/task/DownloadTask;->runDownloadFile()V

    goto :goto_0

    :cond_4
    const/4 p1, 0x4

    iget-object v1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/common/task/TaskEntity;->getType()I

    move-result v1

    if-ne p1, v1, :cond_5

    invoke-direct {p0}, Lcom/miui/video/base/common/task/DownloadTask;->runDownloadFileList()V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getType()I

    move-result p1

    if-ne v0, p1, :cond_6

    invoke-direct {p0}, Lcom/miui/video/base/common/task/DownloadTask;->runBackgroundTask()V

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    return-object p1

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/common/task/DownloadTask;->doInBackground([Ljava/lang/Object;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object p1

    return-object p1
.end method

.method public getAction()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/common/task/TaskEntity;->getKeepKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLog()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Thread= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, "  Action= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "  State= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/common/task/TaskEntity;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "  Entity= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/common/task/TaskEntity;->getConEntity()Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/common/task/TaskEntity;->getConEntity()Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/net/ConnectEntity;->setState(I)V

    :cond_0
    const-string v0, "onCancelled"

    invoke-virtual {p0}, Lcom/miui/video/base/common/task/DownloadTask;->getLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskListener:Lcom/miui/video/base/common/task/IDownloadTaskListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskListener:Lcom/miui/video/base/common/task/IDownloadTaskListener;

    iget-object v1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-interface {v0, v1}, Lcom/miui/video/base/common/task/IDownloadTaskListener;->onDownloadError(Lcom/miui/video/base/common/task/TaskEntity;)V

    :cond_1
    return-void
.end method

.method protected onPostExecute(Lcom/miui/video/base/common/task/TaskEntity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string p1, "onPostExecute"

    invoke-virtual {p0}, Lcom/miui/video/base/common/task/DownloadTask;->getLog()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskListener:Lcom/miui/video/base/common/task/IDownloadTaskListener;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/common/task/TaskEntity;->getState()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskListener:Lcom/miui/video/base/common/task/IDownloadTaskListener;

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-interface {p1, v0}, Lcom/miui/video/base/common/task/IDownloadTaskListener;->onDownloadFinished(Lcom/miui/video/base/common/task/TaskEntity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskListener:Lcom/miui/video/base/common/task/IDownloadTaskListener;

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-interface {p1, v0}, Lcom/miui/video/base/common/task/IDownloadTaskListener;->onDownloadError(Lcom/miui/video/base/common/task/TaskEntity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/base/common/task/DownloadTask;->onPostExecute(Lcom/miui/video/base/common/task/TaskEntity;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    const-string v0, "onPreExecute"

    invoke-virtual {p0}, Lcom/miui/video/base/common/task/DownloadTask;->getLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskListener:Lcom/miui/video/base/common/task/IDownloadTaskListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskListener:Lcom/miui/video/base/common/task/IDownloadTaskListener;

    iget-object v1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    invoke-interface {v0, v1}, Lcom/miui/video/base/common/task/IDownloadTaskListener;->onDownloadBegin(Lcom/miui/video/base/common/task/TaskEntity;)V

    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskListener:Lcom/miui/video/base/common/task/IDownloadTaskListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v2, p1, v0

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget-object v3, p1, v2

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    const-string v3, "onProgressUpdate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/base/common/task/DownloadTask;->getLog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  values= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskListener:Lcom/miui/video/base/common/task/IDownloadTaskListener;

    iget-object v4, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskEntity:Lcom/miui/video/base/common/task/TaskEntity;

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p1, p1, v1

    invoke-interface {v3, v4, v0, v2, p1}, Lcom/miui/video/base/common/task/IDownloadTaskListener;->onDownloadProgress(Lcom/miui/video/base/common/task/TaskEntity;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setTaskListener(Lcom/miui/video/base/common/task/IDownloadTaskListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/task/DownloadTask;->mTaskListener:Lcom/miui/video/base/common/task/IDownloadTaskListener;

    return-void
.end method
