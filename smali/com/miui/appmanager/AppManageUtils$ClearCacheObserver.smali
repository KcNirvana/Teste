.class public Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source ""


# instance fields
.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
