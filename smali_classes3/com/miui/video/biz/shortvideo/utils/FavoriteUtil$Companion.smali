.class public final Lcom/miui/video/biz/shortvideo/utils/FavoriteUtil$Companion;
.super Ljava/lang/Object;
.source "FavoriteUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/shortvideo/utils/FavoriteUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/utils/FavoriteUtil$Companion;",
        "",
        "()V",
        "insertFavorite",
        "",
        "tinyCardEntity",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        "biz_group_shortvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/shortvideo/utils/FavoriteUtil$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final insertFavorite(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 1
    .param p1    # Lcom/miui/video/common/feed/entity/TinyCardEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tinyCardEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/miui/video/base/database/OVFavorVideoEntity;

    invoke-direct {p1}, Lcom/miui/video/base/database/OVFavorVideoEntity;-><init>()V

    return-void
.end method
