.class Lcom/amap/api/col/gn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/amap/api/col/gm;


# direct methods
.method constructor <init>(Lcom/amap/api/col/gm;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/gn;->a:Lcom/amap/api/col/gm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/gn;->a:Lcom/amap/api/col/gm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/col/gm;->a:Z

    iget-object v0, p0, Lcom/amap/api/col/gn;->a:Lcom/amap/api/col/gm;

    invoke-static {p2}, Lcom/amap/api/col/cr$a;->a(Landroid/os/IBinder;)Lcom/amap/api/col/cr;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/gm;->a(Lcom/amap/api/col/gm;Lcom/amap/api/col/cr;)Lcom/amap/api/col/cr;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/gn;->a:Lcom/amap/api/col/gm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amap/api/col/gm;->a:Z

    iget-object v0, p0, Lcom/amap/api/col/gn;->a:Lcom/amap/api/col/gm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/col/gm;->a(Lcom/amap/api/col/gm;Lcom/amap/api/col/cr;)Lcom/amap/api/col/cr;

    return-void
.end method
