.class final Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$8;
.super Ljava/lang/Object;
.source "ShortVideoDetailDataSource.kt"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
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
.field public static final INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$8;

    invoke-direct {v0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$8;-><init>()V

    sput-object v0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$8;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$8;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Z
    .locals 2
    .param p1    # Lcom/miui/video/common/feed/entity/TinyCardEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shortvideo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playlist"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object p1

    const-string v0, "longvideo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$8;->test(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Z

    move-result p1

    return p1
.end method
