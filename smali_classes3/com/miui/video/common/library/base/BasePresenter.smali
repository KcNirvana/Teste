.class public abstract Lcom/miui/video/common/library/base/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"

# interfaces
.implements Lcom/miui/video/common/library/base/impl/IPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/miui/video/common/library/base/impl/IView;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/video/common/library/base/impl/IPresenter<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private mBridge:Lcom/miui/video/common/library/base/CPBridge;

.field protected mCaseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/library/base/BaseCase;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lcom/miui/video/common/library/base/impl/IView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/video/common/library/base/CPBridge;

    invoke-direct {v0}, Lcom/miui/video/common/library/base/CPBridge;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/library/base/BasePresenter;->mBridge:Lcom/miui/video/common/library/base/CPBridge;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/library/base/BasePresenter;->mCaseList:Ljava/util/List;

    return-void
.end method

.method private isViewAttached()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/base/BasePresenter;->mView:Lcom/miui/video/common/library/base/impl/IView;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public attach(Lcom/miui/video/common/library/base/impl/IView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/library/base/BasePresenter;->mView:Lcom/miui/video/common/library/base/impl/IView;

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BasePresenter;->createCases()Ljava/util/List;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/miui/video/common/library/base/BasePresenter;->mCaseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/base/BasePresenter;->mBridge:Lcom/miui/video/common/library/base/CPBridge;

    iget-object v1, p0, Lcom/miui/video/common/library/base/BasePresenter;->mCaseList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/library/base/BaseCase;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/base/CPBridge;->addCase(Lcom/miui/video/common/library/base/BaseCase;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract createCases()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/library/base/BaseCase;",
            ">;"
        }
    .end annotation
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/library/base/BasePresenter;->mView:Lcom/miui/video/common/library/base/impl/IView;

    iget-object v0, p0, Lcom/miui/video/common/library/base/BasePresenter;->mBridge:Lcom/miui/video/common/library/base/CPBridge;

    invoke-virtual {v0}, Lcom/miui/video/common/library/base/CPBridge;->removeCase()V

    return-void
.end method

.method public getView()Lcom/miui/video/common/library/base/impl/IView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BasePresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/base/BasePresenter;->mView:Lcom/miui/video/common/library/base/impl/IView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
