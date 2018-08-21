.class public Lcom/flybird/FBEmbedView;
.super Landroid/view/View;
.source "FBEmbedView.java"


# instance fields
.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPlugin:Lcom/alipay/android/app/template/FBPlugin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/flybird/FBEmbedView;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flybird/FBEmbedView;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public apply()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/flybird/FBEmbedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flybird/FBEmbedView;->mPlugin:Lcom/alipay/android/app/template/FBPlugin;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flybird/FBEmbedView;->mPlugin:Lcom/alipay/android/app/template/FBPlugin;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/android/app/template/FBPlugin;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flybird/FBEmbedView;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/flybird/FBEmbedView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flybird/FBEmbedView;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    return-object v1

    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "FBEmbedView must have a valid FBPlugin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FBEmbedView must have a non-null ViewGroup viewParent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPlugin(Lcom/alipay/android/app/template/FBPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBEmbedView;->mPlugin:Lcom/alipay/android/app/template/FBPlugin;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBEmbedView;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBEmbedView;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setVisibility called on un-referenced view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/flybird/FBEmbedView;->apply()Landroid/view/View;

    goto :goto_0
.end method
