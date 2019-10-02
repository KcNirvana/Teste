.class final Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadVideo$1;
.super Ljava/lang/Object;
.source "VideoDownloader.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->downloadVideo(Ljava/util/List;)V
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
.field final synthetic $preloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

.field final synthetic $video:Lcom/miui/videoplayer/biz/service/preload/model/VideoDownloadEntity;

.field final synthetic this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;Lcom/miui/videoplayer/biz/service/preload/model/VideoDownloadEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadVideo$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    iput-object p2, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadVideo$1;->$preloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    iput-object p3, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadVideo$1;->$video:Lcom/miui/videoplayer/biz/service/preload/model/VideoDownloadEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadVideo$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    iget-object v1, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadVideo$1;->$preloadStatistic:Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;

    iget-object v2, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$downloadVideo$1;->$video:Lcom/miui/videoplayer/biz/service/preload/model/VideoDownloadEntity;

    invoke-virtual {v2}, Lcom/miui/videoplayer/biz/service/preload/model/VideoDownloadEntity;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->access$downloadFile(Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;Lcom/miui/videoplayer/biz/service/preload/statistics/PreloadStatistic;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
