.class public final Lcom/google/android/exoplayer2/offline/DownloadManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_MAX_SIMULTANEOUS_DOWNLOADS:I = 0x1

.field public static final DEFAULT_MIN_RETRY_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DownloadManager"


# instance fields
.field private final actionFile:Lcom/google/android/exoplayer2/offline/ActionFile;

.field private final activeDownloadTasks:Ljava/util/ArrayList;

.field private final deserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

.field private final downloaderConstructorHelper:Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;

.field private downloadsStopped:Z

.field private final fileIOHandler:Landroid/os/Handler;

.field private final fileIOThread:Landroid/os/HandlerThread;

.field private final handler:Landroid/os/Handler;

.field private initialized:Z

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final maxActiveDownloadTasks:I

.field private final minRetryCount:I

.field private nextTaskId:I

.field private released:Z

.field private final tasks:Ljava/util/ArrayList;


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;IILjava/io/File;[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v2, p5

    if-gtz v2, :cond_0

    :goto_0
    const-string/jumbo v2, "At least one Deserializer is required."

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloaderConstructorHelper:Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;

    iput p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->maxActiveDownloadTasks:I

    iput p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->minRetryCount:I

    new-instance v0, Lcom/google/android/exoplayer2/offline/ActionFile;

    invoke-direct {v0, p4}, Lcom/google/android/exoplayer2/offline/ActionFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->actionFile:Lcom/google/android/exoplayer2/offline/ActionFile;

    iput-object p5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->deserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->handler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DownloadManager file i/o"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->fileIOThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->fileIOThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->fileIOThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->fileIOHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->loadActions()V

    const-string/jumbo v0, "Created"

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_1
.end method

.method public varargs constructor <init>(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;Ljava/io/File;[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/offline/DownloadManager;-><init>(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;IILjava/io/File;[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/io/File;[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;)V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/exoplayer2/offline/DownloadManager;-><init>(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;Ljava/io/File;[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;)V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/offline/DownloadManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/offline/DownloadManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/DownloadAction;)Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->addTaskForAction(Lcom/google/android/exoplayer2/offline/DownloadAction;)Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/android/exoplayer2/offline/DownloadManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->initialized:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/offline/DownloadManager;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->saveActions()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->maybeStartTasks()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->notifyListenersTaskStateChange(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/offline/DownloadManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->onTaskStateChange(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/offline/DownloadManager;)Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloaderConstructorHelper:Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/offline/DownloadManager;)[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->deserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/offline/DownloadManager;)Lcom/google/android/exoplayer2/offline/ActionFile;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->actionFile:Lcom/google/android/exoplayer2/offline/ActionFile;

    return-object v0
.end method

.method private addTaskForAction(Lcom/google/android/exoplayer2/offline/DownloadAction;)Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    .locals 6

    new-instance v0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    iget v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->nextTaskId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->nextTaskId:I

    iget v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->minRetryCount:I

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;-><init>(ILcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/DownloadAction;ILcom/google/android/exoplayer2/offline/DownloadManager$1;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "Task is added"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    return-object v0
.end method

.method private loadActions()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->fileIOHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadManager$2;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$2;-><init>(Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static logd(Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private maybeNotifyListenersIdle()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Notify idle state"

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onIdle(Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    goto :goto_0
.end method

.method private maybeStartTasks()V
    .locals 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->initialized:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    if-eqz v0, :cond_3

    :cond_2
    move v0, v3

    :goto_0
    move v4, v2

    move v5, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_4

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->maxActiveDownloadTasks:I

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$500(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$300(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadAction;

    move-result-object v8

    iget-boolean v9, v8, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    if-eqz v9, :cond_7

    :cond_5
    move v7, v2

    move v6, v3

    :goto_2
    if-lt v7, v4, :cond_8

    :goto_3
    if-nez v6, :cond_c

    move v1, v5

    :goto_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v5, v1

    goto :goto_1

    :cond_6
    move v1, v5

    goto :goto_4

    :cond_7
    if-eqz v5, :cond_5

    move v1, v5

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$300(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadAction;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/android/exoplayer2/offline/DownloadAction;->isSameMedia(Lcom/google/android/exoplayer2/offline/DownloadAction;)Z

    move-result v10

    if-nez v10, :cond_9

    move v1, v6

    :goto_5
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v1

    goto :goto_2

    :cond_9
    if-nez v9, :cond_a

    invoke-static {v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$300(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadAction;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    if-nez v1, :cond_b

    move v1, v6

    goto :goto_5

    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, " clashes with "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$600(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    move v1, v2

    goto :goto_5

    :cond_b
    move v6, v2

    move v5, v3

    goto :goto_3

    :cond_c
    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$700(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    if-eqz v9, :cond_d

    move v1, v5

    goto :goto_4

    :cond_d
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->maxActiveDownloadTasks:I

    if-eq v0, v1, :cond_e

    move v0, v2

    :goto_6
    move v1, v0

    goto :goto_4

    :cond_e
    move v0, v3

    goto :goto_6
.end method

.method private notifyListenersTaskStateChange(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .locals 3

    const-string/jumbo v0, "Task state is changed"

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->getDownloadState()Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    invoke-interface {v0, p0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onTaskStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;)V

    goto :goto_0
.end method

.method private onTaskStateChange(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->notifyListenersTaskStateChange(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_2
    if-nez v0, :cond_4

    :goto_3
    return-void

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->saveActions()V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->maybeStartTasks()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->maybeNotifyListenersIdle()V

    goto :goto_3
.end method

.method private saveActions()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lcom/google/android/exoplayer2/offline/DownloadAction;

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->fileIOHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadManager$3;

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$3;-><init>(Lcom/google/android/exoplayer2/offline/DownloadManager;[Lcom/google/android/exoplayer2/offline/DownloadAction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$300(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadAction;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAllTaskStates()[Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;

    :goto_1
    array-length v0, v2

    if-lt v1, v0, :cond_1

    return-object v2

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->getDownloadState()Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getDownloadCount()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$300(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadAction;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    if-eqz v0, :cond_1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getTaskCount()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTaskState(I)Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$200(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)I

    move-result v2

    if-eq v2, p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->getDownloadState()Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;

    move-result-object v0

    return-object v0
.end method

.method public handleAction(Lcom/google/android/exoplayer2/offline/DownloadAction;)I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v1, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->addTaskForAction(Lcom/google/android/exoplayer2/offline/DownloadAction;)Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->initialized:Z

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$200(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->saveActions()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->maybeStartTasks()V

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$100(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->notifyListenersTaskStateChange(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    goto :goto_1
.end method

.method public handleAction([B)I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->deserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/offline/DownloadAction;->deserializeFromStream([Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/offline/DownloadAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->handleAction(Lcom/google/android/exoplayer2/offline/DownloadAction;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->initialized:Z

    if-eqz v0, :cond_1

    move v3, v1

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_2

    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isActive()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    return v1
.end method

.method public isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->initialized:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->fileIOHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer2/offline/DownloadManager$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$1;-><init>(Lcom/google/android/exoplayer2/offline/DownloadManager;Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->fileIOThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const-string/jumbo v0, "Released"

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public removeListener(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public startDownloads()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->maybeStartTasks()V

    const-string/jumbo v0, "Downloads are started"

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopDownloads()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    const-string/jumbo v0, "Downloads are stopping"

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
