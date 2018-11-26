.class final Lcom/miui/optimizemanage/memoryclean/n;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic wp:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/memoryclean/n;->wp:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/m;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/miui/optimizemanage/memoryclean/n;->wp:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    invoke-static {v2, v0, v1}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->xw(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;Lcom/miui/optimizemanage/memoryclean/m;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
