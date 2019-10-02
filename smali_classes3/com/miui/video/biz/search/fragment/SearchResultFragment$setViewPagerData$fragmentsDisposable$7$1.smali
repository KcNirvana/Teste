.class final Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7$1;
.super Ljava/lang/Object;
.source "SearchResultFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;->accept(Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;

    iget-object v0, v0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$7;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getVIndicator$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
