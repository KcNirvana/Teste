.class Lcom/xiaomi/miui/pushads/sdk/j;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/content/SharedPreferences;

.field private a:Lcom/xiaomi/miui/pushads/sdk/c;

.field private a:Lcom/xiaomi/push/ce;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;Lcom/xiaomi/miui/pushads/sdk/c;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Landroid/content/Context;

    iput-object p6, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Lcom/xiaomi/miui/pushads/sdk/c;

    iput-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Landroid/content/SharedPreferences;

    iput-object p5, p0, Lcom/xiaomi/miui/pushads/sdk/j;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/io/File;)I
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Lcom/xiaomi/push/ce;

    check-cast v0, Lcom/xiaomi/miui/pushads/sdk/h;

    iget-object v1, v0, Lcom/xiaomi/miui/pushads/sdk/h;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Landroid/content/Context;

    invoke-static {v2, p1, v1, v0}, Lcom/xiaomi/miui/pushads/sdk/b;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/xiaomi/miui/pushads/sdk/h;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u5e7f\u544a imgUrl: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u7ed3\u679c\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/j;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "asynctask \u88abcancel"

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/f;->a(Landroid/content/Context;)Lcom/xiaomi/miui/pushads/sdk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7f51\u7edc\u7c7b\u578b\u6539\u53d8\uff0c\u4e2d\u65ad\u4e0b\u8f7d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_1
    return p1
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lcom/xiaomi/miui/pushads/sdk/j;->a(Lorg/json/JSONObject;)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89e3\u6790\u53c2\u6570\u5e76\u68c0\u67e5, \u8fd4\u56de\u7ed3\u679c: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/j;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return p1

    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/miui/pushads/sdk/j;->c(Lorg/json/JSONObject;)I

    move-result p1

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Lcom/xiaomi/push/ce;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u83b7\u53d6\u6700\u7ec8\u7ed3\u679c\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u7c7b\u578b: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Lcom/xiaomi/push/ce;

    iget v1, v1, Lcom/xiaomi/push/ce;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    :cond_1
    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method private a(Lorg/json/JSONObject;)I
    .locals 7

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v0, "nonsense"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "MIUIADSPUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u65e0\u6548\u6807\u5fd7\u8bbe\u7f6e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "\u5e7f\u544a\u65e0\u6548"

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/d;->a(Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1

    :cond_2
    const-string v0, "lastShowTime"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "expireTime: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " currentTime: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    cmp-long p1, v3, v1

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long p1, v3, v0

    if-gez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5e7f\u544a\u5df2\u7ecf\u8fc7\u671f lastShow: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " current: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/d;->a(Ljava/lang/String;)V

    const/4 p1, -0x4

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private a(I)Lcom/xiaomi/push/ce;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/ce;

    invoke-direct {v0}, Lcom/xiaomi/push/ce;-><init>()V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/h;

    invoke-direct {v0}, Lcom/xiaomi/miui/pushads/sdk/h;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/a;

    invoke-direct {v0}, Lcom/xiaomi/miui/pushads/sdk/a;-><init>()V

    :goto_0
    iget p1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:I

    iput p1, v0, Lcom/xiaomi/push/ce;->d:I

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/xiaomi/push/ce;->h:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "\u6210\u529f"

    goto :goto_0

    :pswitch_1
    const-string v0, "\u672a\u77e5\u539f\u56e0"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u5e7f\u544a\u5931\u6548"

    goto :goto_0

    :pswitch_3
    const-string v0, "\u5230\u8fbe\u4e0a\u9650"

    goto :goto_0

    :pswitch_4
    const-string v0, "\u8fc7\u671f"

    goto :goto_0

    :pswitch_5
    const-string v0, "\u6d88\u606f\u4e0d\u5339\u914d"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(II)Z
    .locals 9

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Landroid/content/SharedPreferences;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Landroid/content/SharedPreferences;

    const-string v4, "starttime"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v7, v3, v5

    const/4 v8, 0x1

    if-nez v7, :cond_0

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "starttime"

    invoke-interface {p1, p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return v8

    :cond_0
    const/4 v7, 0x0

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-lez v1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "starttime"

    invoke-interface {p1, p2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "notifycount"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "bubblecount"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return v8

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "notifycount"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ge p2, p1, :cond_3

    monitor-exit v0

    return v8

    :cond_2
    if-ne p2, v8, :cond_3

    iget-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "bubblecount"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    mul-int/lit8 p1, p1, 0x4

    if-ge p2, p1, :cond_3

    monitor-exit v0

    return v8

    :cond_3
    const-string p1, "\u8d85\u8fc7\u4e86\u6bcf\u5929\u63a5\u53d7\u5e7f\u544a\u7684\u4e0a\u9650"

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/d;->b(Ljava/lang/String;)V

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b(Lorg/json/JSONObject;)I
    .locals 1

    const-string v0, "showType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private c(Lorg/json/JSONObject;)I
    .locals 8

    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/j;->b(Lorg/json/JSONObject;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "miui.util.NotificationFilterHelper"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "canSendNotifications"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/miui/pushads/sdk/j;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Landroid/content/Context;

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/xiaomi/miui/pushads/sdk/j;->b:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v4, v1

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "NotifyAdsDownloader"

    const-string v6, "reflect errors!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u662f\u5426\u7981\u7528\u4e86\u901a\u77e5\u680f\u5e7f\u544a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    const-string v5, "receiveUpperBound"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    invoke-direct {p0, v5, v0}, Lcom/xiaomi/miui/pushads/sdk/j;->a(II)Z

    move-result v5

    xor-int/2addr v1, v5

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u662f\u5426\u8fbe\u5230\u4e0a\u9650 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    if-nez v1, :cond_2

    if-ne v0, v2, :cond_1

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    :try_start_1
    const-string v1, "\u4f7f\u7528\u4e3b\u5e7f\u544a "

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/miui/pushads/sdk/j;->a(I)Lcom/xiaomi/push/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Lcom/xiaomi/push/ce;

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Lcom/xiaomi/push/ce;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/ce;->a(Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_2
    :goto_2
    const-string v0, "\u4f7f\u7528\u5019\u9009\u5e7f\u544a "

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    const-string v0, "subAdId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-gtz v0, :cond_3

    const-string p1, "\u6ca1\u6709\u5019\u9009\u5e7f\u544a "

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    const/4 p1, -0x5

    return p1

    :cond_3
    const-string v0, "subAdInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/miui/pushads/sdk/j;->b(Lorg/json/JSONObject;)I

    move-result p1

    if-ne p1, v2, :cond_4

    if-eqz v4, :cond_4

    const/4 p1, -0x6

    return p1

    :cond_4
    invoke-direct {p0, v0}, Lcom/xiaomi/miui/pushads/sdk/j;->a(Lorg/json/JSONObject;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5019\u9009\u5e7f\u544a\u89e3\u6790\u53c2\u6570\u5e76\u68c0\u67e5\uff1a "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    return v1

    :cond_5
    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/j;->a(I)Lcom/xiaomi/push/ce;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Lcom/xiaomi/push/ce;

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Lcom/xiaomi/push/ce;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/ce;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    return v3

    :catch_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/j;->a(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u89e3\u6790\u5931\u8d25 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->a(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Lcom/xiaomi/push/ce;

    iget v0, v0, Lcom/xiaomi/push/ce;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Landroid/content/Context;

    const-string v0, "comxiaomimiuipushadssdk"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/j;->a(Ljava/io/File;)I

    move-result p1

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Lcom/xiaomi/miui/pushads/sdk/c;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d post \u7684\u7ed3\u679c\u662f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Lcom/xiaomi/miui/pushads/sdk/c;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->a:Lcom/xiaomi/push/ce;

    invoke-interface {v0, p1, v1, p0}, Lcom/xiaomi/miui/pushads/sdk/c;->a(ILcom/xiaomi/push/ce;Lcom/xiaomi/miui/pushads/sdk/j;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/j;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const-string v0, "ADS_DOWNLOAD"

    const-string v1, "onCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/j;->a(Ljava/lang/Integer;)V

    return-void
.end method
