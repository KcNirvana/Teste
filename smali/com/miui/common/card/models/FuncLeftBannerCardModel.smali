.class public Lcom/miui/common/card/models/FuncLeftBannerCardModel;
.super Lcom/miui/common/card/models/FunctionCardModel;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncLeftBannerCardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    const v0, 0x7f030056

    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/FunctionCardModel;-><init>(ILcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 2

    new-instance v0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;-><init>(Landroid/view/View;)V

    sget-object v1, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->setIconDisplayOption(Lcom/nostra13/universalimageloader/core/n;)V

    return-object v0
.end method
