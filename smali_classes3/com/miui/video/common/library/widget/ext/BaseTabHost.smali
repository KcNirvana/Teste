.class public Lcom/miui/video/common/library/widget/ext/BaseTabHost;
.super Landroid/widget/TabHost;
.source "BaseTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState;,
        Lcom/miui/video/common/library/widget/ext/BaseTabHost$DummyTabFactory;,
        Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;
    }
.end annotation


# instance fields
.field protected mAttached:Z

.field protected mContainerId:I

.field protected mContext:Landroid/content/Context;

.field protected mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field protected mLastTab:Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRealTabContent:Landroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private ensureContent()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mContainerId:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab content FrameLayout found for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private ensureHierarchy(Landroid/content/Context;)V
    .locals 7

    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TabWidget;

    invoke-direct {v2, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setId(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v4, 0x1020011

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mContainerId:I

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100f3

    aput v2, v0, v1

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mContainerId:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/widget/TabHost$TabSpec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/common/library/widget/ext/BaseTabHost$DummyTabFactory;

    iget-object v1, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;

    invoke-direct {v1, v0, p2, p3}, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-boolean p2, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mAttached:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    iput-object p2, v1, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    iget-object p2, v1, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_0

    iget-object p2, v1, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    iget-object p3, v1, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, p3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    iget-object p2, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method public doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/FragmentTransaction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->getTabInfoFromTag(Ljava/lang/String;)Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mLastTab:Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;

    if-eq v0, p1, :cond_4

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mLastTab:Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mLastTab:Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;

    iget-object v0, v0, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mLastTab:Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;

    iget-object v0, v0, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->clss:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->args:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    iget v0, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mContainerId:I

    iget-object v1, p1, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p1, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mLastTab:Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;

    :cond_4
    return-object p2
.end method

.method public getTabInfoFromTag(Ljava/lang/String;)Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;

    iget-object v3, v2, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;

    iget-object v5, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v6, v4, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    iput-object v5, v4, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v5, v4, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v4, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-object v4, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mLastTab:Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    :cond_1
    iget-object v4, v4, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mAttached:Z

    invoke-virtual {p0, v0, v2}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mAttached:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState;

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState;

    invoke-direct {v1, v0}, Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState;->curTab:Ljava/lang/String;

    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->ensureHierarchy(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    iput-object p1, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p0}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->ensureContent()V

    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->ensureHierarchy(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    iput-object p1, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iput p3, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mContainerId:I

    invoke-direct {p0}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->ensureContent()V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const p1, 0x1020012

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->setId(I)V

    :cond_0
    return-void
.end method
