.class Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub$1;
.super Ljava/lang/Object;
.source "AsyncSubtitles.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub;->doInBackground([Ljava/lang/String;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub;

.field final synthetic val$e:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub;Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub$1;->this$1:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub$1;->val$e:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$DownloadSub$1;->val$e:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void
.end method
