.class public Lcom/android/camera/ui/BeautyTitleView;
.super Landroid/widget/LinearLayout;
.source "BeautyTitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/BeautyTitleView$Adapter;,
        Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;,
        Lcom/android/camera/ui/BeautyTitleView$CommonChildAnimationsProvider;,
        Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;,
        Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;,
        Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;,
        Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;
    }
.end annotation


# instance fields
.field private mActiveIdx:I

.field private mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

.field private mAnimationsProviders:[Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

.field private mExpand:Z

.field private mListener:Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;


# direct methods
.method static synthetic -wrap0(Lcom/android/camera/ui/BeautyTitleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/BeautyTitleView;->updateData()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

    new-instance v1, Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;

    invoke-direct {v1}, Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/ui/BeautyTitleView$CommonChildAnimationsProvider;

    invoke-direct {v1}, Lcom/android/camera/ui/BeautyTitleView$CommonChildAnimationsProvider;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mAnimationsProviders:[Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

    new-instance v0, Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;

    invoke-direct {v0, v4}, Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;-><init>(Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;)V

    iput-object v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    new-instance v0, Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;

    invoke-direct {v0, v4}, Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;-><init>(Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;)V

    iput-object v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mListener:Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mActiveIdx:I

    iput-boolean v3, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

    new-instance v1, Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;

    invoke-direct {v1}, Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/ui/BeautyTitleView$CommonChildAnimationsProvider;

    invoke-direct {v1}, Lcom/android/camera/ui/BeautyTitleView$CommonChildAnimationsProvider;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mAnimationsProviders:[Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

    new-instance v0, Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;

    invoke-direct {v0, v4}, Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;-><init>(Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;)V

    iput-object v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    new-instance v0, Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;

    invoke-direct {v0, v4}, Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;-><init>(Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;)V

    iput-object v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mListener:Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mActiveIdx:I

    iput-boolean v3, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

    new-instance v1, Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;

    invoke-direct {v1}, Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/ui/BeautyTitleView$CommonChildAnimationsProvider;

    invoke-direct {v1}, Lcom/android/camera/ui/BeautyTitleView$CommonChildAnimationsProvider;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mAnimationsProviders:[Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

    new-instance v0, Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;

    invoke-direct {v0, v4}, Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;-><init>(Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;)V

    iput-object v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    new-instance v0, Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;

    invoke-direct {v0, v4}, Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;-><init>(Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;)V

    iput-object v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mListener:Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mActiveIdx:I

    iput-boolean v3, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    return-void
.end method

.method private getChildExpandAnimations()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/camera/ui/BeautyTitleView;->mAnimationsProviders:[Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    invoke-interface {v1, p0}, Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;->expandAnimation(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method private getChildShrinkAnimations()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/camera/ui/BeautyTitleView;->mAnimationsProviders:[Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    invoke-interface {v1, p0}, Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;->shrinkAnimation(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method private static triggerAnimators(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateActiveState()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/ui/BeautyTitleView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/BeautyTitleView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/android/camera/ui/BeautyTitleView;->mActiveIdx:I

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private updateData()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/BeautyTitleView;->removeAllViews()V

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    invoke-virtual {v6}, Lcom/android/camera/ui/BeautyTitleView$Adapter;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    invoke-virtual {v6, v2}, Lcom/android/camera/ui/BeautyTitleView$Adapter;->getText(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/BeautyTitleView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x904004f

    invoke-virtual {v3, v6, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    invoke-virtual {v6, v2}, Lcom/android/camera/ui/BeautyTitleView$Adapter;->getText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    invoke-virtual {v6, v2}, Lcom/android/camera/ui/BeautyTitleView$Adapter;->needShowRedDot(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/BeautyTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x90200c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/ui/BeautyTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x90900b2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {v5, v8, v8, v0, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/BeautyTitleView;->addView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/camera/ui/BeautyTitleView;->setActiveIdx(I)V

    return-void
.end method


# virtual methods
.method public expand()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/BeautyTitleView;->getChildCount()I

    move-result v1

    if-gt v1, v3, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/BeautyTitleView;->getChildExpandAnimations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/camera/ui/BeautyTitleView;->triggerAnimators(Ljava/util/List;)V

    iput-boolean v3, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    :cond_2
    return-void
.end method

.method public notifyDataChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/BeautyTitleView$Adapter;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v1, "BeautyTitleView"

    const-string/jumbo v2, "onClick the view is null"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/BeautyTitleView;->mListener:Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;->onTitleClick(I)V

    :cond_1
    return-void
.end method

.method public setActiveIdx(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mActiveIdx:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mActiveIdx:I

    invoke-direct {p0}, Lcom/android/camera/ui/BeautyTitleView;->updateActiveState()V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/android/camera/ui/BeautyTitleView$Adapter;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;

    invoke-direct {p1, v0}, Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;-><init>(Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;)V

    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    iget-object v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/BeautyTitleView$Adapter;->setView(Lcom/android/camera/ui/BeautyTitleView;)V

    iget-object v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/BeautyTitleView$Adapter;->notifyDataChanged()V

    return-void
.end method

.method public setTitleClickListener(Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;

    invoke-direct {p1, v0}, Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;-><init>(Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;)V

    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mListener:Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;

    return-void
.end method

.method public shrink()V
    .locals 3

    iget-boolean v2, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/BeautyTitleView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/BeautyTitleView;->getChildShrinkAnimations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/camera/ui/BeautyTitleView;->triggerAnimators(Ljava/util/List;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    :cond_2
    return-void
.end method

.method public shrinkImmediately()V
    .locals 9

    const/4 v8, 0x0

    iget-boolean v6, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/BeautyTitleView;->getChildCount()I

    move-result v0

    const/4 v6, 0x1

    if-gt v0, v6, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/BeautyTitleView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ui/BeautyTitleView;->getMeasuredWidth()I

    move-result v6

    invoke-static {v3}, Lcom/android/camera/Util;->getChildMeasureWidth(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v2, v6

    invoke-static {v3, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BeautyTitleView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/BeautyTitleView;->getMeasuredWidth()I

    move-result v6

    invoke-static {v1}, Lcom/android/camera/Util;->getChildMeasureWidth(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v5, v6

    invoke-static {v1, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v8, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    return-void
.end method
