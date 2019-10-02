.class final Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack$1;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->sortSubtitleTracks(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;)I
    .locals 0

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->getLanguageType()I

    move-result p1

    invoke-virtual {p2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->getLanguageType()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    check-cast p2, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack$1;->compare(Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;)I

    move-result p1

    return p1
.end method
