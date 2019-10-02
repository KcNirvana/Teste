.class public interface abstract Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;
.super Ljava/lang/Object;
.source "InfoStreamContract.kt"

# interfaces
.implements Lcom/miui/video/service/common/architeture/base/InfoStreamBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/common/architeture/common/InfoStreamContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/video/service/common/architeture/base/InfoStreamBaseView<",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0018\u0010\u0007\u001a\u00020\u00042\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH&J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH&J\u0010\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\tH&J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0008\u0010\u0013\u001a\u00020\u0004H&J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016H&J\u0008\u0010\u0017\u001a\u00020\u0004H&J\u0008\u0010\u0018\u001a\u00020\u0004H&J\u0008\u0010\u0019\u001a\u00020\u0004H&J\u0018\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH&J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!H&J\u0018\u0010\"\u001a\u00020\u00042\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH&J\u0008\u0010#\u001a\u00020\u0004H&J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020&H&J\u0008\u0010\'\u001a\u00020\u0004H&J\u0008\u0010(\u001a\u00020\u0004H&\u00a8\u0006)"
    }
    d2 = {
        "Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;",
        "Lcom/miui/video/service/common/architeture/base/InfoStreamBaseView;",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;",
        "addItemDecoration",
        "",
        "decor",
        "Landroid/support/v7/widget/RecyclerView$ItemDecoration;",
        "addList",
        "data",
        "",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "addUIFactory",
        "factory",
        "Lcom/miui/video/common/feed/recyclerview/IUIFactory;",
        "getList",
        "getUIFactorys",
        "handleException",
        "e",
        "",
        "hideLoadingView",
        "loadFromHeadBy",
        "refreshType",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
        "notifyDataSetChanged",
        "onUIHide",
        "onUIShow",
        "scrollToPosition",
        "smooth",
        "",
        "position",
        "",
        "setActionDelegate",
        "actionDelegateProvider",
        "Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;",
        "setList",
        "setListLoadingBar",
        "setModel",
        "both",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;",
        "showLoadingView",
        "showRetry",
        "video_service_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# virtual methods
.method public abstract addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .param p1    # Landroid/support/v7/widget/RecyclerView$ItemDecoration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract addList(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V
    .param p1    # Lcom/miui/video/common/feed/recyclerview/IUIFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getUIFactorys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/recyclerview/IUIFactory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract handleException(Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract hideLoadingView()V
.end method

.method public abstract loadFromHeadBy(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract notifyDataSetChanged()V
.end method

.method public abstract onUIHide()V
.end method

.method public abstract onUIShow()V
.end method

.method public abstract scrollToPosition(ZI)V
.end method

.method public abstract setActionDelegate(Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;)V
    .param p1    # Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setList(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setListLoadingBar()V
.end method

.method public abstract setModel(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .param p1    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract showLoadingView()V
.end method

.method public abstract showRetry()V
.end method
