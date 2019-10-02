.class final Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;
.super Ljava/lang/Object;
.source "SearchResultFragment.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/search/fragment/SearchResultFragment;->setViewPagerData(Lcom/miui/video/biz/search/entities/SearchData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Landroid/util/SparseArray<",
        "Lcom/miui/video/common/library/base/BaseFragment<",
        "Lcom/miui/video/common/library/base/impl/IPresenter<",
        "Lcom/miui/video/common/library/base/impl/IView;",
        ">;>;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u000122\u0010\u0002\u001a.\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004 \u0007*\u0016\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/util/SparseArray;",
        "Lcom/miui/video/common/library/base/BaseFragment;",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        "Lcom/miui/video/common/library/base/impl/IView;",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $tmpFragments:Landroid/util/SparseArray;

.field final synthetic this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Landroid/util/SparseArray;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    iput-object p2, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;->$tmpFragments:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/miui/video/common/library/base/BaseFragment<",
            "Lcom/miui/video/common/library/base/impl/IPresenter<",
            "Lcom/miui/video/common/library/base/impl/IView;",
            ">;>;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;->$tmpFragments:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$setMFragments$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Landroid/util/SparseArray;)V

    iget-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getMPagerAdapter$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getMFragments$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/widget/viewpager/adapter/CommonFragmentPagerAdapter;->setData(Landroid/util/SparseArray;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getMFragments$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getVIndicator$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->notifyDataSetChanged()V

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getVIndicator$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7$1;-><init>(Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;->accept(Landroid/util/SparseArray;)V

    return-void
.end method
