.class public abstract Lcom/miui/securityscan/model/AbsModel;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final REQUEST_CODE_AUTO_ITEM:I = 0x65

.field public static final REQUEST_CODE_GARBAGE_CLEAN:I = 0x67

.field public static final REQUEST_CODE_MANUAL_ITEM:I = 0x64

.field public static final REQUEST_CODE_REALNAME_VERIFY:I = 0x66


# instance fields
.field private checked:Z

.field private delayOptimize:Z

.field private firstAidEventHandler:Landroid/os/Handler;

.field private handler:Landroid/os/Handler;

.field private isFixed:Z

.field private itemKey:Ljava/lang/String;

.field private onAbsModelDisplayListener:Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;

.field private safeState:Lcom/miui/securityscan/model/AbsModel$State;

.field private scanHide:Z

.field private score:I

.field private trackIgnoreStr:Ljava/lang/String;

.field private trackStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/miui/securityscan/model/AbsModel;->delayOptimize:Z

    iput-boolean v2, p0, Lcom/miui/securityscan/model/AbsModel;->scanHide:Z

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    iput-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->safeState:Lcom/miui/securityscan/model/AbsModel$State;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->handler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/miui/securityscan/model/AbsModel;->isFixed:Z

    iput-boolean v2, p0, Lcom/miui/securityscan/model/AbsModel;->checked:Z

    iput-object p1, p0, Lcom/miui/securityscan/model/AbsModel;->itemKey:Ljava/lang/String;

    iput p2, p0, Lcom/miui/securityscan/model/AbsModel;->score:I

    return-void
.end method


# virtual methods
.method public getButtonTitle()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDesc()Ljava/lang/String;
.end method

.method public getFirstAidEventHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->firstAidEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public abstract getIndex()I
.end method

.method public getItemKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->itemKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOnAbsModelDisplayListener()Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->onAbsModelDisplayListener:Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/model/AbsModel;->score:I

    return v0
.end method

.method public abstract getSummary()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public getTrackIgnoreStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->trackIgnoreStr:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->trackStr:Ljava/lang/String;

    return-object v0
.end method

.method public ignore()V
    .locals 0

    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/model/AbsModel;->checked:Z

    return v0
.end method

.method public isDelayOptimized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/model/AbsModel;->delayOptimize:Z

    return v0
.end method

.method public isFixed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/model/AbsModel;->isFixed:Z

    return v0
.end method

.method public isSafe()Lcom/miui/securityscan/model/AbsModel$State;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->safeState:Lcom/miui/securityscan/model/AbsModel$State;

    return-object v0
.end method

.method public isScanHide()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/model/AbsModel;->scanHide:Z

    return v0
.end method

.method public abstract optimize(Landroid/app/Activity;)V
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract scan()V
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/model/AbsModel;->checked:Z

    return-void
.end method

.method protected setDelayOptimized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/model/AbsModel;->delayOptimize:Z

    return-void
.end method

.method public setFirstAidEventHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/AbsModel;->firstAidEventHandler:Landroid/os/Handler;

    return-void
.end method

.method public setFixed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/model/AbsModel;->isFixed:Z

    return-void
.end method

.method public setOnAbsModelDisplayListener(Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/AbsModel;->onAbsModelDisplayListener:Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;

    return-void
.end method

.method public setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/AbsModel;->safeState:Lcom/miui/securityscan/model/AbsModel$State;

    return-void
.end method

.method protected setScanHide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/model/AbsModel;->scanHide:Z

    return-void
.end method

.method public setTrackIgnoreStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/AbsModel;->trackIgnoreStr:Ljava/lang/String;

    return-void
.end method

.method protected setTrackStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/AbsModel;->trackStr:Ljava/lang/String;

    return-void
.end method
