.class public abstract Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UIRecyclerBase.java"

# interfaces
.implements Lcom/miui/video/framework/impl/IInitListener;
.implements Lcom/miui/video/framework/impl/IUIStyle;
.implements Lcom/miui/video/framework/impl/IUIListener;
.implements Lcom/miui/video/framework/impl/IUIClickListener;
.implements Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;


# instance fields
.field private actionDelegateFactory:Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;

.field protected mContext:Landroid/content/Context;

.field private mStyle:I

.field protected mUIClickListener:Landroid/view/View$OnClickListener;

.field protected mUILongClickListener:Landroid/view/View$OnLongClickListener;

.field protected vView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->mStyle:I

    iput-object p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->vView:Landroid/view/View;

    iput p3, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->mStyle:I

    invoke-virtual {p0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->initUI()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->mStyle:I

    iput-object p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->vView:Landroid/view/View;

    iput p4, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->mStyle:I

    invoke-virtual {p0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->initUI()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->vView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getActionDelegateFactory()Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->actionDelegateFactory:Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->mStyle:I

    return v0
.end method

.method public initFindViews()V
    .locals 0

    return-void
.end method

.method public initUI()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->initFindViews()V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->initViewsEvent()V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->initViewsValue()V

    return-void
.end method

.method public initViewsEvent()V
    .locals 0

    return-void
.end method

.method public initViewsValue()V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    return-void
.end method

.method public onStyleChange(I)V
    .locals 0

    return-void
.end method

.method public onStyleDark()V
    .locals 0

    return-void
.end method

.method public onStyleLight()V
    .locals 0

    return-void
.end method

.method public onUIAttached()V
    .locals 0

    return-void
.end method

.method public onUIDetached()V
    .locals 0

    return-void
.end method

.method public onUIHide()V
    .locals 0

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onUIShow()V
    .locals 0

    return-void
.end method

.method public raiseAction(ILjava/lang/Object;)V
    .locals 7
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->actionDelegateFactory:Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->actionDelegateFactory:Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;

    invoke-interface {v0, p2}, Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;->createActionDelegate(Ljava/lang/Object;)Lcom/miui/video/common/feed/architeture/action/ViewObjectActionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/miui/video/common/feed/architeture/action/ViewObjectActionListener;->onActionRaised(Landroid/content/Context;Ljava/lang/Class;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setActionDelegateFactory(Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->actionDelegateFactory:Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;

    return-void
.end method

.method public abstract setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
.end method

.method public setStyle(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->mStyle:I

    return-void
.end method

.method public setUIClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->mUIClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setUILongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->mUILongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method
