.class Lcom/xiaomi/mistatistic/sdk/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/m$a;

.field final synthetic b:Lcom/xiaomi/mistatistic/sdk/a/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/m;Lcom/xiaomi/mistatistic/sdk/a/m$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->b:Lcom/xiaomi/mistatistic/sdk/a/m;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->a:Lcom/xiaomi/mistatistic/sdk/a/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->a:Lcom/xiaomi/mistatistic/sdk/a/m$a;

    invoke-interface {v0}, Lcom/xiaomi/mistatistic/sdk/a/m$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "error while executing job."

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
