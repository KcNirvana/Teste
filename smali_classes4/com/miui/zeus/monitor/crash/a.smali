.class Lcom/miui/zeus/monitor/crash/a;
.super Ljava/lang/Object;
.source "CrashMonitor.java"

# interfaces
.implements Lcom/miui/zeus/monitor/crash/d;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Lcom/miui/zeus/monitor/crash/a;


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/miui/zeus/utils/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/zeus/monitor/crash/a;

    invoke-direct {v0}, Lcom/miui/zeus/monitor/crash/a;-><init>()V

    sput-object v0, Lcom/miui/zeus/monitor/crash/a;->a:Lcom/miui/zeus/monitor/crash/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/zeus/monitor/crash/a;->h:Ljava/util/Set;

    return-void
.end method

.method public static a()Lcom/miui/zeus/monitor/crash/a;
    .locals 1

    sget-object v0, Lcom/miui/zeus/monitor/crash/a;->a:Lcom/miui/zeus/monitor/crash/a;

    return-object v0
.end method

.method private a(Ljava/lang/Thread;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[0-9]+"

    const-string v1, "X"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Module["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/zeus/monitor/crash/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Process["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/zeus/monitor/crash/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/zeus/utils/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Thread["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Debug["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/zeus/utils/a/a;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZEUS-FATAL-EXCEPTION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/zeus/monitor/crash/a;->b()V

    iget-object v0, p0, Lcom/miui/zeus/monitor/crash/a;->c:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/miui/zeus/monitor/crash/a;->e:Z

    iget-object v2, p0, Lcom/miui/zeus/monitor/crash/a;->g:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/miui/zeus/monitor/crash/CrashMonitorService;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 3

    const/4 p1, 0x0

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/miui/zeus/monitor/crash/a;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/zeus/monitor/crash/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/miui/zeus/utils/a/a;->c()Z

    move-result v0

    iget-boolean v1, p0, Lcom/miui/zeus/monitor/crash/a;->e:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/miui/zeus/monitor/crash/a;->e:Z

    iget-boolean v0, p0, Lcom/miui/zeus/monitor/crash/a;->e:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/miui/zeus/monitor/crash/a;->a(Ljava/lang/String;)V

    return p1

    :cond_2
    iget-object v0, p0, Lcom/miui/zeus/monitor/crash/a;->h:Ljava/util/Set;

    invoke-static {v0}, Lcom/miui/zeus/utils/a;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/zeus/monitor/crash/a;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    return p1

    :cond_5
    invoke-direct {p0, p2}, Lcom/miui/zeus/monitor/crash/a;->a(Ljava/lang/String;)V

    return v1

    :cond_6
    :goto_1
    const-string p2, "CrashMonitor"

    const-string v0, "tr or context is null"

    invoke-static {p2, v0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/miui/zeus/monitor/crash/a;->i:Lcom/miui/zeus/utils/d;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/zeus/monitor/crash/a;->i:Lcom/miui/zeus/utils/d;

    const-string v2, "key_crash_num"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/zeus/utils/d;->b(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/miui/zeus/monitor/crash/a;->i:Lcom/miui/zeus/utils/d;

    const-string v3, "key_crash_num"

    invoke-virtual {v2, v3, v1}, Lcom/miui/zeus/utils/d;->a(Ljava/lang/String;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/miui/zeus/monitor/crash/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/zeus/monitor/crash/d;"
        }
    .end annotation

    invoke-static {p1}, Lcom/miui/zeus/utils/a;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/monitor/crash/a;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public a(Z)Lcom/miui/zeus/monitor/crash/d;
    .locals 0

    iput-boolean p1, p0, Lcom/miui/zeus/monitor/crash/a;->d:Z

    return-object p0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/zeus/monitor/crash/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/zeus/monitor/crash/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "CrashMonitor"

    const-string p2, "Skip monitor itself process"

    invoke-static {p1, p2}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/miui/zeus/monitor/crash/a;->c:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/zeus/monitor/crash/a;->f:Z

    iput-object p2, p0, Lcom/miui/zeus/monitor/crash/a;->g:Ljava/lang/String;

    new-instance p1, Lcom/miui/zeus/utils/d;

    const-string p2, "zeus_crash_info"

    invoke-direct {p1, p2}, Lcom/miui/zeus/utils/d;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/zeus/monitor/crash/a;->i:Lcom/miui/zeus/utils/d;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/zeus/monitor/crash/a;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "moduleName can not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p1}, Lcom/miui/zeus/utils/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":crash"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public b(Z)Lcom/miui/zeus/monitor/crash/d;
    .locals 0

    iput-boolean p1, p0, Lcom/miui/zeus/monitor/crash/a;->e:Z

    return-object p0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/miui/zeus/monitor/crash/a;->a(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrashMonitor"

    invoke-static {v1, v0, p2}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-direct {p0, v0, p2}, Lcom/miui/zeus/monitor/crash/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/zeus/monitor/crash/a;->d:Z

    if-eqz v2, :cond_0

    const-string p1, "CrashMonitor"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", KILL SELF!!!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/zeus/monitor/crash/a;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_1

    const-string v1, "CrashMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", HANDLE WITH DEFAULT HANDLER: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/zeus/monitor/crash/a;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "!!!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/monitor/crash/a;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string p1, "CrashMonitor"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ERROR STATE: NO DEFAULT HANDLER, KILL SELF!!!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method
