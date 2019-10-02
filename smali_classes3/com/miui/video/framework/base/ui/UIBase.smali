.class public abstract Lcom/miui/video/framework/base/ui/UIBase;
.super Landroid/widget/RelativeLayout;
.source "UIBase.java"

# interfaces
.implements Lcom/miui/video/framework/impl/IInitListener;
.implements Lcom/miui/video/framework/impl/IUIStyle;
.implements Lcom/miui/video/framework/impl/IUIListener;


# instance fields
.field private mStyle:I

.field protected vView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/miui/video/framework/base/ui/UIBase;->initFindViews()V

    invoke-virtual {p0}, Lcom/miui/video/framework/base/ui/UIBase;->initViewsValue()V

    invoke-virtual {p0}, Lcom/miui/video/framework/base/ui/UIBase;->initViewsEvent()V

    return-void
.end method


# virtual methods
.method public getStyle()I
    .locals 1

    iget v0, p0, Lcom/miui/video/framework/base/ui/UIBase;->mStyle:I

    return v0
.end method

.method protected inflateView(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/framework/base/ui/UIBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/miui/video/framework/base/ui/UIBase;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/framework/base/ui/UIBase;->vView:Landroid/view/View;

    return-void
.end method

.method protected initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method

.method public initFindViews()V
    .locals 0

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

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

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

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 0

    return-void
.end method

.method public setStyle(I)V
    .locals 1

    iput p1, p0, Lcom/miui/video/framework/base/ui/UIBase;->mStyle:I

    iget p1, p0, Lcom/miui/video/framework/base/ui/UIBase;->mStyle:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/framework/base/ui/UIBase;->onStyleDark()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iget v0, p0, Lcom/miui/video/framework/base/ui/UIBase;->mStyle:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/framework/base/ui/UIBase;->onStyleLight()V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/miui/video/framework/base/ui/UIBase;->mStyle:I

    invoke-virtual {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;->onStyleChange(I)V

    :goto_0
    return-void
.end method
