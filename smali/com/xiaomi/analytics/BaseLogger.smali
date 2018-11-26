.class Lcom/xiaomi/analytics/BaseLogger;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static boU:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private static volatile boW:Lcom/xiaomi/analytics/internal/a/a;

.field private static boY:Lcom/xiaomi/analytics/internal/a;

.field private static boZ:Landroid/content/Context;

.field private static bpa:Ljava/lang/String;


# instance fields
.field private boV:Ljava/lang/String;

.field private boX:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/analytics/BaseLogger;->bNf()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->boU:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/xiaomi/analytics/BaseLogger$1;

    invoke-direct {v0}, Lcom/xiaomi/analytics/BaseLogger$1;-><init>()V

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->boY:Lcom/xiaomi/analytics/internal/a;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->boV:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->boX:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->boZ:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Do you forget to do Logger.init ?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/analytics/BaseLogger;->boX:Ljava/lang/String;

    return-void
.end method

.method static synthetic bNe(Lcom/xiaomi/analytics/internal/a/a;)Lcom/xiaomi/analytics/internal/a/a;
    .locals 0

    sput-object p0, Lcom/xiaomi/analytics/BaseLogger;->boW:Lcom/xiaomi/analytics/internal/a/a;

    return-object p0
.end method

.method private static bNf()V
    .locals 7

    const/16 v6, 0x64

    const/4 v1, 0x0

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->boU:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->boW:Lcom/xiaomi/analytics/internal/a/a;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BaseLogger"

    const-string/jumbo v2, "drainPendingEvents "

    invoke-static {v0, v2}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->boU:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->boU:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;

    iget-object v3, v0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->bpc:Lcom/xiaomi/analytics/LogEvent;

    iget-object v4, v0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->bpf:Ljava/lang/String;

    iget-object v5, v0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->bpd:Ljava/lang/String;

    iget-object v0, v0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->bpe:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v0}, Lcom/xiaomi/analytics/LogEvent;->pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const-string/jumbo v0, "BaseLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trackEvents "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/xiaomi/analytics/BaseLogger;->boW:Lcom/xiaomi/analytics/internal/a/a;

    const-class v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/xiaomi/analytics/internal/util/l;->bLr(Ljava/util/List;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Lcom/xiaomi/analytics/internal/a/a;->trackEvents([Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static declared-synchronized init(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/xiaomi/analytics/BaseLogger;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/j;->bLi(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->boZ:Landroid/content/Context;

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->boZ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->bpa:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->bpa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Context is not a application context."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->boZ:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/o;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/analytics/BaseLogger;->boY:Lcom/xiaomi/analytics/internal/a;

    invoke-virtual {v0, v2}, Lcom/xiaomi/analytics/internal/o;->bMe(Lcom/xiaomi/analytics/internal/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method


# virtual methods
.method public endSession()V
    .locals 1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->boV:Ljava/lang/String;

    return-void
.end method

.method protected log(Lcom/xiaomi/analytics/LogEvent;)V
    .locals 5

    if-eqz p1, :cond_0

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->boZ:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/o;->bMr()Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->boW:Lcom/xiaomi/analytics/internal/a/a;

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->boZ:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/o;->bLZ()V

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->boW:Lcom/xiaomi/analytics/internal/a/a;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->boW:Lcom/xiaomi/analytics/internal/a/a;

    sget-object v1, Lcom/xiaomi/analytics/BaseLogger;->bpa:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->boX:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/analytics/BaseLogger;->boV:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Lcom/xiaomi/analytics/LogEvent;->pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/analytics/internal/a/a;->trackEvent(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->boU:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;

    sget-object v2, Lcom/xiaomi/analytics/BaseLogger;->bpa:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/analytics/BaseLogger;->boX:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/analytics/BaseLogger;->boV:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->boZ:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/o;->bMr()Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->boW:Lcom/xiaomi/analytics/internal/a/a;

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->boZ:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/o;->bLZ()V

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->boW:Lcom/xiaomi/analytics/internal/a/a;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->boW:Lcom/xiaomi/analytics/internal/a/a;

    iget-object v1, p0, Lcom/xiaomi/analytics/BaseLogger;->boX:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->boV:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, v2}, Lcom/xiaomi/analytics/LogEvent;->pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/analytics/internal/a/a;->trackEvent(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->boU:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->boX:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/analytics/BaseLogger;->boV:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, p2}, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startSession()V
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->boV:Ljava/lang/String;

    const-string/jumbo v0, "BaseLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->boV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
