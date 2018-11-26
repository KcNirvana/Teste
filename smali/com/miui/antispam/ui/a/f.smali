.class public Lcom/miui/antispam/ui/a/f;
.super Lcom/miui/antispam/ui/a/j;
.source ""


# instance fields
.field public VR:Ljava/util/List;

.field public VS:Landroid/util/SparseBooleanArray;

.field private VT:Ljava/util/HashMap;

.field private VU:I

.field public VV:Ljava/util/List;

.field public VW:Ljava/util/List;

.field public VX:Ljava/util/List;

.field private VY:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/a/j;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/antispam/ui/a/f;->VX:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/antispam/ui/a/f;->VR:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/antispam/ui/a/f;->VT:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/antispam/ui/a/f;->VW:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/antispam/ui/a/f;->VV:Ljava/util/List;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/miui/antispam/ui/a/f;->VS:Landroid/util/SparseBooleanArray;

    iput v0, p0, Lcom/miui/antispam/ui/a/f;->VU:I

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/miui/antispam/ui/a/f;->VY:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    iget-object v1, p0, Lcom/miui/antispam/ui/a/f;->VY:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    invoke-virtual {v1}, Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;->Wt()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    invoke-static {p1}, Lcom/miui/antispam/util/h;->XV(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antispam/ui/a/f;->VW:Ljava/util/List;

    iget v4, p0, Lcom/miui/antispam/ui/a/f;->VU:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/miui/antispam/ui/a/f;->VX:Ljava/util/List;

    const-string/jumbo v4, "n"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/miui/antispam/ui/a/f;->VV:Ljava/util/List;

    const-string/jumbo v4, "l"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string/jumbo v5, "n"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lcom/miui/antispam/ui/a/f;->Vo(Lorg/json/JSONArray;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public Vk(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VT:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected Vl()I
    .locals 1

    const v0, 0x1020001

    return v0
.end method

.method protected Vm()I
    .locals 1

    const v0, 0x7f030018

    return v0
.end method

.method public Vn(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0a0026

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/ui/a/f;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antispam/ui/a/g;

    iget-object v1, v1, Lcom/miui/antispam/ui/a/g;->Wa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p4
.end method

.method public Vo(Lorg/json/JSONArray;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "n"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "c"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/miui/antispam/ui/a/f;->VR:Ljava/util/List;

    new-instance v4, Lcom/miui/antispam/ui/a/g;

    invoke-direct {v4, p0, v2, v1, p2}, Lcom/miui/antispam/ui/a/g;-><init>(Lcom/miui/antispam/ui/a/f;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/antispam/ui/a/f;->VT:Ljava/util/HashMap;

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/miui/antispam/ui/a/f;->VU:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/antispam/ui/a/f;->VU:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method protected Vp()I
    .locals 1

    const v0, 0x1020001

    return v0
.end method

.method protected Vq()I
    .locals 1

    const v0, 0x7f030019

    return v0
.end method

.method protected Vr(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const v4, 0x7f0a00b7

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const v0, 0x7f0a0026

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a00b9

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/a/f;->getGroup(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a00b8

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    move v4, v3

    :goto_1
    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v6, p0, Lcom/miui/antispam/ui/a/f;->VS:Landroid/util/SparseBooleanArray;

    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v6, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lcom/miui/antispam/ui/a/f;->VR:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/a/g;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    const v0, 0x7f0a00b8

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-object p3

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v4, v0, :cond_4

    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->mContext:Landroid/content/Context;

    const v2, 0x7f07003a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    if-ne v4, v7, :cond_5

    iget-object v2, p0, Lcom/miui/antispam/ui/a/f;->mContext:Landroid/content/Context;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/a/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/a/g;->Wa:Ljava/lang/String;

    aput-object v0, v4, v3

    const v0, 0x7f07003d

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    if-ne v4, v8, :cond_6

    iget-object v2, p0, Lcom/miui/antispam/ui/a/f;->mContext:Landroid/content/Context;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/a/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/a/g;->Wa:Ljava/lang/String;

    aput-object v0, v4, v3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/a/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/a/g;->Wa:Ljava/lang/String;

    aput-object v0, v4, v7

    const v0, 0x7f07003c

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/miui/antispam/ui/a/f;->mContext:Landroid/content/Context;

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Object;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/a/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/a/g;->Wa:Ljava/lang/String;

    aput-object v0, v6, v3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/a/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/a/g;->Wa:Ljava/lang/String;

    aput-object v0, v6, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    const v0, 0x7f07003b

    invoke-virtual {v2, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method protected Vs(IIZ)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VS:Landroid/util/SparseBooleanArray;

    add-int v1, v3, p2

    invoke-virtual {v0, v1, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VS:Landroid/util/SparseBooleanArray;

    add-int v4, v3, v1

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VS:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/miui/antispam/ui/a/f;->VR:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/a/f;->Vu()V

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected Vt(IZ)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/a/f;->getChildrenCount(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/miui/antispam/ui/a/f;->VS:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VS:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/miui/antispam/ui/a/f;->VR:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/antispam/ui/a/f;->Vu()V

    return-void
.end method

.method public Vu()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VY:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;->Wt()Landroid/widget/Button;

    move-result-object v3

    iget v0, p0, Lcom/miui/antispam/ui/a/f;->Wg:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget v0, p0, Lcom/miui/antispam/ui/a/f;->Wg:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VY:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/antispam/ui/a/f;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/miui/antispam/ui/a/f;->Wg:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const v2, 0x7f0700ad

    invoke-virtual {v3, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Lcom/miui/antispam/ui/a/f;->notifyDataSetChanged()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VY:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0700ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Lcom/miui/antispam/ui/a/f;->VR:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    int-to-long v0, v0

    return-wide v0
.end method

.method public getChildrenCount(I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/a/f;->VR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
