.class Lcom/xiaomi/mistatistic/sdk/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/aa$b;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/a/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/d;->a:Lcom/xiaomi/mistatistic/sdk/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/d;->a:Lcom/xiaomi/mistatistic/sdk/a/a/c;

    invoke-static {v1, p1}, Lcom/xiaomi/mistatistic/sdk/a/a/c;->a(Lcom/xiaomi/mistatistic/sdk/a/a/c;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/d;->a:Lcom/xiaomi/mistatistic/sdk/a/a/c;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/a/c;->a(Lcom/xiaomi/mistatistic/sdk/a/a/c;)Lcom/xiaomi/mistatistic/sdk/a/a/c$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/a/c$a;->a(Z)V

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Upload MiStat data failed: "

    invoke-static {v2, v1}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
