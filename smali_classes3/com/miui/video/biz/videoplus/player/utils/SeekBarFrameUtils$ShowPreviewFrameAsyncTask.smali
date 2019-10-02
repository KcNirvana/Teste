.class public Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$ShowPreviewFrameAsyncTask;
.super Ljava/lang/Object;
.source "SeekBarFrameUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowPreviewFrameAsyncTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

.field time:J

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$ShowPreviewFrameAsyncTask;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$ShowPreviewFrameAsyncTask;->url:Ljava/lang/String;

    iput-wide p3, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$ShowPreviewFrameAsyncTask;->time:J

    return-void
.end method


# virtual methods
.method public showPreviewFrameAtTime()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$ShowPreviewFrameAsyncTask;->url:Ljava/lang/String;

    iget-wide v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$ShowPreviewFrameAsyncTask;->time:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$ShowPreviewFrameAsyncTask;->showPreviewFrameAtTimeImpl(Ljava/lang/String;J)V

    return-void
.end method

.method public showPreviewFrameAtTimeImpl(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$ShowPreviewFrameAsyncTask;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$1100(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    :try_start_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$ShowPreviewFrameAsyncTask;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$800(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Lorg/videolan/libvlc/MediaMetadataRetriever;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    mul-long p2, p2, v0

    invoke-virtual {p1, p2, p3}, Lorg/videolan/libvlc/MediaMetadataRetriever;->showPreviewFrameAtTime(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
