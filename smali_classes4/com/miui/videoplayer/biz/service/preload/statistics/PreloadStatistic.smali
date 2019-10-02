.class public final Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;
.super Ljava/lang/Object;
.source "PreloadStatistic.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;",
        "",
        "video_id",
        "",
        "preload_id",
        "preload_type",
        "",
        "preload_page",
        "playlist_id",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getPlaylist_id",
        "()Ljava/lang/String;",
        "getPreload_id",
        "getPreload_page",
        "getPreload_type",
        "()I",
        "getVideo_id",
        "biz_service_preload_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final playlist_id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final preload_id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final preload_page:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final preload_type:I

.field private final video_id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "video_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preload_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preload_page"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlist_id"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->video_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->preload_id:Ljava/lang/String;

    iput p3, p0, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->preload_type:I

    iput-object p4, p0, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->preload_page:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->playlist_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPlaylist_id()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->playlist_id:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreload_id()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->preload_id:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreload_page()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->preload_page:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreload_type()I
    .locals 1

    iget v0, p0, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->preload_type:I

    return v0
.end method

.method public final getVideo_id()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->video_id:Ljava/lang/String;

    return-object v0
.end method
