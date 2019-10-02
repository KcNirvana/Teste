.class final Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;
.super Ljava/lang/Object;
.source "MediaPlaylistBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InitShim"
.end annotation


# instance fields
.field private iFramesOnly:Z

.field private iFramesOnlyBuildStage:I

.field private independentSegments:Z

.field private independentSegmentsBuildStage:I

.field private mediaSequence:I

.field private mediaSequenceBuildStage:I

.field private ongoing:Z

.field private ongoingBuildStage:I

.field final synthetic this$0:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;


# direct methods
.method private constructor <init>(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;)V
    .locals 0

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->this$0:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;-><init>(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;)V

    return-void
.end method

.method private formatInitCycleMessage()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->mediaSequenceBuildStage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "mediaSequence"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->ongoingBuildStage:I

    if-ne v1, v2, :cond_1

    const-string v1, "ongoing"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->iFramesOnlyBuildStage:I

    if-ne v1, v2, :cond_2

    const-string v1, "iFramesOnly"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->independentSegmentsBuildStage:I

    if-ne v1, v2, :cond_3

    const-string v1, "independentSegments"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot build MediaPlaylist, attribute initializers form cycle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method iFramesOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->iFramesOnly:Z

    const/4 p1, 0x1

    iput p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->iFramesOnlyBuildStage:I

    return-void
.end method

.method iFramesOnly()Z
    .locals 2

    iget v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->iFramesOnlyBuildStage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->iFramesOnlyBuildStage:I

    if-nez v0, :cond_0

    iput v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->iFramesOnlyBuildStage:I

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->this$0:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;

    invoke-static {v0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->access$1700(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;)Z

    move-result v0

    iput-boolean v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->iFramesOnly:Z

    const/4 v0, 0x1

    iput v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->iFramesOnlyBuildStage:I

    :cond_0
    iget-boolean v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->iFramesOnly:Z

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->formatInitCycleMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method independentSegments(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->independentSegments:Z

    const/4 p1, 0x1

    iput p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->independentSegmentsBuildStage:I

    return-void
.end method

.method independentSegments()Z
    .locals 2

    iget v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->independentSegmentsBuildStage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->independentSegmentsBuildStage:I

    if-nez v0, :cond_0

    iput v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->independentSegmentsBuildStage:I

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->this$0:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;

    invoke-static {v0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->access$1800(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;)Z

    move-result v0

    iput-boolean v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->independentSegments:Z

    const/4 v0, 0x1

    iput v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->independentSegmentsBuildStage:I

    :cond_0
    iget-boolean v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->independentSegments:Z

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->formatInitCycleMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method mediaSequence()I
    .locals 2

    iget v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->mediaSequenceBuildStage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->mediaSequenceBuildStage:I

    if-nez v0, :cond_0

    iput v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->mediaSequenceBuildStage:I

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->this$0:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;

    invoke-static {v0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->access$1500(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;)I

    move-result v0

    iput v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->mediaSequence:I

    const/4 v0, 0x1

    iput v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->mediaSequenceBuildStage:I

    :cond_0
    iget v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->mediaSequence:I

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->formatInitCycleMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method mediaSequence(I)V
    .locals 0

    iput p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->mediaSequence:I

    const/4 p1, 0x1

    iput p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->mediaSequenceBuildStage:I

    return-void
.end method

.method ongoing(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->ongoing:Z

    const/4 p1, 0x1

    iput p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->ongoingBuildStage:I

    return-void
.end method

.method ongoing()Z
    .locals 2

    iget v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->ongoingBuildStage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->ongoingBuildStage:I

    if-nez v0, :cond_0

    iput v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->ongoingBuildStage:I

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->this$0:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;

    invoke-static {v0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->access$1600(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;)Z

    move-result v0

    iput-boolean v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->ongoing:Z

    const/4 v0, 0x1

    iput v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->ongoingBuildStage:I

    :cond_0
    iget-boolean v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->ongoing:Z

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->formatInitCycleMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
