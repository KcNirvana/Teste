.class public Lcom/scwang/smartrefresh/layout/util/DesignUtil;
.super Ljava/lang/Object;
.source "DesignUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCoordinatorLayout(Landroid/view/View;Lcom/scwang/smartrefresh/layout/api/RefreshKernel;Lcom/scwang/smartrefresh/layout/listener/CoordinatorLayoutListener;)V
    .locals 1

    :try_start_0
    instance-of v0, p0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->setEnableNestedScroll(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0, p2}, Lcom/scwang/smartrefresh/layout/util/DesignUtil;->wrapperCoordinatorLayout(Landroid/view/ViewGroup;Lcom/scwang/smartrefresh/layout/listener/CoordinatorLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static wrapperCoordinatorLayout(Landroid/view/ViewGroup;Lcom/scwang/smartrefresh/layout/listener/CoordinatorLayoutListener;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/support/design/widget/AppBarLayout;

    new-instance v2, Lcom/scwang/smartrefresh/layout/util/DesignUtil$1;

    invoke-direct {v2, p1}, Lcom/scwang/smartrefresh/layout/util/DesignUtil$1;-><init>(Lcom/scwang/smartrefresh/layout/listener/CoordinatorLayoutListener;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
