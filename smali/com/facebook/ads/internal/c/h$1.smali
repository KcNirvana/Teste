.class Lcom/facebook/ads/internal/c/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/c/h;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/c/h$1;->a:Lcom/facebook/ads/internal/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lcom/facebook/ads/internal/c/h$1;->a:Lcom/facebook/ads/internal/c/h;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/facebook/ads/internal/c/h;->a:Landroid/os/Messenger;

    iget-object p1, p0, Lcom/facebook/ads/internal/c/h$1;->a:Lcom/facebook/ads/internal/c/h;

    const-string p2, "Attached."

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/c/h;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/facebook/ads/internal/c/h$1;->a:Lcom/facebook/ads/internal/c/h;

    iget-object p2, p0, Lcom/facebook/ads/internal/c/h$1;->a:Lcom/facebook/ads/internal/c/h;

    iget-object p2, p2, Lcom/facebook/ads/internal/c/h;->a:Landroid/os/Messenger;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/internal/c/h;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/c/h$1;->a:Lcom/facebook/ads/internal/c/h;

    iget-boolean p1, p1, Lcom/facebook/ads/internal/c/h;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/c/h$1;->a:Lcom/facebook/ads/internal/c/h;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/facebook/ads/internal/c/h;->c:Z

    iget-object p1, p0, Lcom/facebook/ads/internal/c/h$1;->a:Lcom/facebook/ads/internal/c/h;

    invoke-static {p1}, Lcom/facebook/ads/internal/c/h;->a(Lcom/facebook/ads/internal/c/h;)Lcom/facebook/ads/internal/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/c/b;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/facebook/ads/internal/c/h$1;->a:Lcom/facebook/ads/internal/c/h;

    invoke-static {p1}, Lcom/facebook/ads/internal/c/h;->b(Lcom/facebook/ads/internal/c/h;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/facebook/ads/internal/c/h$1;->a:Lcom/facebook/ads/internal/c/h;

    const-string p2, "Remote service connected."

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/c/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/c/h$1;->a:Lcom/facebook/ads/internal/c/h;

    const-string v0, "Disconnected."

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/c/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/c/h$1;->a:Lcom/facebook/ads/internal/c/h;

    iget-boolean p1, p1, Lcom/facebook/ads/internal/c/h;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/c/h$1;->a:Lcom/facebook/ads/internal/c/h;

    invoke-static {p1}, Lcom/facebook/ads/internal/c/h;->b(Lcom/facebook/ads/internal/c/h;)V

    :cond_0
    return-void
.end method
