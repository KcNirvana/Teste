.class public Lcom/miui/video/common/feed/ui/adapter/UIAdapter;
.super Landroid/widget/BaseAdapter;
.source "UIAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFactory:Lcom/miui/video/common/feed/recyclerview/IUIFactory;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;->mFactory:Lcom/miui/video/common/feed/recyclerview/IUIFactory;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p1}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getLayoutType()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;->mFactory:Lcom/miui/video/common/feed/recyclerview/IUIFactory;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getLayoutType()I

    move-result v2

    invoke-interface {p2, v1, v2, p1, p3}, Lcom/miui/video/common/feed/recyclerview/IUIFactory;->getUIView(Landroid/content/Context;IILandroid/view/ViewGroup;)Lcom/miui/video/framework/base/ui/UIBase;

    move-result-object p2

    :cond_0
    instance-of p3, p2, Lcom/miui/video/framework/base/ui/UIBase;

    if-eqz p3, :cond_1

    move-object p3, p2

    check-cast p3, Lcom/miui/video/framework/base/ui/UIBase;

    const-string v1, "ACTION_SET_VALUE"

    invoke-virtual {p3, v1, p1, v0}, Lcom/miui/video/framework/base/ui/UIBase;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p3, p1, v0}, Lcom/miui/video/framework/base/ui/UIBase;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    :cond_1
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;->mFactory:Lcom/miui/video/common/feed/recyclerview/IUIFactory;

    invoke-interface {v0}, Lcom/miui/video/common/feed/recyclerview/IUIFactory;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public setData(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;->mList:Ljava/util/List;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;->mList:Ljava/util/List;

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1
.end method

.method public setUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;->mFactory:Lcom/miui/video/common/feed/recyclerview/IUIFactory;

    return-void
.end method
