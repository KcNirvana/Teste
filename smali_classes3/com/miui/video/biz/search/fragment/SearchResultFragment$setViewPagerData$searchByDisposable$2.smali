.class final Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$2;
.super Ljava/lang/Object;
.source "SearchResultFragment.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0010\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Observable;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lcom/miui/video/biz/search/entities/SearchData;",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$2;

    invoke-direct {v0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$2;-><init>()V

    sput-object v0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$2;->INSTANCE:Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/miui/video/biz/search/entities/SearchData;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Lcom/miui/video/biz/search/entities/SearchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/biz/search/entities/SearchData;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/biz/search/entities/SearchData;->getNetwork_search_list()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/video/biz/search/entities/SearchData;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/search/fragment/SearchResultFragment$setViewPagerData$searchByDisposable$2;->apply(Lcom/miui/video/biz/search/entities/SearchData;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
