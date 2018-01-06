.class public Lcom/miui/weather2/service/a;
.super Lcom/miui/weather2/service/d;
.source "SourceFile"


# static fields
.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/miui/weather2/service/a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/service/d;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v2, 0xbb8

    new-instance v1, Lcom/miui/weather2/service/b;

    invoke-direct {v1, p0, p1}, Lcom/miui/weather2/service/b;-><init>(Lcom/miui/weather2/service/a;Z)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private h()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/weather2/service/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/weather2/tools/bu;->a(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 4

    const-string v0, "flag = 1"

    iget-object v1, p0, Lcom/miui/weather2/service/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/weather2/g/a$j;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private j()V
    .locals 1

    sget v0, Lcom/miui/weather2/service/a;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/weather2/service/a;->b:I

    return-void
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/miui/weather2/service/a;->b:I

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "prefgps"

    return-object v0
.end method

.method protected b()J
    .locals 4

    sget v0, Lcom/miui/weather2/service/a;->b:I

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/weather2/service/a;->b:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/service/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "POWER_SAVE_MODE_OPEN"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const-wide/32 v0, 0x36ee80

    :goto_0
    return-wide v0

    :cond_1
    const-wide/32 v0, 0xa4cb80

    goto :goto_0

    :cond_2
    sget v0, Lcom/miui/weather2/service/a;->b:I

    int-to-long v0, v0

    const-wide/32 v2, 0xdbba0

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    invoke-super {p0}, Lcom/miui/weather2/service/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/service/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/service/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const/4 v0, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/service/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/weather2/tools/ac;->a(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_1
    invoke-direct {p0}, Lcom/miui/weather2/service/a;->h()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/miui/weather2/service/a;->i()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/weather2/service/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/weather2/tools/a;->a(Landroid/content/Context;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1

    :cond_2
    const-string v3, "Wth2:LocationUpdater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run() success="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/weather2/service/a;->d()V

    if-nez v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/miui/weather2/service/a;->a(Z)V

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/weather2/service/a;->k()V

    :goto_3
    iget-object v0, p0, Lcom/miui/weather2/service/a;->a:Landroid/content/Context;

    sget v1, Lcom/miui/weather2/service/a;->b:I

    const-string v2, "background_location_update"

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/weather2/service/a;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/miui/weather2/service/a;->j()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/miui/weather2/service/a;->h()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/miui/weather2/service/a;->i()V

    :goto_4
    throw v0

    :cond_5
    const-string v3, "Wth2:LocationUpdater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run() success="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/weather2/service/a;->d()V

    invoke-direct {p0, v1}, Lcom/miui/weather2/service/a;->a(Z)V

    invoke-direct {p0}, Lcom/miui/weather2/service/a;->j()V

    iget-object v1, p0, Lcom/miui/weather2/service/a;->a:Landroid/content/Context;

    sget v2, Lcom/miui/weather2/service/a;->b:I

    const-string v3, "background_location_update"

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/weather2/service/a;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_4
.end method
