.class public abstract Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UIRecyclerBase.java"

# interfaces
.implements Lcom/miui/video/framework/impl/IInitListener;
.implements Lcom/miui/video/framework/impl/IActivityListener;
.implements Lcom/miui/video/framework/impl/IUIClickListener;
.implements Lcom/miui/video/framework/impl/IUIStyle;


# instance fields
.field private mActivityListener:Lcom/miui/video/framework/impl/IActivityListener;

.field protected mContext:Landroid/content/Context;

.field private mStyle:I

.field protected mUIClickListener:Landroid/view/View$OnClickListener;

.field protected mUILongClickListener:Landroid/view/View$OnLongClickListener;

.field protected vView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->vView:Landroid/view/View;

    iput p3, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->mStyle:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->initFindViews()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->initViewsValue()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->initViewsEvent()V

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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->vView:Landroid/view/View;

    iput p4, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->mStyle:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->initFindViews()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->initViewsValue()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->initViewsEvent()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->vView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getIActivityListener()Lcom/miui/video/framework/impl/IActivityListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->mActivityListener:Lcom/miui/video/framework/impl/IActivityListener;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->mStyle:I

    return v0
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

.method public onThemeChanged()V
    .locals 0

    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setIActivityListener(Lcom/miui/video/framework/impl/IActivityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->mActivityListener:Lcom/miui/video/framework/impl/IActivityListener;

    return-void
.end method

.method public setStyle(I)V
    .locals 1

    iput p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->mStyle:I

    iget p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->mStyle:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->onStyleDark()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iget v0, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->mStyle:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->onStyleLight()V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->mStyle:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->onStyleChange(I)V

    :goto_0
    return-void
.end method

.method public setUIClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->mUIClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setUILongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->mUILongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method
