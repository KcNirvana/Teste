.class public Lcom/xiaomi/mipush/sdk/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/push/service/p$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/push/service/p;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/p;->a(Lcom/xiaomi/push/service/p$a;)V

    return-void
.end method

.method private b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lcom/xiaomi/j/a/aj;

    invoke-direct {v0}, Lcom/xiaomi/j/a/aj;-><init>()V

    sget-object v1, Lcom/xiaomi/j/a/s;->i:Lcom/xiaomi/j/a/s;

    iget-object v1, v1, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/aj;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/aj;->b(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/aj;->a(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "miid"

    invoke-static {v1, v2, p1}, Lcom/xiaomi/b/a/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/aj;->a(Ljava/util/Map;)Lcom/xiaomi/j/a/aj;

    invoke-static {}, Lcom/xiaomi/b/a/a/d;->b()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v2

    const-string v3, "space_id"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ax;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/j/a/a;->i:Lcom/xiaomi/j/a/a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZLcom/xiaomi/j/a/v;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 10

    const-wide/16 v8, -0x1

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_sync_miid_time"

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {p1}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v1

    sget-object v6, Lcom/xiaomi/j/a/h;->I:Lcom/xiaomi/j/a/h;

    invoke-virtual {v6}, Lcom/xiaomi/j/a/h;->a()I

    move-result v6

    const/16 v7, 0x5460

    invoke-virtual {v1, v6, v7}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v1

    cmp-long v6, v2, v8

    if-nez v6, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_sync_miid_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    int-to-long v6, v1

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    invoke-static {p1}, Lcom/xiaomi/b/a/d/h;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/d/h;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/mipush/sdk/bk;

    invoke-direct {v3, p1}, Lcom/xiaomi/mipush/sdk/bk;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/b/a/d/h;->a(Lcom/xiaomi/b/a/d/h$a;I)Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_sync_miid_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/bj;->b(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
