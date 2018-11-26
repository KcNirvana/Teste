.class public Lcom/miui/common/card/functions/OptimizeFunction;
.super Lcom/miui/common/card/functions/BaseFunction;
.source ""


# instance fields
.field private amoListener:Lcom/miui/securityscan/scanner/n;

.field private curModel:Lcom/miui/securityscan/model/AbsModel;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/card/functions/BaseFunction;-><init>()V

    iput-object p1, p0, Lcom/miui/common/card/functions/OptimizeFunction;->amoListener:Lcom/miui/securityscan/scanner/n;

    iput-object p2, p0, Lcom/miui/common/card/functions/OptimizeFunction;->curModel:Lcom/miui/securityscan/model/AbsModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/card/functions/OptimizeFunction;->curModel:Lcom/miui/securityscan/model/AbsModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/functions/OptimizeFunction;->amoListener:Lcom/miui/securityscan/scanner/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/functions/OptimizeFunction;->amoListener:Lcom/miui/securityscan/scanner/n;

    iget-object v1, p0, Lcom/miui/common/card/functions/OptimizeFunction;->curModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-interface {v0, v1}, Lcom/miui/securityscan/scanner/n;->Ey(Lcom/miui/securityscan/model/AbsModel;)V

    iget-object v0, p0, Lcom/miui/common/card/functions/OptimizeFunction;->amoListener:Lcom/miui/securityscan/scanner/n;

    iget-object v1, p0, Lcom/miui/common/card/functions/OptimizeFunction;->curModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v1

    iget-object v2, p0, Lcom/miui/common/card/functions/OptimizeFunction;->curModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v2}, Lcom/miui/securityscan/model/AbsModel;->isDelayOptimized()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/miui/securityscan/scanner/n;->Ez(IZ)V

    :cond_0
    return-void
.end method

.method public onNegativeButtonClick()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/functions/OptimizeFunction;->curModel:Lcom/miui/securityscan/model/AbsModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/functions/OptimizeFunction;->amoListener:Lcom/miui/securityscan/scanner/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/functions/OptimizeFunction;->amoListener:Lcom/miui/securityscan/scanner/n;

    iget-object v1, p0, Lcom/miui/common/card/functions/OptimizeFunction;->curModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-interface {v0, v1}, Lcom/miui/securityscan/scanner/n;->EA(Lcom/miui/securityscan/model/AbsModel;)V

    :cond_0
    return-void
.end method
