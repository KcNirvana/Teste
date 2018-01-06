.class final Lcom/xiaomi/mistatistic/sdk/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "LER"

    const-string v1, "IStatService connected"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/xiaomi/xmsf/push/service/b$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/xmsf/push/service/b;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/xmsf/push/service/b;)Lcom/xiaomi/xmsf/push/service/b;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/b;->c()Lcom/xiaomi/xmsf/push/service/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/m;->a()Lcom/xiaomi/mistatistic/sdk/a/m;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/f;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/f;-><init>(Lcom/xiaomi/mistatistic/sdk/a/e;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/m;->a(Lcom/xiaomi/mistatistic/sdk/a/m$a;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "LER"

    const-string v1, "IStatService has unexpectedly disconnected"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/xmsf/push/service/b;)Lcom/xiaomi/xmsf/push/service/b;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Z)Z

    return-void
.end method
