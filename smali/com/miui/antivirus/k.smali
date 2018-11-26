.class public Lcom/miui/antivirus/k;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static awD:Lcom/miui/antivirus/k;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/k;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/antivirus/k;
    .locals 2

    const-class v1, Lcom/miui/antivirus/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/antivirus/k;->awD:Lcom/miui/antivirus/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/antivirus/k;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/antivirus/k;->awD:Lcom/miui/antivirus/k;

    :cond_0
    sget-object v0, Lcom/miui/antivirus/k;->awD:Lcom/miui/antivirus/k;
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
.method public aEj(JLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/k;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const v2, 0x7f0705c2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public aEk(J)V
    .locals 1

    const-string/jumbo v0, "engine_suggest_update_time"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public aEl(Lcom/miui/guardprovider/VirusObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/guardprovider/a;->getInstance(Landroid/content/Context;)Lcom/miui/guardprovider/a;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/v;

    invoke-direct {v1, p0, p1}, Lcom/miui/antivirus/v;-><init>(Lcom/miui/antivirus/k;Lcom/miui/guardprovider/VirusObserver;)V

    invoke-virtual {v0, v1}, Lcom/miui/guardprovider/a;->aqi(Lcom/miui/guardprovider/b;)V

    return-void
.end method

.method public aEm()Z
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/antivirus/k;->aEq()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    invoke-virtual {p0, v4, v5}, Lcom/miui/antivirus/k;->aEk(J)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/antivirus/k;->aEq()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public aEn()Z
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/antivirus/k;->aEp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    invoke-virtual {p0, v4, v5}, Lcom/miui/antivirus/k;->aEo(J)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/antivirus/k;->aEp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public aEo(J)V
    .locals 1

    const-string/jumbo v0, "update_dialog_pop_time"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public aEp()J
    .locals 4

    const-string/jumbo v0, "update_dialog_pop_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public aEq()J
    .locals 4

    const-string/jumbo v0, "engine_suggest_update_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
