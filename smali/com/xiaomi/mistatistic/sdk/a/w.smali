.class Lcom/xiaomi/mistatistic/sdk/a/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/aa$b;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaomi/mistatistic/sdk/a/v;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/v;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/w;->b:Lcom/xiaomi/mistatistic/sdk/a/v;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/a/w;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http data complete, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ok"

    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/w;->b:Lcom/xiaomi/mistatistic/sdk/a/v;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/v;->a:Lcom/xiaomi/mistatistic/sdk/a/u;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/u;->a:Lcom/xiaomi/mistatistic/sdk/a/s;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/s;->a(Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/w;->b:Lcom/xiaomi/mistatistic/sdk/a/v;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/v;->a:Lcom/xiaomi/mistatistic/sdk/a/u;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/u;->a:Lcom/xiaomi/mistatistic/sdk/a/s;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/s;->a(Lcom/xiaomi/mistatistic/sdk/a/s;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/w;->b:Lcom/xiaomi/mistatistic/sdk/a/v;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/v;->a:Lcom/xiaomi/mistatistic/sdk/a/u;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/u;->a:Lcom/xiaomi/mistatistic/sdk/a/s;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/s;->a(Lcom/xiaomi/mistatistic/sdk/a/s;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/w;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "upload events response exception:"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
