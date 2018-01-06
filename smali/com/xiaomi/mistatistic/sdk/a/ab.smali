.class final Lcom/xiaomi/mistatistic/sdk/a/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/aa$b;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/Map;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/aa$b;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/ab;->a:Lcom/xiaomi/mistatistic/sdk/a/aa$b;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/a/ab;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/a/ab;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/mistatistic/sdk/a/ab;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ab;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/ab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/a/ab;->e:Z

    return p1
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/m;->a()Lcom/xiaomi/mistatistic/sdk/a/m;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/ac;

    invoke-direct {v1, p0, p2, p0}, Lcom/xiaomi/mistatistic/sdk/a/ac;-><init>(Lcom/xiaomi/mistatistic/sdk/a/ab;Landroid/os/IBinder;Landroid/content/ServiceConnection;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/m;->a(Lcom/xiaomi/mistatistic/sdk/a/m$a;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "error while perform IPC connection."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ab;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ab;->a:Lcom/xiaomi/mistatistic/sdk/a/aa$b;

    invoke-interface {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/aa$b;->a(Ljava/lang/String;)V

    const-string v0, "disconnected, remote http post hasn\'t not processed"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
