.class final Lcom/miui/video/biz/search/datasources/SearchResultCase$getSearchResult$1;
.super Ljava/lang/Object;
.source "SearchResultCase.kt"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/search/datasources/SearchResultCase;->getSearchResult(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/common/library/base/BaseObserver;)V
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
        "Lio/reactivex/functions/Predicate<",
        "Lcom/miui/video/base/common/net/model/ModelBase<",
        "Lcom/miui/video/biz/search/entities/SearchData;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/miui/video/base/common/net/model/ModelBase;",
        "Lcom/miui/video/biz/search/entities/SearchData;",
        "test"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/video/biz/search/datasources/SearchResultCase$getSearchResult$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/search/datasources/SearchResultCase$getSearchResult$1;

    invoke-direct {v0}, Lcom/miui/video/biz/search/datasources/SearchResultCase$getSearchResult$1;-><init>()V

    sput-object v0, Lcom/miui/video/biz/search/datasources/SearchResultCase$getSearchResult$1;->INSTANCE:Lcom/miui/video/biz/search/datasources/SearchResultCase$getSearchResult$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcom/miui/video/base/common/net/model/ModelBase;)Z
    .locals 1
    .param p1    # Lcom/miui/video/base/common/net/model/ModelBase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/biz/search/entities/SearchData;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Lcom/miui/video/service/common/architeture/exception/NullDataException;

    const-string v0, "search_result_null_data"

    invoke-direct {p1, v0}, Lcom/miui/video/service/common/architeture/exception/NullDataException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/search/datasources/SearchResultCase$getSearchResult$1;->test(Lcom/miui/video/base/common/net/model/ModelBase;)Z

    move-result p1

    return p1
.end method
