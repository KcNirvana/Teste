.class public Lcom/flybird/FBNav;
.super Lcom/flybird/FBView;
.source "FBNav.java"

# interfaces
.implements Lcom/alipay/android/app/template/FBContext$NavbarInterface;


# instance fields
.field private mLeftElement:Landroid/view/ViewGroup;

.field private mMiddleElement:Landroid/view/ViewGroup;

.field private mRightElement:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    return-void
.end method

.method private prepareElements()V
    .locals 2

    invoke-virtual {p0}, Lcom/flybird/FBNav;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/flybird/FBNav;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/flybird/FBNav;->mRightElement:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/flybird/FBNav;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/flybird/FBNav;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/flybird/FBNav;->mMiddleElement:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/flybird/FBNav;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/flybird/FBNav;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/flybird/FBNav;->mLeftElement:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-le v0, p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeftElement()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBNav;->mLeftElement:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/flybird/FBNav;->prepareElements()V

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBNav;->mLeftElement:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMiddleElemenet()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBNav;->mMiddleElement:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/flybird/FBNav;->prepareElements()V

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBNav;->mMiddleElement:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getRightElement()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBNav;->mRightElement:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/flybird/FBNav;->prepareElements()V

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBNav;->mRightElement:Landroid/view/ViewGroup;

    return-object v0
.end method
