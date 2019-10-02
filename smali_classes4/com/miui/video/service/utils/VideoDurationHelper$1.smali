.class final Lcom/miui/video/service/utils/VideoDurationHelper$1;
.super Ljava/lang/Object;
.source "VideoDurationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/utils/VideoDurationHelper;->loadLoaclVideoDurationUseCodec(Ljava/lang/String;Lcom/miui/video/service/utils/VideoDurationHelper$LoadDurationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listenerReference:Ljava/lang/ref/WeakReference;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/utils/VideoDurationHelper$1;->val$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/service/utils/VideoDurationHelper$1;->val$listenerReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/miui/video/service/utils/MediaMetaMgr;->getInstance()Lcom/miui/video/service/utils/MediaMetaMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/service/utils/VideoDurationHelper$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/utils/MediaMetaMgr;->getDurationValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/utils/FormatUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/video/service/utils/VideoDurationHelper$1;->val$listenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/video/service/utils/VideoDurationHelper$1;->val$listenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/service/utils/VideoDurationHelper$LoadDurationListener;

    invoke-interface {v2, v0, v1}, Lcom/miui/video/service/utils/VideoDurationHelper$LoadDurationListener;->onLoadFinished(J)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-direct {v3}, Lorg/videolan/libvlc/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/miui/video/service/utils/VideoDurationHelper$1;->val$path:Ljava/lang/String;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v0, v4}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/utils/FormatUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v4, p0, Lcom/miui/video/service/utils/VideoDurationHelper$1;->val$listenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/video/service/utils/VideoDurationHelper$1;->val$listenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/service/utils/VideoDurationHelper$LoadDurationListener;

    invoke-interface {v4, v1, v2}, Lcom/miui/video/service/utils/VideoDurationHelper$LoadDurationListener;->onLoadFinished(J)V

    :cond_2
    invoke-static {}, Lcom/miui/video/service/utils/MediaMetaMgr;->getInstance()Lcom/miui/video/service/utils/MediaMetaMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/service/utils/VideoDurationHelper$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/miui/video/service/utils/MediaMetaMgr;->putDurationItem(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v3}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    :cond_3
    return-void

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    :cond_4
    throw v0
.end method
