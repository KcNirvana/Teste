.class public Lcom/miui/common/card/CardViewAdapter;
.super Landroid/widget/ArrayAdapter;
.source ""


# static fields
.field public static final PAGE_INDEX_HOMEPAGE:I = 0x0

.field public static final PAGE_INDEX_RESULTPAGE:I = 0x1

.field public static final PAGE_INDEX_RESULTPAGE_FIRSTAIDKIT:I = 0x2


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private menuBinder:Lcom/miui/securityscan/cards/l;

.field private modelList:Ljava/util/ArrayList;

.field private pageIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/common/card/CardViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-direct {p0, p1, p4}, Lcom/miui/common/card/CardViewAdapter;->init(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/miui/common/card/CardViewAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/miui/common/card/CardViewAdapter;->handler:Landroid/os/Handler;

    iput p4, p0, Lcom/miui/common/card/CardViewAdapter;->pageIndex:I

    return-void
.end method

.method private init(Landroid/content/Context;I)V
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Lcom/miui/securityscan/cards/l;

    invoke-direct {v0, p1}, Lcom/miui/securityscan/cards/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/common/card/CardViewAdapter;->menuBinder:Lcom/miui/securityscan/cards/l;

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/CardViewAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private statEvent(Lcom/miui/common/card/models/BaseCardModel;Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/common/card/CardViewAdapter;->pageIndex:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p2, p1}, Lcom/miui/securityscan/d/a;->KV(Landroid/content/Context;Lcom/miui/common/card/models/BaseCardModel;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/miui/securityscan/d/a;->KP(Lcom/miui/common/card/models/BaseCardModel;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/miui/securityscan/d/a;->KF(Lcom/miui/common/card/models/BaseCardModel;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/BaseCardModel;->getLayoutIdType()I

    move-result v0

    return v0
.end method

.method public getModelList()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    iput-boolean v4, v0, Lcom/miui/common/card/models/BaseCardModel;->canRrfreshFunctStatus:Z

    iget-object v1, p0, Lcom/miui/common/card/CardViewAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/miui/common/card/CardViewAdapter;->statEvent(Lcom/miui/common/card/models/BaseCardModel;Landroid/content/Context;)V

    iget-boolean v1, v0, Lcom/miui/common/card/models/BaseCardModel;->noConvertView:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/CardViewAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Lcom/miui/common/card/models/BaseCardModel;->getLayoutId()I

    move-result v2

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/BaseCardModel;->createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/common/card/CardViewAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/miui/common/card/BaseViewHolder;->init(Landroid/os/Handler;)V

    invoke-virtual {v2, v1, v0, p1}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    :goto_0
    iget-boolean v0, v0, Lcom/miui/common/card/models/BaseCardModel;->noConvertView:Z

    if-eqz v0, :cond_5

    :goto_1
    return-object v1

    :cond_0
    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/miui/common/card/CardViewAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Lcom/miui/common/card/models/BaseCardModel;->getLayoutId()I

    move-result v2

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/miui/common/card/models/BaseCardModel;->createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/card/CardViewAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/miui/common/card/BaseViewHolder;->init(Landroid/os/Handler;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_2
    iget-object v1, p0, Lcom/miui/common/card/CardViewAdapter;->menuBinder:Lcom/miui/securityscan/cards/l;

    invoke-virtual {v2, p1, v1}, Lcom/miui/common/card/BaseViewHolder;->bindData(ILjava/lang/Object;)V

    add-int/lit8 v1, p1, 0x1

    iget-object v4, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v1, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/common/card/models/LineCardModel;

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    :cond_2
    instance-of v1, v0, Lcom/miui/common/card/models/FunctionCardModel;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/miui/common/card/models/FunctionCardModel;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setNoDivider(Z)V

    :cond_3
    invoke-virtual {v2, p2, v0, p1}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    move-object v1, v3

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/BaseViewHolder;

    move-object v2, v1

    goto :goto_2

    :cond_5
    move-object v1, p2

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-static {}, Lcom/miui/common/card/models/BaseCardModel;->getLayoutTypeCount()I

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/CardViewAdapter;->menuBinder:Lcom/miui/securityscan/cards/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/CardViewAdapter;->menuBinder:Lcom/miui/securityscan/cards/l;

    invoke-virtual {v0}, Lcom/miui/securityscan/cards/l;->onDestroy()V

    :cond_0
    return-void
.end method

.method public setModelList(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

    return-void
.end method
