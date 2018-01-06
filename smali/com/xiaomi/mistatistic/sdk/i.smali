.class final Lcom/xiaomi/mistatistic/sdk/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/i;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://10.99.168.145:8097/micrash"

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/i;->a:Ljava/util/Map;

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/j;

    invoke-direct {v2, p0}, Lcom/xiaomi/mistatistic/sdk/j;-><init>(Lcom/xiaomi/mistatistic/sdk/i;)V

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/aa;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/a/aa$b;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "https://data.mistat.xiaomi.com/micrash"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error to upload the exception "

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
