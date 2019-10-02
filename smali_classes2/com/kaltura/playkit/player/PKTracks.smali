.class public Lcom/kaltura/playkit/player/PKTracks;
.super Ljava/lang/Object;
.source "PKTracks.java"


# instance fields
.field private audioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAudioTrackIndex:I

.field private defaultTextTrackIndex:I

.field private defaultVideoTrackIndex:I

.field private textTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/TextTrack;",
            ">;"
        }
    .end annotation
.end field

.field private videoTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/VideoTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/VideoTrack;",
            ">;",
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/AudioTrack;",
            ">;",
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/TextTrack;",
            ">;III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kaltura/playkit/player/PKTracks;->audioTracks:Ljava/util/List;

    iput-object p1, p0, Lcom/kaltura/playkit/player/PKTracks;->videoTracks:Ljava/util/List;

    iput-object p3, p0, Lcom/kaltura/playkit/player/PKTracks;->textTracks:Ljava/util/List;

    iput p4, p0, Lcom/kaltura/playkit/player/PKTracks;->defaultVideoTrackIndex:I

    iput p5, p0, Lcom/kaltura/playkit/player/PKTracks;->defaultAudioTrackIndex:I

    iput p6, p0, Lcom/kaltura/playkit/player/PKTracks;->defaultTextTrackIndex:I

    return-void
.end method


# virtual methods
.method public getAudioTracks()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/AudioTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/player/PKTracks;->audioTracks:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultAudioTrackIndex()I
    .locals 1

    iget v0, p0, Lcom/kaltura/playkit/player/PKTracks;->defaultAudioTrackIndex:I

    return v0
.end method

.method public getDefaultTextTrackIndex()I
    .locals 1

    iget v0, p0, Lcom/kaltura/playkit/player/PKTracks;->defaultTextTrackIndex:I

    return v0
.end method

.method public getDefaultVideoTrackIndex()I
    .locals 1

    iget v0, p0, Lcom/kaltura/playkit/player/PKTracks;->defaultVideoTrackIndex:I

    return v0
.end method

.method public getTextTracks()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/TextTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/player/PKTracks;->textTracks:Ljava/util/List;

    return-object v0
.end method

.method public getVideoTracks()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/VideoTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/player/PKTracks;->videoTracks:Ljava/util/List;

    return-object v0
.end method
