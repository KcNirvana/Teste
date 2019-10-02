.class Lcom/xiaomi/miglobaladsdk/a/b$3$1;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/a/b$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/a/d;

.field final synthetic b:Lcom/xiaomi/miglobaladsdk/a/b$3;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/a/b$3;Lcom/xiaomi/miglobaladsdk/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/b$3$1;->b:Lcom/xiaomi/miglobaladsdk/a/b$3;

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/a/b$3$1;->a:Lcom/xiaomi/miglobaladsdk/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ConfigRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update config is success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/a/b$3$1;->a:Lcom/xiaomi/miglobaladsdk/a/d;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b$3$1;->a:Lcom/xiaomi/miglobaladsdk/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b$3$1;->a:Lcom/xiaomi/miglobaladsdk/a/d;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/a/d;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b$3$1;->b:Lcom/xiaomi/miglobaladsdk/a/b$3;

    iget-object v0, v0, Lcom/xiaomi/miglobaladsdk/a/b$3;->b:Lcom/xiaomi/miglobaladsdk/a/b;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/a/b$3$1;->a:Lcom/xiaomi/miglobaladsdk/a/d;

    invoke-virtual {v1}, Lcom/xiaomi/miglobaladsdk/a/d;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/a/b;->a(Lcom/xiaomi/miglobaladsdk/a/b;Ljava/util/Map;)Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b$3$1;->b:Lcom/xiaomi/miglobaladsdk/a/b$3;

    iget-object v0, v0, Lcom/xiaomi/miglobaladsdk/a/b$3;->b:Lcom/xiaomi/miglobaladsdk/a/b;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/a/b;->a(Lcom/xiaomi/miglobaladsdk/a/b;)V

    return-void
.end method
