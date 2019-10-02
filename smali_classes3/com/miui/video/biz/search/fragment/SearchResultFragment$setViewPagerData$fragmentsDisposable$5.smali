.class final Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$5;
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
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
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
.field final synthetic $data:Lcom/miui/video/biz/search/entities/SearchData;

.field final synthetic $tmpFragments:Landroid/util/SparseArray;

.field final synthetic this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Landroid/util/SparseArray;Lcom/miui/video/biz/search/entities/SearchData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$5;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    iput-object p2, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$5;->$tmpFragments:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$5;->$data:Lcom/miui/video/biz/search/entities/SearchData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$5;->$tmpFragments:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$5;->$tmpFragments:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$5;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    iget-object v3, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$5;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v3}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getMKey$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v4, "it"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$5;->$data:Lcom/miui/video/biz/search/entities/SearchData;

    invoke-static {v2, v3, p1, v4}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$createSearchChannelFragment(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Ljava/lang/String;Lcom/miui/video/common/feed/entity/TinyCardEntity;Lcom/miui/video/biz/search/entities/SearchData;)Lcom/miui/video/common/library/base/BaseFragment;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$fragmentsDisposable$5;->accept(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    return-void
.end method
