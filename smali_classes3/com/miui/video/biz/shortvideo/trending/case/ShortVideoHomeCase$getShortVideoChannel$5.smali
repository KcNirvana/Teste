.class final Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$5;
.super Ljava/lang/Object;
.source "ShortVideoHomeCase.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase;->getShortVideoChannel(Lcom/miui/video/common/library/base/BaseObserver;)V
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
        "TT;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a&\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00040\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        "kotlin.jvm.PlatformType",
        "",
        "it",
        "Lcom/miui/video/base/common/net/model/CardRowListEntity;",
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
.field public static final INSTANCE:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$5;

    invoke-direct {v0}, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$5;-><init>()V

    sput-object v0, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$5;->INSTANCE:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$5;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/CardRowListEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$5;->apply(Lcom/miui/video/base/common/net/model/CardRowListEntity;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lcom/miui/video/base/common/net/model/CardRowListEntity;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/miui/video/base/common/net/model/CardRowListEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/CardRowListEntity;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
