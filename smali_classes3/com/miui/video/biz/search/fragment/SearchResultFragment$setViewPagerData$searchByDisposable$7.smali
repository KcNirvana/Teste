.class final Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$7;
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
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
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
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
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
.field final synthetic this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$7;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/miui/video/common/feed/entity/FeedRowEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$7;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getVUISearchBy$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Lcom/miui/video/biz/search/ui/UISearchBy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$7;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getVUISearchBy$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Lcom/miui/video/biz/search/ui/UISearchBy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    check-cast p1, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {v0, v1, p1}, Lcom/miui/video/biz/search/ui/UISearchBy;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$7;->accept(Lcom/miui/video/common/feed/entity/FeedRowEntity;)V

    return-void
.end method
