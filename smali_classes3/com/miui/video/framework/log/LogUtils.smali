.class public final Lcom/miui/video/framework/log/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static IS_DEBUG_VERSION:Z = false

.field private static final LOG_D:I = 0x2

.field private static final LOG_E:I = 0x5

.field private static final LOG_I:I = 0x3

.field private static final LOG_V:I = 0x1

.field private static final LOG_W:I = 0x4

.field public static final TAG:Ljava/lang/String;

.field private static mLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLogTag(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Lcom/miui/video/framework/log/LogUtils;->checkLogTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->mTagMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized catchException(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-class p1, Lcom/miui/video/framework/log/LogUtils;

    monitor-enter p1

    if-nez p2, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->isLog()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->isLogAll()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/miui/video/framework/log/LogUtils;->getLogTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {p2}, Lcom/miui/video/framework/log/LogUtils;->getErrorInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lcom/miui/video/framework/log/LogUtils;->runAddLog(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    invoke-static {p2}, Lcom/miui/video/framework/log/LogUtils;->getErrorInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public static catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "catch"

    invoke-static {p0, v0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static checkLogTag(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->mTagMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/video/framework/log/LogUtils;->mTagMap:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->mTagMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static clearLogTag()V
    .locals 1

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->mTagMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->mTagMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/miui/video/framework/log/LogUtils;->runShowLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x2

    invoke-static {v2, v0, v1, p0}, Lcom/miui/video/framework/log/LogUtils;->runShowLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v1, v0, p0, p1}, Lcom/miui/video/framework/log/LogUtils;->runShowLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/miui/video/framework/log/LogUtils;->IS_DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/miui/video/framework/log/LogUtils;->runShowLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x5

    invoke-static {v2, v0, v1, p0}, Lcom/miui/video/framework/log/LogUtils;->runShowLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v1, v0, p0, p1}, Lcom/miui/video/framework/log/LogUtils;->runShowLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static getErrorInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLogTag(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/miui/video/framework/log/LogUtils;->runShowLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-static {v2, v0, v1, p0}, Lcom/miui/video/framework/log/LogUtils;->runShowLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1, v0, p0, p1}, Lcom/miui/video/framework/log/LogUtils;->runShowLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static runAddLog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/miui/video/framework/utils/FormatUtils;->DATE_10:Ljava/text/SimpleDateFormat;

    invoke-static {v1}, Lcom/miui/video/framework/utils/FormatUtils;->formatDate(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    packed-switch p1, :pswitch_data_0

    const-string v1, "VERBOSE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_0
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    const-string v1, "WARN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\t"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p0, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/framework/FrameworkConfig;->isLog()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/framework/FrameworkConfig;->isLogAll()Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x4

    if-eq p2, p1, :cond_1

    const/4 p2, 0x5

    if-eq p2, p1, :cond_1

    sget-object p1, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x64

    if-le p1, p2, :cond_5

    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object p2, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_1
    if-ge v1, p2, :cond_2

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/log/LogUtils;->runOutputLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0xc8

    if-le p1, p2, :cond_4

    sget-object p1, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    sget-object p1, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static runOutputAllLog(Ljava/lang/Throwable;)V
    .locals 5

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->isLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->isLogAll()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p0}, Lcom/miui/video/framework/log/LogUtils;->getErrorInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/miui/video/framework/log/LogUtils;->runAddLog(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    sget-object v4, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/miui/video/framework/log/LogUtils;->mLogList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/video/framework/log/LogUtils;->runOutputLog(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private static runOutputLog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/miui/video/framework/log/LogTask;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/video/framework/log/LogTask;-><init>(I)V

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/video/framework/log/LogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static runShowLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lcom/miui/video/framework/log/LogUtils;->getLogTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " ] "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/framework/FrameworkConfig;->isLog()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/framework/FrameworkConfig;->isLogAll()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/miui/video/framework/log/LogUtils;->checkLogTag(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    packed-switch p0, :pswitch_data_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/miui/video/framework/log/LogUtils;->runAddLog(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lcom/miui/video/framework/log/LogUtils;->runShowLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v2, v0, v1, p0}, Lcom/miui/video/framework/log/LogUtils;->runShowLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1, v0, p0, p1}, Lcom/miui/video/framework/log/LogUtils;->runShowLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/miui/video/framework/log/LogUtils;->runShowLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-static {v2, v0, v1, p0}, Lcom/miui/video/framework/log/LogUtils;->runShowLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v1, v0, p0, p1}, Lcom/miui/video/framework/log/LogUtils;->runShowLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
