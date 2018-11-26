.class public Lcom/miui/securityscan/model/system/CmccCheckModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# instance fields
.field private Ba:Lmiui/app/AlertDialog;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/system/CmccCheckModel;->setScanHide(Z)V

    return-void
.end method

.method private BF(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/securityscan/model/system/a;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/model/system/a;-><init>(Lcom/miui/securityscan/model/system/CmccCheckModel;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic BG(Lcom/miui/securityscan/model/system/CmccCheckModel;Lmiui/app/AlertDialog;)Lmiui/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/system/CmccCheckModel;->Ba:Lmiui/app/AlertDialog;

    return-object p1
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    invoke-super {p0}, Lcom/miui/securityscan/model/AbsModel;->finalize()V

    iget-object v0, p0, Lcom/miui/securityscan/model/system/CmccCheckModel;->Ba:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/model/system/CmccCheckModel;->Ba:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/model/system/CmccCheckModel;->Ba:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/system/CmccCheckModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/system/CmccCheckModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07070d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/system/CmccCheckModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/system/CmccCheckModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07070c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 2

    const-string/jumbo v0, "persist.sys.func_limit_switch"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/system/CmccCheckModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securitycenter/utils/d;->bqK(Landroid/content/Context;)Z

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/system/CmccCheckModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    invoke-direct {p0, p1}, Lcom/miui/securityscan/model/system/CmccCheckModel;->BF(Landroid/app/Activity;)V

    return-void
.end method

.method public scan()V
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/utils/d;->bqJ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/utils/d;->bqH()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/a;->brV()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/system/CmccCheckModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_1
.end method
