.class public abstract Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
.super Lcom/alipay/android/app/b/c/a;
.source "FlybirdIFormShower.java"

# interfaces
.implements Lcom/alipay/android/app/flybird/ui/show/IShower;


# static fields
.field public static final KEY_ID:Ljava/lang/String; = "CallingPid"


# instance fields
.field protected mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/b/c/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public addMaskView()V
    .locals 0

    return-void
.end method

.method public abstract dismissLoading()V
.end method

.method public abstract getCurrentView()Landroid/view/View;
.end method

.method public abstract getShowerActivity()Landroid/app/Activity;
.end method

.method public hideContentView()V
    .locals 0

    return-void
.end method

.method protected notifyFpAuthTimeout()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "fingerprint_authenticate_result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "result"

    const/16 v2, 0x71

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method protected notifyFpRegisterTimeout()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "msp.fp.register.broadcaster"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "result"

    const/16 v2, 0x71

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public removeMaskView()V
    .locals 0

    return-void
.end method

.method public abstract setAnimMode(I)V
.end method

.method public abstract setOnFormEventLinstener(Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;)V
.end method

.method public abstract showContentView(Landroid/view/View;ILcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
.end method

.method public abstract showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract showLoading([Ljava/lang/String;)V
.end method

.method public abstract showToast(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public updateProgressMessage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
