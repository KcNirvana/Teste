.class public Lcom/miui/common/datamodel/LocalFunction;
.super Lcom/miui/common/datamodel/BaseModel;
.source ""


# instance fields
.field protected mDelegate:Lcom/miui/common/datamodel/BaseModel;

.field protected mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/datamodel/BaseModel;-><init>()V

    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/LocalFunction;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/LocalFunction;->mDelegate:Lcom/miui/common/datamodel/BaseModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/datamodel/LocalFunction;->mDelegate:Lcom/miui/common/datamodel/BaseModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/common/datamodel/BaseModel;->aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/common/datamodel/BaseModel;->aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V

    return-void
.end method

.method public aKc(Lcom/miui/common/datamodel/BaseModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/datamodel/LocalFunction;->mDelegate:Lcom/miui/common/datamodel/BaseModel;

    return-void
.end method

.method public aKd(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/LocalFunction;->mDelegate:Lcom/miui/common/datamodel/BaseModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/datamodel/LocalFunction;->mDelegate:Lcom/miui/common/datamodel/BaseModel;

    invoke-virtual {v0, p1}, Lcom/miui/common/datamodel/BaseModel;->aKd(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/datamodel/BaseModel;->aKd(Ljava/lang/String;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/LocalFunction;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/LocalFunction;->mDelegate:Lcom/miui/common/datamodel/BaseModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/datamodel/LocalFunction;->mDelegate:Lcom/miui/common/datamodel/BaseModel;

    invoke-virtual {v0}, Lcom/miui/common/datamodel/BaseModel;->getLayoutId()I

    move-result v0

    return v0

    :cond_0
    const v0, 0x7f030083

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/LocalFunction;->mDelegate:Lcom/miui/common/datamodel/BaseModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/datamodel/LocalFunction;->mDelegate:Lcom/miui/common/datamodel/BaseModel;

    invoke-virtual {v0, p1}, Lcom/miui/common/datamodel/BaseModel;->onClick(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/datamodel/BaseModel;->onClick(Landroid/view/View;)V

    return-void
.end method
