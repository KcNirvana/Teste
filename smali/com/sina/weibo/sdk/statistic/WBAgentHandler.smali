.class Lcom/sina/weibo/sdk/statistic/WBAgentHandler;
.super Ljava/lang/Object;
.source "WBAgentHandler.java"


# static fields
.field private static MAX_CACHE_SIZE:I

.field private static mActivePages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/statistic/PageLog;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/sina/weibo/sdk/statistic/WBAgentHandler;

.field private static mPages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sina/weibo/sdk/statistic/PageLog;",
            ">;"
        }
    .end annotation
.end field

.field private static mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->MAX_CACHE_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mPages:Ljava/util/Map;

    const-string/jumbo v0, "WBAgent"

    const-string/jumbo v1, "init handler"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/statistic/WBAgentHandler;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->getLogsInMemory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkAppStatus(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->isBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->saveActivePages(Ljava/util/List;)V

    sget-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private checkNewSession(Landroid/content/Context;J)V
    .locals 8

    invoke-static {p1, p2, p3}, Lcom/sina/weibo/sdk/statistic/PageLog;->isNewSession(Landroid/content/Context;J)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/sina/weibo/sdk/statistic/PageLog;

    invoke-direct {v1, p1}, Lcom/sina/weibo/sdk/statistic/PageLog;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/sina/weibo/sdk/statistic/LogType;->SESSION_END:Lcom/sina/weibo/sdk/statistic/LogType;

    invoke-virtual {v1, v2}, Lcom/sina/weibo/sdk/statistic/PageLog;->setType(Lcom/sina/weibo/sdk/statistic/LogType;)V

    new-instance v0, Lcom/sina/weibo/sdk/statistic/PageLog;

    invoke-direct {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/statistic/PageLog;-><init>(Landroid/content/Context;J)V

    sget-object v2, Lcom/sina/weibo/sdk/statistic/LogType;->SESSION_START:Lcom/sina/weibo/sdk/statistic/LogType;

    invoke-virtual {v0, v2}, Lcom/sina/weibo/sdk/statistic/PageLog;->setType(Lcom/sina/weibo/sdk/statistic/LogType;)V

    sget-object v3, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v1}, Lcom/sina/weibo/sdk/statistic/PageLog;->getEndTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    sget-object v2, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object v2, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v2, "WBAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "last session--- starttime:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/statistic/PageLog;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,endtime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/statistic/PageLog;->getEndTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "WBAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "is a new session--- starttime:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/statistic/PageLog;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v2, "WBAgent"

    const-string/jumbo v4, "is a new install"

    invoke-static {v2, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    const-string/jumbo v2, "WBAgent"

    const-string/jumbo v3, "is not a new session"

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private closeTimer()V
    .locals 1

    sget-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sina/weibo/sdk/statistic/WBAgentHandler;
    .locals 2

    const-class v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mInstance:Lcom/sina/weibo/sdk/statistic/WBAgentHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mInstance:Lcom/sina/weibo/sdk/statistic/WBAgentHandler;

    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mInstance:Lcom/sina/weibo/sdk/statistic/WBAgentHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getLogsInMemory()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, ""

    sget-object v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-static {v1}, Lcom/sina/weibo/sdk/statistic/LogBuilder;->getPageLogs(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isBackground(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x0

    const-string/jumbo v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    return v3

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x190

    if-ne v4, v5, :cond_2

    const-string/jumbo v3, "WBAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u540e\u53f0:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "WBAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u524d\u53f0:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized saveActivePages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/statistic/PageLog;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sina/weibo/sdk/statistic/LogBuilder;->getPageLogs(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler$2;

    invoke-direct {v1, p0, v0}, Lcom/sina/weibo/sdk/statistic/WBAgentHandler$2;-><init>(Lcom/sina/weibo/sdk/statistic/WBAgentHandler;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private timerTask(Landroid/content/Context;JJ)Ljava/util/Timer;
    .locals 6

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler$3;

    invoke-direct {v1, p0, p1}, Lcom/sina/weibo/sdk/statistic/WBAgentHandler$3;-><init>(Lcom/sina/weibo/sdk/statistic/WBAgentHandler;Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-object v0

    :cond_0
    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/weibo/sdk/statistic/EventLog;

    invoke-direct {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/statistic/EventLog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v1, Lcom/sina/weibo/sdk/statistic/LogType;->EVENT:Lcom/sina/weibo/sdk/statistic/LogType;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/statistic/EventLog;->setType(Lcom/sina/weibo/sdk/statistic/LogType;)V

    sget-object v2, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_1

    const-string/jumbo v1, "WBAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "event--- page:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,event name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->MAX_CACHE_SIZE:I

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->saveActivePages(Ljava/util/List;)V

    sget-object v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    const-string/jumbo v1, "WBAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "event--- page:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,event name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,extend:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKillProcess()V
    .locals 2

    const-string/jumbo v0, "WBAgent"

    const-string/jumbo v1, "save applogs and close timer and shutdown thread executor"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->saveActivePages(Ljava/util/List;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mInstance:Lcom/sina/weibo/sdk/statistic/WBAgentHandler;

    invoke-direct {p0}, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->closeTimer()V

    invoke-static {}, Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;->shutDownExecutor()V

    return-void
.end method

.method public onPageEnd(Ljava/lang/String;)V
    .locals 8

    const-wide/16 v6, 0x3e8

    sget-boolean v1, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mPages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mPages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/statistic/PageLog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/statistic/PageLog;->getStartTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/sina/weibo/sdk/statistic/PageLog;->setDuration(J)V

    sget-object v2, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mPages:Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    sget-object v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mPages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string/jumbo v1, "WBAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/statistic/PageLog;->getStartTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/statistic/PageLog;->getDuration()J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->MAX_CACHE_SIZE:I

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->saveActivePages(Ljava/util/List;)V

    sget-object v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_1
    const-string/jumbo v1, "WBAgent"

    const-string/jumbo v2, "please call onPageStart before onPageEnd"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStart(Ljava/lang/String;)V
    .locals 8

    sget-boolean v1, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v1, :cond_0

    new-instance v0, Lcom/sina/weibo/sdk/statistic/PageLog;

    invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/statistic/PageLog;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sina/weibo/sdk/statistic/LogType;->FRAGMENT:Lcom/sina/weibo/sdk/statistic/LogType;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/statistic/PageLog;->setType(Lcom/sina/weibo/sdk/statistic/LogType;)V

    sget-object v2, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mPages:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mPages:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v1, "WBAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/statistic/PageLog;->getStartTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 10

    const-wide/16 v8, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "WBAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "update last page endtime:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long v6, v0, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1, v4, v5, v6}, Lcom/sina/weibo/sdk/statistic/PageLog;->updateSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    sget-boolean v4, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mPages:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mPages:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sina/weibo/sdk/statistic/PageLog;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/statistic/PageLog;->getStartTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/sina/weibo/sdk/statistic/PageLog;->setDuration(J)V

    sget-object v5, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v5, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mPages:Ljava/util/Map;

    monitor-enter v5

    :try_start_1
    sget-object v4, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mPages:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string/jumbo v4, "WBAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/statistic/PageLog;->getStartTime()J

    move-result-wide v6

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/statistic/PageLog;->getDuration()J

    move-result-wide v6

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v4, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sget v5, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->MAX_CACHE_SIZE:I

    if-lt v4, v5, :cond_0

    sget-object v4, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->saveActivePages(Ljava/util/List;)V

    sget-object v4, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mActivePages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->checkAppStatus(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    :cond_1
    const-string/jumbo v4, "WBAgent"

    const-string/jumbo v5, "please call onResume before onPause"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 10

    invoke-static {}, Lcom/sina/weibo/sdk/statistic/LogReport;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/statistic/LogReport;->setPackageName(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    const-wide/16 v2, 0x1f4

    invoke-static {}, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->getUploadInterval()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->timerTask(Landroid/content/Context;JJ)Ljava/util/Timer;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mTimer:Ljava/util/Timer;

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, v6, v7}, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->checkNewSession(Landroid/content/Context;J)V

    sget-boolean v0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_2

    new-instance v8, Lcom/sina/weibo/sdk/statistic/PageLog;

    invoke-direct {v8, v9, v6, v7}, Lcom/sina/weibo/sdk/statistic/PageLog;-><init>(Ljava/lang/String;J)V

    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogType;->ACTIVITY:Lcom/sina/weibo/sdk/statistic/LogType;

    invoke-virtual {v8, v0}, Lcom/sina/weibo/sdk/statistic/PageLog;->setType(Lcom/sina/weibo/sdk/statistic/LogType;)V

    sget-object v1, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mPages:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->mPages:Ljava/util/Map;

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const-string/jumbo v0, "WBAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, v6, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onStop(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->checkAppStatus(Landroid/content/Context;)V

    return-void
.end method

.method public uploadAppLogs(Landroid/content/Context;)V
    .locals 10

    const-wide/16 v8, 0x7530

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/sina/weibo/sdk/statistic/LogReport;->getTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long v6, v0, v2

    invoke-static {p1}, Lcom/sina/weibo/sdk/statistic/LogReport;->getTime(Landroid/content/Context;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    cmp-long v0, v6, v8

    if-gez v0, :cond_0

    sub-long v2, v8, v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->timerTask(Landroid/content/Context;JJ)Ljava/util/Timer;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/sina/weibo/sdk/statistic/WBAgentHandler$1;-><init>(Lcom/sina/weibo/sdk/statistic/WBAgentHandler;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
