.class final Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;
.super Ljava/lang/Object;
.source "MediaPlaylistBuilder.java"

# interfaces
.implements Lio/lindstrom/m3u8/model/MediaPlaylist;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutableMediaPlaylist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;
    }
.end annotation


# static fields
.field private static final STAGE_INITIALIZED:I = 0x1

.field private static final STAGE_INITIALIZING:I = -0x1

.field private static final STAGE_UNINITIALIZED:I


# instance fields
.field private final iFramesOnly:Z

.field private final independentSegments:Z

.field private volatile transient initShim:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;

.field private final mediaSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/lindstrom/m3u8/model/MediaSegment;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSequence:I

.field private final ongoing:Z

.field private final playlistType:Lio/lindstrom/m3u8/model/PlaylistType;

.field private final targetDuration:I

.field private final version:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;-><init>(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$1;)V

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->initShim:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->access$100(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)I

    move-result v0

    iput v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->targetDuration:I

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->access$200(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Lio/lindstrom/m3u8/model/PlaylistType;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->playlistType:Lio/lindstrom/m3u8/model/PlaylistType;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->access$300(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->access$400(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->mediaSegments:Ljava/util/List;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->access$500(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->version:Ljava/lang/Integer;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->access$600(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->initShim:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->access$700(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)I

    move-result v2

    invoke-virtual {v0, v2}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->mediaSequence(I)V

    :cond_0
    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->access$800(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->initShim:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->access$900(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->ongoing(Z)V

    :cond_1
    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->access$1000(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->initShim:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->access$1100(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->iFramesOnly(Z)V

    :cond_2
    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->access$1200(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->initShim:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->access$1300(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->independentSegments(Z)V

    :cond_3
    iget-object p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->initShim:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;

    invoke-virtual {p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->mediaSequence()I

    move-result p1

    iput p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->mediaSequence:I

    iget-object p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->initShim:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;

    invoke-virtual {p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->ongoing()Z

    move-result p1

    iput-boolean p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->ongoing:Z

    iget-object p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->initShim:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;

    invoke-virtual {p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->iFramesOnly()Z

    move-result p1

    iput-boolean p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->iFramesOnly:Z

    iget-object p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->initShim:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;

    invoke-virtual {p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->independentSegments()Z

    move-result p1

    iput-boolean p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->independentSegments:Z

    iput-object v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->initShim:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;

    return-void
.end method

.method synthetic constructor <init>(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;-><init>(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)V

    return-void
.end method

.method static synthetic access$1500(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;)I
    .locals 0

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->mediaSequenceInitialize()I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;)Z
    .locals 0

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->ongoingInitialize()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;)Z
    .locals 0

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->iFramesOnlyInitialize()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;)Z
    .locals 0

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->independentSegmentsInitialize()Z

    move-result p0

    return p0
.end method

.method private equalTo(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;)Z
    .locals 2

    iget v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->targetDuration:I

    iget v1, p1, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->targetDuration:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->mediaSequence:I

    iget v1, p1, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->mediaSequence:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->ongoing:Z

    iget-boolean v1, p1, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->ongoing:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->playlistType:Lio/lindstrom/m3u8/model/PlaylistType;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->playlistType:Lio/lindstrom/m3u8/model/PlaylistType;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->iFramesOnly:Z

    iget-boolean v1, p1, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->iFramesOnly:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->mediaSegments:Ljava/util/List;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->mediaSegments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->version:Ljava/lang/Integer;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->version:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->independentSegments:Z

    iget-boolean p1, p1, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->independentSegments:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private iFramesOnlyInitialize()Z
    .locals 1

    invoke-static {p0}, Lio/lindstrom/m3u8/model/MediaPlaylist$-CC;->$default$iFramesOnly(Lio/lindstrom/m3u8/model/MediaPlaylist;)Z

    move-result v0

    return v0
.end method

.method private independentSegmentsInitialize()Z
    .locals 1

    invoke-static {p0}, Lio/lindstrom/m3u8/model/Playlist$-CC;->$default$independentSegments(Lio/lindstrom/m3u8/model/Playlist;)Z

    move-result v0

    return v0
.end method

.method private mediaSequenceInitialize()I
    .locals 1

    invoke-static {p0}, Lio/lindstrom/m3u8/model/MediaPlaylist$-CC;->$default$mediaSequence(Lio/lindstrom/m3u8/model/MediaPlaylist;)I

    move-result v0

    return v0
.end method

.method private ongoingInitialize()Z
    .locals 1

    invoke-static {p0}, Lio/lindstrom/m3u8/model/MediaPlaylist$-CC;->$default$ongoing(Lio/lindstrom/m3u8/model/MediaPlaylist;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;

    if-eqz v1, :cond_1

    check-cast p1, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->equalTo(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->targetDuration:I

    const v1, 0x2a0a0

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x1505

    shl-int/lit8 v0, v1, 0x5

    iget v2, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->mediaSequence:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-boolean v2, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->ongoing:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->playlistType:Lio/lindstrom/m3u8/model/PlaylistType;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-boolean v2, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->iFramesOnly:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->mediaSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->version:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-boolean v2, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->independentSegments:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public iFramesOnly()Z
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->initShim:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->iFramesOnly()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->iFramesOnly:Z

    :goto_0
    return v0
.end method

.method public independentSegments()Z
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->initShim:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->independentSegments()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->independentSegments:Z

    :goto_0
    return v0
.end method

.method public mediaSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/lindstrom/m3u8/model/MediaSegment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->mediaSegments:Ljava/util/List;

    return-object v0
.end method

.method public mediaSequence()I
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->initShim:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->mediaSequence()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->mediaSequence:I

    :goto_0
    return v0
.end method

.method public ongoing()Z
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->initShim:Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist$InitShim;->ongoing()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->ongoing:Z

    :goto_0
    return v0
.end method

.method public playlistType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lio/lindstrom/m3u8/model/PlaylistType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->playlistType:Lio/lindstrom/m3u8/model/PlaylistType;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public targetDuration()I
    .locals 1

    iget v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->targetDuration:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaPlaylist{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "targetDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->targetDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mediaSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->mediaSequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ongoing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->ongoing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->playlistType:Lio/lindstrom/m3u8/model/PlaylistType;

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "playlistType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->playlistType:Lio/lindstrom/m3u8/model/PlaylistType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "iFramesOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->iFramesOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mediaSegments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->mediaSegments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->version:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->version:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "independentSegments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->independentSegments:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public version()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;->version:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
