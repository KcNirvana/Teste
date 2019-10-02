.class public final Lcom/miui/video/biz/search/fragment/SearchWordFragment$initFeedPresenter$1;
.super Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;
.source "SearchWordFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/search/fragment/SearchWordFragment;->initFeedPresenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/miui/video/biz/search/fragment/SearchWordFragment$initFeedPresenter$1",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;",
        "handleException",
        "",
        "e",
        "",
        "showLoadingView",
        "showRetry",
        "clickListener",
        "Landroid/view/View$OnClickListener;",
        "biz_group_search_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/search/fragment/SearchWordFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/fragment/SearchWordFragment;Lcom/miui/video/common/feed/UIRecyclerListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/common/feed/UIRecyclerListView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchWordFragment$initFeedPresenter$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchWordFragment;

    invoke-direct {p0, p2}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public showLoadingView()V
    .locals 0

    return-void
.end method

.method public showRetry(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
