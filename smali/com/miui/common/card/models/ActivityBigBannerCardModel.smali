.class public Lcom/miui/common/card/models/ActivityBigBannerCardModel;
.super Lcom/miui/common/card/models/ActivityCardModel;
.source ""


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;I)V
    .locals 1

    const v0, 0x7f030042

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/common/card/models/ActivityCardModel;-><init>(ILorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 2

    new-instance v0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;-><init>(Lcom/miui/common/card/models/ActivityCardModel;Landroid/view/View;)V

    sget-object v1, Lcom/miui/common/b/q;->azQ:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->setIconDisplayOption(Lcom/nostra13/universalimageloader/core/n;)V

    return-object v0
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
