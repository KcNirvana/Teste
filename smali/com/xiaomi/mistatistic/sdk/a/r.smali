.class Lcom/xiaomi/mistatistic/sdk/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/q;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/q;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/r;->a:Lcom/xiaomi/mistatistic/sdk/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/r;->a:Lcom/xiaomi/mistatistic/sdk/a/q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/q;->a(Lcom/xiaomi/mistatistic/sdk/a/q;Z)Z

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/r;->a:Lcom/xiaomi/mistatistic/sdk/a/q;

    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/a$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/mistatistic/sdk/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/q;->a(Lcom/xiaomi/mistatistic/sdk/a/q;Lcom/xiaomi/mistatistic/sdk/a;)Lcom/xiaomi/mistatistic/sdk/a;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/r;->a:Lcom/xiaomi/mistatistic/sdk/a/q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/q;->a(Lcom/xiaomi/mistatistic/sdk/a/q;Z)Z

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/r;->a:Lcom/xiaomi/mistatistic/sdk/a/q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/q;->a(Lcom/xiaomi/mistatistic/sdk/a/q;Lcom/xiaomi/mistatistic/sdk/a;)Lcom/xiaomi/mistatistic/sdk/a;

    return-void
.end method
