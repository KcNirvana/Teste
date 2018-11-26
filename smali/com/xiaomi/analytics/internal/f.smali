.class Lcom/xiaomi/analytics/internal/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bnZ:J

.field private static volatile bob:Lcom/xiaomi/analytics/internal/f;


# instance fields
.field private bnW:Ljava/lang/String;

.field private bnX:Ljava/lang/String;

.field private bnY:Lcom/xiaomi/analytics/internal/g;

.field private boa:Ljava/lang/Runnable;

.field private boc:I

.field private bod:Ljava/lang/String;

.field private boe:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/xiaomi/analytics/internal/util/a;->bny:I

    int-to-long v0, v0

    sput-wide v0, Lcom/xiaomi/analytics/internal/f;->bnZ:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/f;->bod:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/f;->bnW:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/analytics/internal/k;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/k;-><init>(Lcom/xiaomi/analytics/internal/f;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/f;->boa:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/analytics/internal/i;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/i;-><init>(Lcom/xiaomi/analytics/internal/f;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/f;->boe:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/j;->bLi(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/f;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic bLB(Lcom/xiaomi/analytics/internal/f;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/analytics/internal/f;->boc:I

    return p1
.end method

.method static synthetic bLC(Lcom/xiaomi/analytics/internal/f;Ljava/lang/String;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/internal/f;->bLG(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized bLD()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/f;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "analytics_updater"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "updateTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private bLE()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/f;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/l;->bLp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/l;->bLp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bLF(Lcom/xiaomi/analytics/internal/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/f;->bnX:Ljava/lang/String;

    return-object v0
.end method

.method private bLG(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic bLH(Lcom/xiaomi/analytics/internal/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/f;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic bLJ(Lcom/xiaomi/analytics/internal/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/f;->bod:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic bLK(Lcom/xiaomi/analytics/internal/f;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/f;->bLE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bLL(Lcom/xiaomi/analytics/internal/f;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/f;->boe:Ljava/lang/Runnable;

    return-object v0
.end method

.method private bLM()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/f;->bnY:Lcom/xiaomi/analytics/internal/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/f;->bnY:Lcom/xiaomi/analytics/internal/g;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/f;->bnX:Ljava/lang/String;

    iget v3, p0, Lcom/xiaomi/analytics/internal/f;->boc:I

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/xiaomi/analytics/internal/g;->bLR(Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic bLN(Lcom/xiaomi/analytics/internal/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/f;->bnW:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic bLO(Lcom/xiaomi/analytics/internal/f;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/analytics/internal/f;->bLy(J)V

    return-void
.end method

.method static synthetic bLP(Lcom/xiaomi/analytics/internal/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/f;->bod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bLx(Lcom/xiaomi/analytics/internal/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/f;->bnW:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized bLy(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/f;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "analytics_updater"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "updateTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic bLz(Lcom/xiaomi/analytics/internal/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/f;->bLM()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/f;
    .locals 2

    const-class v1, Lcom/xiaomi/analytics/internal/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/analytics/internal/f;->bob:Lcom/xiaomi/analytics/internal/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/analytics/internal/f;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/analytics/internal/f;->bob:Lcom/xiaomi/analytics/internal/f;

    :cond_0
    sget-object v0, Lcom/xiaomi/analytics/internal/f;->bob:Lcom/xiaomi/analytics/internal/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bLA(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/f;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "UpdateManager"

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/i;->bLf(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "UpdateManager"

    const-string/jumbo v1, "checkUpdate "

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/f;->bnX:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/f;->boa:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/c;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/analytics/internal/f;->bLy(J)V

    return-void
.end method

.method public bLI(Lcom/xiaomi/analytics/internal/g;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/f;->bnY:Lcom/xiaomi/analytics/internal/g;

    return-void
.end method

.method public bLQ()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/f;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "UpdateManager"

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/i;->bLf(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v5

    :cond_0
    invoke-static {}, Lcom/xiaomi/analytics/Analytics;->isUpdateEnable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "UpdateManager"

    const-string/jumbo v1, "Updating is disabled."

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/f;->bLD()J

    move-result-wide v0

    const-string/jumbo v2, "UpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "last update check time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    sget-wide v2, Lcom/xiaomi/analytics/internal/f;->bnZ:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    return v5

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
