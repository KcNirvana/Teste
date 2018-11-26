.class public Lcom/miui/common/datamodel/CardTitle;
.super Lcom/miui/common/datamodel/BaseModel;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x4d9022ffbec6526cL


# instance fields
.field private cardId:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private cornerTip:Ljava/lang/String;

.field private index:I

.field private models:Ljava/util/List;

.field private num:I

.field private perpage:I

.field private rowType:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private template:I

.field private title:Ljava/lang/String;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/miui/common/datamodel/BaseModel;-><init>()V

    iput v1, p0, Lcom/miui/common/datamodel/CardTitle;->template:I

    const-string/jumbo v0, "item"

    iput-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->rowType:Ljava/lang/String;

    iput v1, p0, Lcom/miui/common/datamodel/CardTitle;->perpage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->models:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/miui/common/datamodel/BaseModel;-><init>()V

    iput v1, p0, Lcom/miui/common/datamodel/CardTitle;->template:I

    const-string/jumbo v0, "item"

    iput-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->rowType:Ljava/lang/String;

    iput v1, p0, Lcom/miui/common/datamodel/CardTitle;->perpage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->models:Ljava/util/List;

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->title:Ljava/lang/String;

    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->summary:Ljava/lang/String;

    const-string/jumbo v0, "category"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->category:Ljava/lang/String;

    const-string/jumbo v0, "cornerTip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->cornerTip:Ljava/lang/String;

    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/datamodel/CardTitle;->template:I

    const-string/jumbo v0, "rowType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->rowType:Ljava/lang/String;

    const-string/jumbo v0, "perpage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/datamodel/CardTitle;->perpage:I

    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->cardId:Ljava/lang/String;

    const-string/jumbo v0, "visible"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/common/datamodel/CardTitle;->visible:Z

    return-void
.end method

.method public static aKQ(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/common/datamodel/BaseModel;->aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/t;

    iget-object v1, v0, Lcom/miui/common/datamodel/t;->aBb:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/common/datamodel/CardTitle;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/common/datamodel/CardTitle;->cornerTip:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/miui/common/datamodel/t;->aBa:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget v1, p0, Lcom/miui/common/datamodel/CardTitle;->template:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/common/datamodel/CardTitle;->models:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/miui/common/datamodel/CardTitle;->perpage:I

    if-le v1, v2, :cond_1

    iget-object v1, v0, Lcom/miui/common/datamodel/t;->aAZ:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v0, Lcom/miui/common/datamodel/t;->aAZ:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, v0, Lcom/miui/common/datamodel/t;->aBa:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/common/datamodel/CardTitle;->cornerTip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/common/datamodel/t;->aBa:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/miui/common/datamodel/t;->aAZ:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public aKR()Z
    .locals 2

    iget v0, p0, Lcom/miui/common/datamodel/CardTitle;->template:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aKS()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->models:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public aKT()I
    .locals 1

    iget v0, p0, Lcom/miui/common/datamodel/CardTitle;->perpage:I

    return v0
.end method

.method public aKU(Lcom/miui/common/datamodel/BaseModel;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->models:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->cardId:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f030181

    return v0
.end method

.method public getTemplate()I
    .locals 1

    iget v0, p0, Lcom/miui/common/datamodel/CardTitle;->template:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/datamodel/CardTitle;->visible:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget v0, p0, Lcom/miui/common/datamodel/CardTitle;->template:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v0, p0, Lcom/miui/common/datamodel/CardTitle;->index:I

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->models:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget v0, p0, Lcom/miui/common/datamodel/CardTitle;->index:I

    iget v4, p0, Lcom/miui/common/datamodel/CardTitle;->perpage:I

    add-int/2addr v0, v4

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->models:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/BaseModel;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/common/datamodel/CardTitle;->index:I

    iget v1, p0, Lcom/miui/common/datamodel/CardTitle;->perpage:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/common/datamodel/CardTitle;->index:I

    iget v0, p0, Lcom/miui/common/datamodel/CardTitle;->index:I

    iget-object v1, p0, Lcom/miui/common/datamodel/CardTitle;->models:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/common/datamodel/CardTitle;->index:I

    :cond_1
    iget v0, p0, Lcom/miui/common/datamodel/CardTitle;->index:I

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->models:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget v0, p0, Lcom/miui/common/datamodel/CardTitle;->index:I

    iget v4, p0, Lcom/miui/common/datamodel/CardTitle;->perpage:I

    add-int/2addr v0, v4

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->models:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/BaseModel;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/common/datamodel/CardTitle;->listAdapter:Lcom/miui/common/datamodel/z;

    invoke-virtual {v0, p0, v2, v3}, Lcom/miui/common/datamodel/z;->aKr(Lcom/miui/common/datamodel/BaseModel;Ljava/util/List;Ljava/util/List;)V

    :cond_3
    return-void
.end method
