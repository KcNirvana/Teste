.class Lcom/xiaomi/mistatistic/sdk/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/m$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/u;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/v;->a:Lcom/xiaomi/mistatistic/sdk/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/v;->a:Lcom/xiaomi/mistatistic/sdk/a/u;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/u;->a:Lcom/xiaomi/mistatistic/sdk/a/s;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/s;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/v;->a:Lcom/xiaomi/mistatistic/sdk/a/u;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/u;->a:Lcom/xiaomi/mistatistic/sdk/a/s;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/s;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    add-int/lit8 v0, v1, 0x1e

    if-lt v0, v3, :cond_0

    invoke-interface {v2, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_1
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/a/v;->a:Lcom/xiaomi/mistatistic/sdk/a/u;

    iget-object v4, v4, Lcom/xiaomi/mistatistic/sdk/a/u;->a:Lcom/xiaomi/mistatistic/sdk/a/s;

    new-instance v5, Lcom/xiaomi/mistatistic/sdk/a/w;

    invoke-direct {v5, p0, v0}, Lcom/xiaomi/mistatistic/sdk/a/w;-><init>(Lcom/xiaomi/mistatistic/sdk/a/v;Ljava/util/List;)V

    invoke-static {v4, v0, v5}, Lcom/xiaomi/mistatistic/sdk/a/s;->a(Lcom/xiaomi/mistatistic/sdk/a/s;Ljava/util/List;Lcom/xiaomi/mistatistic/sdk/a/aa$b;)V

    add-int/lit8 v0, v1, 0x1e

    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1e

    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void

    :catch_1
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/v;->a:Lcom/xiaomi/mistatistic/sdk/a/u;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/u;->a:Lcom/xiaomi/mistatistic/sdk/a/s;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/s;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/v;->a:Lcom/xiaomi/mistatistic/sdk/a/u;

    iget-object v1, v1, Lcom/xiaomi/mistatistic/sdk/a/u;->a:Lcom/xiaomi/mistatistic/sdk/a/s;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/a/x;

    invoke-direct {v2, p0}, Lcom/xiaomi/mistatistic/sdk/a/x;-><init>(Lcom/xiaomi/mistatistic/sdk/a/v;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/mistatistic/sdk/a/s;->a(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/a/aa$b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
