.class public Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"

# interfaces
.implements Lcom/miui/video/base/common/impl/IState;


# static fields
.field private static final LIMIT_TASK_COUNT:I = 0x2

.field private static mInstance:Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;


# instance fields
.field private final _APK:Ljava/lang/String;

.field private eventTask:Lcom/miui/video/base/common/task/IDownloadTaskListener;

.field private final mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mTask:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/task/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/task/TaskEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".apk"

    iput-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->_APK:Ljava/lang/String;

    new-instance v0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils$1;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils$1;-><init>(Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->eventTask:Lcom/miui/video/base/common/task/IDownloadTaskListener;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTask:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTask:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTaskList:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTaskList:Ljava/util/List;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->cancelDownload(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->runTaskAuto()Z

    move-result p0

    return p0
.end method

.method private declared-synchronized cancelDownload(Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTask:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/base/common/task/DownloadTask;

    invoke-virtual {v4}, Lcom/miui/video/base/common/task/DownloadTask;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTask:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/common/task/DownloadTask;

    invoke-virtual {v0, v3}, Lcom/miui/video/base/common/task/DownloadTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTask:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTaskList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v5}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTaskList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v5}, Lcom/miui/video/base/common/task/TaskEntity;->getKeepKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p1, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTaskList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized checkTask(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTask:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/common/task/DownloadTask;

    invoke-virtual {v3}, Lcom/miui/video/base/common/task/DownloadTask;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mInstance:Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mInstance:Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;

    invoke-direct {v1}, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;-><init>()V

    sput-object v1, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mInstance:Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;

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
    sget-object v0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mInstance:Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;

    return-object v0
.end method

.method private declared-synchronized runTask(Lcom/miui/video/base/common/task/TaskEntity;Z)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTask:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    if-nez p2, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getKeepKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->checkTask(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    monitor-exit p0

    return v3

    :cond_2
    if-eqz p2, :cond_3

    :try_start_2
    invoke-virtual {p1, v3}, Lcom/miui/video/base/common/task/TaskEntity;->setGroup(I)V

    :cond_3
    invoke-virtual {p1, v2}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    new-instance p2, Lcom/miui/video/base/common/task/DownloadTask;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->eventTask:Lcom/miui/video/base/common/task/IDownloadTaskListener;

    invoke-direct {p2, p1, v1}, Lcom/miui/video/base/common/task/DownloadTask;-><init>(Lcom/miui/video/base/common/task/TaskEntity;Lcom/miui/video/base/common/task/IDownloadTaskListener;)V

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_11_HONEYCOMB()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mExecutor:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/miui/video/base/common/task/DownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/miui/video/base/common/task/DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTask:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    :goto_1
    monitor-exit p0

    return v0
.end method

.method private declared-synchronized runTaskAuto()Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTaskList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTaskList:Ljava/util/List;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v5, p0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTaskList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v5}, Lcom/miui/video/base/common/task/TaskEntity;->getGroup()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/miui/video/base/common/task/TaskEntity;->getState()I

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, v5, v1}, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->runTask(Lcom/miui/video/base/common/task/TaskEntity;Z)Z

    move-result v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v4

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public startDownloadApk(Ljava/lang/String;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z
    .locals 17

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/miui/video/framework/utils/CipherUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v12, Lcom/miui/video/base/common/entity/FileEntity;

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/framework/FrameworkConfig;->getApkPath()Ljava/lang/String;

    move-result-object v5

    const-string v7, ".apk"

    const/4 v8, 0x0

    move-object v3, v12

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/miui/video/base/common/entity/FileEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v12}, Lcom/miui/video/base/common/entity/FileEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->checkTask(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v12}, Lcom/miui/video/base/common/entity/FileEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v2}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v11

    invoke-virtual {v12}, Lcom/miui/video/base/common/entity/FileEntity;->getUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, -0x1

    const/4 v13, 0x0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    invoke-static/range {v7 .. v16}, Lcom/miui/video/base/common/task/TaskUtils;->getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/video/base/common/task/TaskEntity;->setGroup(I)V

    iget-object v3, v0, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->mTaskList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v1, v2}, Lcom/miui/video/player/service/localvideo/utils/DownloadUtils;->runTask(Lcom/miui/video/base/common/task/TaskEntity;Z)Z

    move-result v1

    return v1

    :cond_1
    return v2
.end method
