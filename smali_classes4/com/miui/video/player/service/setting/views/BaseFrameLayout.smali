.class public Lcom/miui/video/player/service/setting/views/BaseFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BaseFrameLayout.java"

# interfaces
.implements Lcom/miui/video/player/service/setting/IRefreshView;


# instance fields
.field protected mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getPresenter()Lcom/miui/video/player/service/presenter/BasePresenter;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-object v0
.end method

.method protected getViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method public setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-void
.end method
