.class public Lcom/autonavi/its/protocol/log/chaos/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# static fields
.field public static final APP_INFO_LOG:Ljava/lang/String; = "appinfo"

.field public static final DOWNLOAD_CONFIGURE:Ljava/lang/String; = "downloadconfigure"

.field public static final UC_DOWNLOAD_INSTALL:Ljava/lang/String; = "uc_download_install"

.field private static mInstance:Lcom/autonavi/its/protocol/log/chaos/TaskManager;


# instance fields
.field private mTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/log/chaos/ITask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/its/protocol/log/chaos/TaskManager;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/log/chaos/TaskManager;-><init>()V

    sput-object v0, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->mInstance:Lcom/autonavi/its/protocol/log/chaos/TaskManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->mTasks:Ljava/util/List;

    return-void
.end method

.method private TaskManager()V
    .locals 0

    return-void
.end method

.method private getInitTask()Lcom/autonavi/its/protocol/log/chaos/ITask;
    .locals 1

    new-instance v0, Lcom/autonavi/its/protocol/log/chaos/task/DownLoadConfigureTask;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/log/chaos/task/DownLoadConfigureTask;-><init>()V

    return-object v0
.end method

.method public static instance()Lcom/autonavi/its/protocol/log/chaos/TaskManager;
    .locals 1

    sget-object v0, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->mInstance:Lcom/autonavi/its/protocol/log/chaos/TaskManager;

    return-object v0
.end method

.method private isTaskExistById(Lcom/autonavi/its/protocol/log/chaos/ITask;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->getTasks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/its/protocol/log/chaos/ITask;

    invoke-interface {v0}, Lcom/autonavi/its/protocol/log/chaos/ITask;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/autonavi/its/protocol/log/chaos/ITask;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setTasks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/log/chaos/ITask;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->mTasks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTask(Lcom/autonavi/its/protocol/log/chaos/ITask;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->isTaskExistById(Lcom/autonavi/its/protocol/log/chaos/ITask;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->getTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public deal()V
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->getTasks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->getTasks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/its/protocol/log/chaos/ITask;

    invoke-interface {v2}, Lcom/autonavi/its/protocol/log/chaos/ITask;->getTriggerStrategy()Lcom/autonavi/its/protocol/log/chaos/ITriggerStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/autonavi/its/protocol/log/chaos/ITriggerStrategy;->isTriggered()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/autonavi/its/protocol/log/chaos/ITask;->deal()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public delTask(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->getTasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/its/protocol/log/chaos/ITask;

    invoke-interface {v0}, Lcom/autonavi/its/protocol/log/chaos/ITask;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getTasks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/log/chaos/ITask;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->mTasks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->mTasks:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->mTasks:Ljava/util/List;

    :cond_1
    invoke-direct {p0}, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->getInitTask()Lcom/autonavi/its/protocol/log/chaos/ITask;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->mTasks:Ljava/util/List;

    invoke-direct {p0}, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->getInitTask()Lcom/autonavi/its/protocol/log/chaos/ITask;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->mTasks:Ljava/util/List;

    return-object v0
.end method

.method public updateConfigureTask()V
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->getTasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;->readConfiger()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;

    invoke-static {v0}, Lcom/autonavi/its/protocol/log/chaos/TaskFactory;->getTask(Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;)Lcom/autonavi/its/protocol/log/chaos/ITask;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->addTask(Lcom/autonavi/its/protocol/log/chaos/ITask;)V

    goto :goto_0

    :cond_0
    return-void
.end method
