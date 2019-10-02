.class public final Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;
.super Ljava/lang/Object;
.source "VideoDownloader.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->downloadFile(Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoDownloader.kt\ncom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1\n*L\n1#1,316:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1",
        "Lokhttp3/Callback;",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
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
.field final synthetic $baseUrl:Ljava/lang/String;

.field final synthetic $files:Ljava/util/HashMap;

.field final synthetic $mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

.field final synthetic $newBaseUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    iput-object p2, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    iput-object p3, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$newBaseUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$baseUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$files:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 8
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "VideoDownloader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    iget-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {p1}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getVideo_id()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {p1}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getPreload_id()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {p1}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getPreload_type()I

    move-result v3

    iget-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {p1}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getPreload_page()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {p1}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getPlaylist_id()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPreloadEnd(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 17
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "call"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "response"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v1, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    iget-object v4, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$newBaseUrl:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->getMediaTypeNameFromUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    iget-object v5, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$newBaseUrl:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->getMediaTypeNameFromUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/videoplayer/biz/service/preload/utils/MediaUtilsKt;->getMediaType(Ljava/lang/String;)Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

    move-result-object v5

    iget-object v7, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$baseUrl:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "VideoDownloader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPreloadCache put key:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " + cache:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    invoke-static {v9}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->access$getMPreloadCache$p(Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;)Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$ReLruCache;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    invoke-static {v7}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->access$getMPreloadCache$p(Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;)Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$ReLruCache;

    move-result-object v7

    iget-object v8, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$files:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v8}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$ReLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    invoke-static {v7}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->access$getIdPreloadMap$p(Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;)Ljava/util/HashMap;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    iget-object v8, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {v8}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getVideo_id()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/miui/video/base/model/PreloadIdEntity;

    iget-object v10, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {v10}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getPreload_id()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$newBaseUrl:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lcom/miui/video/base/model/PreloadIdEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    invoke-static {v7}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->access$getUrlIdConnectMap$p(Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;)Ljava/util/HashMap;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    iget-object v8, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {v8}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getVideo_id()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    move-object v7, v1

    check-cast v7, Ljava/lang/CharSequence;

    const-string v8, "video/"

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v7, v8, v6, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v4, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$files:Ljava/util/HashMap;

    check-cast v4, Ljava/util/Map;

    new-instance v5, Lcom/miui/videoplayer/biz/service/preload/model/ProxyVideoEntity;

    const-string v6, "resp"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v3, v2, v1}, Lcom/miui/videoplayer/biz/service/preload/model/ProxyVideoEntity;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    iget-object v1, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {v1}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getVideo_id()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {v1}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getPreload_id()Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {v1}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getPreload_type()I

    move-result v10

    iget-object v1, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {v1}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getPreload_page()Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {v1}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getPlaylist_id()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x40

    const/16 v16, 0x0

    invoke-static/range {v7 .. v16}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPreloadEnd$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const-string v7, "resp"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "utf-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    const-string v8, "Charset.forName(\"utf-8\")"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v2, Lcom/miui/videoplayer/biz/service/preload/utils/TargetHostSaver;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/utils/TargetHostSaver;

    sget-object v7, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    invoke-virtual {v7}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->getPort()I

    move-result v7

    invoke-virtual {v2, v8, v7}, Lcom/miui/videoplayer/biz/service/preload/utils/TargetHostSaver;->replaceWithLocalHost(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$files:Ljava/util/HashMap;

    check-cast v7, Ljava/util/Map;

    const-string v9, "utf-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    const-string v10, "Charset.forName(charsetName)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    invoke-virtual {v2, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v9, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/miui/videoplayer/biz/service/preload/model/ProxyVideoEntity;

    invoke-direct {v9, v3, v2, v1}, Lcom/miui/videoplayer/biz/service/preload/model/ProxyVideoEntity;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    invoke-interface {v7, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;->HLS:Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

    if-ne v5, v1, :cond_4

    new-instance v1, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;

    invoke-direct {v1}, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;-><init>()V

    iget-object v2, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    invoke-static {v2, v8}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->access$clearUnSupportExt(Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoDownloader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearStr:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v1, v2}, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;->readPlaylist(Ljava/lang/String;)Lio/lindstrom/m3u8/model/Playlist;

    move-result-object v1

    check-cast v1, Lio/lindstrom/m3u8/model/MasterPlaylist;

    invoke-interface {v1}, Lio/lindstrom/m3u8/model/MasterPlaylist;->variants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/lindstrom/m3u8/model/Variant;

    invoke-interface {v1}, Lio/lindstrom/m3u8/model/Variant;->uri()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    iget-object v5, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    const-string v7, "indexUri"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$newBaseUrl:Ljava/lang/String;

    iget-object v8, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$files:Ljava/util/HashMap;

    invoke-static {v3, v5, v1, v7, v8}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->access$downloadFile(Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Lio/lindstrom/m3u8/parser/PlaylistParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v1, "VideoDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not master"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_1
    new-instance v1, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;

    invoke-direct {v1}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;-><init>()V

    invoke-virtual {v1, v2}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->readPlaylist(Ljava/lang/String;)Lio/lindstrom/m3u8/model/Playlist;

    move-result-object v1

    check-cast v1, Lio/lindstrom/m3u8/model/MediaPlaylist;

    invoke-interface {v1}, Lio/lindstrom/m3u8/model/MediaPlaylist;->mediaSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/lindstrom/m3u8/model/MediaSegment;

    invoke-interface {v1}, Lio/lindstrom/m3u8/model/MediaSegment;->uri()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    iget-object v3, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    const-string v5, "segmentUri"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$newBaseUrl:Ljava/lang/String;

    iget-object v6, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$files:Ljava/util/HashMap;

    invoke-static {v2, v3, v1, v5, v6}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->access$downloadFile(Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1
    .catch Lio/lindstrom/m3u8/parser/PlaylistParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v1, "VideoDownloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " parse error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    iget-object v1, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {v1}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getVideo_id()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {v1}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getPreload_id()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {v1}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getPreload_type()I

    move-result v6

    iget-object v1, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {v1}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getPreload_page()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadFile$1;->$mPreloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    invoke-virtual {v1}, Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;->getPlaylist_id()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual/range {v3 .. v10}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPreloadEnd(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
