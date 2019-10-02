.class public interface abstract Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles$SubtitlesInterface;
.super Ljava/lang/Object;
.source "AsyncSubtitles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SubtitlesInterface"
.end annotation


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onSubtitleDownload(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSubtitlesListFound(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;",
            ">;)V"
        }
    .end annotation
.end method
