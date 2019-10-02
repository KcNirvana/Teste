.class public Lcom/xiaomi/miui/pushads/sdk/k;
.super Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;

# interfaces
.implements Lcom/xiaomi/miui/pushads/sdk/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/miui/pushads/sdk/k$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/miui/pushads/sdk/k;


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/content/SharedPreferences;

.field private a:Landroid/os/Handler;

.field private a:Lcom/xiaomi/miui/pushads/sdk/g;

.field private a:Lcom/xiaomi/push/cf;

.field private a:Ljava/lang/String;

.field private b:I

.field private b:Ljava/lang/String;


# direct methods
.method public static declared-synchronized a()Lcom/xiaomi/miui/pushads/sdk/k;
    .locals 2

    const-class v0, Lcom/xiaomi/miui/pushads/sdk/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/k;->a:Lcom/xiaomi/miui/pushads/sdk/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ads-notify-fd5dfce4"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    new-instance v7, Lcom/xiaomi/miui/pushads/sdk/j;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Landroid/content/SharedPreferences;

    move-object v0, v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/miui/pushads/sdk/j;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;Lcom/xiaomi/miui/pushads/sdk/c;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v7, p1, p2}, Lcom/xiaomi/miui/pushads/sdk/j;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a(Ljava/lang/String;JI)V
    .locals 2

    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b58\u5165cache \u7684\u6570\u91cf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Lcom/xiaomi/miui/pushads/sdk/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/miui/pushads/sdk/g;->a(Ljava/lang/String;JI)V

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Lcom/xiaomi/miui/pushads/sdk/g;

    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/g;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/xiaomi/push/ce;)Z
    .locals 4

    iget v0, p1, Lcom/xiaomi/push/ce;->c:I

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    const-string p1, "\u767d\u540d\u5355\u7528\u6237"

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    return v1

    :cond_0
    iget v0, p1, Lcom/xiaomi/push/ce;->a:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    iget p1, p1, Lcom/xiaomi/push/ce;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u901a\u77e5\u4e0a\u9650: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Landroid/content/SharedPreferences;

    const-string v3, "notifycount"

    goto :goto_0

    :pswitch_1
    iget p1, p1, Lcom/xiaomi/push/ce;->c:I

    mul-int/lit8 p1, p1, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5192\u6ce1\u4e0a\u9650: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Landroid/content/SharedPreferences;

    const-string v3, "bubblecount"

    :goto_0
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    if-gt v0, p1, :cond_1

    return v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e7f\u544a\u6b21\u6570\u8d85\u8fc7\u4e0a\u9650---\u5df2\u7ecf\u83b7\u5f97\u6b21\u6570\uff1a "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u4e0a\u9650: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized a(I)I
    .locals 2

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Landroid/content/SharedPreferences;

    const-string v0, "notifycount"

    :goto_0
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Landroid/content/SharedPreferences;

    const-string v0, "bubblecount"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    monitor-exit p0

    return v1
.end method

.method public declared-synchronized a(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Landroid/content/SharedPreferences;

    const-string v0, "notifycount"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr p1, v2

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notifycount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Landroid/content/SharedPreferences;

    const-string v0, "bubblecount"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr p1, v2

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bubblecount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public a(ILcom/xiaomi/push/ce;Lcom/xiaomi/miui/pushads/sdk/j;)V
    .locals 3

    if-nez p2, :cond_0

    const-string p1, "\u8fd4\u56de\u5e7f\u544a\u4e3anull"

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p3, -0x1

    if-ne p1, p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5e7f\u544a\u4e0b\u8f7d\u5931\u8d25: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/xiaomi/push/ce;->a:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    iget p3, p2, Lcom/xiaomi/push/ce;->d:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p2, Lcom/xiaomi/push/ce;->d:I

    iget p3, p2, Lcom/xiaomi/push/ce;->d:I

    const/16 v0, 0xa

    if-ge p3, v0, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0b\u8f7d\u5931\u8d25\u5199\u5165\u7f13\u5b58 "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/xiaomi/push/ce;->h:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/xiaomi/push/ce;->b:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/xiaomi/push/ce;->d:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/miui/pushads/sdk/d;->a(Ljava/lang/String;)V

    iget-object p3, p2, Lcom/xiaomi/push/ce;->h:Ljava/lang/String;

    iget-wide v0, p2, Lcom/xiaomi/push/ce;->b:J

    iget v2, p2, Lcom/xiaomi/push/ce;->d:I

    invoke-direct {p0, p3, v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;JI)V

    goto :goto_1

    :cond_1
    const-string p3, "\u4e0b\u8f7d\u5931\u8d25\u6b21\u6570\u8d85\u8fc7 10 \u4e0d\u5199\u5165\u7f13\u5b58"

    :goto_0
    invoke-static {p3}, Lcom/xiaomi/miui/pushads/sdk/d;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_4

    iget p3, p2, Lcom/xiaomi/push/ce;->c:I

    if-lez p3, :cond_3

    iget p3, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:I

    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/k;->a()Lcom/xiaomi/miui/pushads/sdk/k;

    move-result-object p3

    iget v0, p2, Lcom/xiaomi/push/ce;->a:I

    invoke-virtual {p3, v0}, Lcom/xiaomi/miui/pushads/sdk/k;->a(I)V

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5e7f\u544a\u4e0b\u8f7d\u6210\u529f: id: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/xiaomi/push/ce;->a:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " \u7c7b\u578b: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/xiaomi/push/ce;->a:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u6210\u529f\u6b21\u6570: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/k;->a()Lcom/xiaomi/miui/pushads/sdk/k;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/push/ce;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/k;->a(I)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p3, "com.miui.ads"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u65e0\u6548\u6216\u8005\u8d85\u8fc7\u9650\u5236 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "\u5e7f\u544a\u65e0\u6548\u6216\u8005\u8d85\u8fc7\u9650\u5236"

    goto :goto_0

    :goto_1
    iget-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Lcom/xiaomi/push/cf;

    if-eqz p3, :cond_6

    if-nez p1, :cond_6

    invoke-direct {p0, p2}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Lcom/xiaomi/push/ce;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "===========\u7ed9APP \u53d1\u9001\u5e7f\u544a\u4fe1\u606f"

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Lcom/xiaomi/push/cf;

    invoke-interface {p1, p2}, Lcom/xiaomi/push/cf;->a(Lcom/xiaomi/push/ce;)V

    goto :goto_2

    :cond_5
    const-string p1, "\u5e7f\u544a\u6570\u91cf\u8d85\u8fc7\u9650\u5236\uff0c\u4e0d\u8fd4\u56de\u7ed9APP"

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onCommandResult(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u547d\u4ee4\u5931\u8d25: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " reason: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "param: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "set-alias"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    :goto_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_2

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Ljava/lang/String;

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "\u8bbe\u7f6e\u522b\u540d\u6210\u529f: "

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    const-string p1, "\u8bbe\u7f6e\u522b\u540d\u5931\u8d25\uff0c\u91cd\u65b0\u8bbe\u7f6e: "

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method public onInitializeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Lcom/xiaomi/push/cf;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    const/4 v0, 0x4

    iput v0, p3, Landroid/os/Message;->what:I

    long-to-int v0, p1

    iput v0, p3, Landroid/os/Message;->arg1:I

    iput-object p4, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p4, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Landroid/os/Handler;

    invoke-virtual {p4, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const-wide/16 p3, 0x0

    cmp-long p1, p3, p1

    if-nez p1, :cond_1

    const-string p1, "\u901a\u9053\u8fdb\u884c\u521d\u59cb\u5316OK"

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Landroid/os/Handler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string p1, "\u901a\u9053\u521d\u59cb\u5316\u5931\u8d25\uff0c \u5df2\u7ecf\u901a\u77e5\u4e86app\uff0c\u9700\u8981\u91cd\u65b0 open \u901a\u9053"

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceiveMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u63a5\u53d7\u5230\u6d88\u606f "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "##"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "##"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Ljava/lang/String;

    invoke-static {p4}, Lcom/xiaomi/miui/pushads/sdk/f;->a(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u6ca1\u6709\u6709\u6548alias\uff0c\u5ffd\u7565\u6d88\u606f "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "##"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "##"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/xiaomi/miui/pushads/sdk/f;->a(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Ljava/lang/String;

    invoke-static {p4}, Lcom/xiaomi/miui/pushads/sdk/f;->a(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Ljava/lang/String;

    invoke-static {p4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u63a5\u53d7\u5230\u4e0d\u540calias \u7684\u6d88\u606f\uff0c\u6ce8\u9500\u65e7\u7684 "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "##"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "##"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/k;->getCategory()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsetAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/k;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSubscribeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUnsubscribeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
