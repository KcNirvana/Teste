.class public Lcom/miui/securityscan/model/manualitem/RcsSwitchModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# instance fields
.field private Aw:Lcom/miui/securityscan/scanner/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/RcsSwitchModel;->setDelayOptimized(Z)V

    const-string/jumbo v0, "rcs_switch"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/RcsSwitchModel;->setTrackStr(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securityscan/scanner/a;->getInstance()Lcom/miui/securityscan/scanner/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/model/manualitem/RcsSwitchModel;->Aw:Lcom/miui/securityscan/scanner/a;

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/16 v0, 0x3b

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/RcsSwitchModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706d5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/RcsSwitchModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/miui/securityscan/c;->Os(Z)V

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/RcsSwitchModel;->Aw:Lcom/miui/securityscan/scanner/a;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/RcsSwitchModel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/a;->DE(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RcsSwitchModel"

    const-string/jumbo v2, "optimize exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public scan()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/RcsSwitchModel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/RcsSwitchModel;->Aw:Lcom/miui/securityscan/scanner/a;

    invoke-virtual {v1, v0}, Lcom/miui/securityscan/scanner/a;->DD(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/RcsSwitchModel;->Aw:Lcom/miui/securityscan/scanner/a;

    new-instance v2, Lcom/miui/securityscan/model/manualitem/m;

    invoke-direct {v2, p0}, Lcom/miui/securityscan/model/manualitem/m;-><init>(Lcom/miui/securityscan/model/manualitem/RcsSwitchModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/miui/securityscan/scanner/a;->DC(Landroid/content/Context;Lcom/miui/securityscan/scanner/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RcsSwitchModel"

    const-string/jumbo v2, "scan exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
