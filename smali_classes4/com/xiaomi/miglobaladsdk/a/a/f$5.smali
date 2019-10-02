.class Lcom/xiaomi/miglobaladsdk/a/a/f$5;
.super Ljava/lang/Object;
.source "MiConfigLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/a/a/f;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/a/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/a/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$5;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$5;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->e(Lcom/xiaomi/miglobaladsdk/a/a/f;)I

    move-result v0

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/a/f;->c()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$5;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->f(Lcom/xiaomi/miglobaladsdk/a/a/f;)J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/a/f;->d()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "MiAdBlacklistConfig"

    const-string v1, "request retry : can\'t retry more than 3 times in 30 minutes!"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$5;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a(Lcom/xiaomi/miglobaladsdk/a/a/f;I)I

    const-string v0, "MiAdBlacklistConfig"

    const-string v1, "request retry : timeout reset times"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$5;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->b()V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$5;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->g(Lcom/xiaomi/miglobaladsdk/a/a/f;)I

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$5;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/a/a/f;->b(Lcom/xiaomi/miglobaladsdk/a/a/f;J)J

    const-string v0, "MiAdBlacklistConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request retry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$5;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-static {v2}, Lcom/xiaomi/miglobaladsdk/a/a/f;->e(Lcom/xiaomi/miglobaladsdk/a/a/f;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
