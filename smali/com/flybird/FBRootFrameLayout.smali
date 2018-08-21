.class public Lcom/flybird/FBRootFrameLayout;
.super Landroid/widget/FrameLayout;
.source "FBRootFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flybird/FBRootFrameLayout$OnSizeChangedListener;
    }
.end annotation


# instance fields
.field private mOnSizeChangedListener:Lcom/flybird/FBRootFrameLayout$OnSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/flybird/FBRootFrameLayout;->mOnSizeChangedListener:Lcom/flybird/FBRootFrameLayout$OnSizeChangedListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flybird/FBRootFrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/flybird/FBRootFrameLayout;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/flybird/FBRootFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flybird/FBTools;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flybird/FBRootFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBRootFrameLayout;->mOnSizeChangedListener:Lcom/flybird/FBRootFrameLayout$OnSizeChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/flybird/FBRootFrameLayout$OnSizeChangedListener;->onSizeChanged(IIII)V

    :cond_1
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/flybird/FBRootFrameLayout$OnSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBRootFrameLayout;->mOnSizeChangedListener:Lcom/flybird/FBRootFrameLayout$OnSizeChangedListener;

    return-void
.end method
