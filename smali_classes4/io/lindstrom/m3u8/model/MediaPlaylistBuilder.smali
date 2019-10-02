.class Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;
.super Ljava/lang/Object;
.source "MediaPlaylistBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;
    }
.end annotation


# static fields
.field private static final INIT_BIT_TARGET_DURATION:J = 0x1L

.field private static final OPT_BIT_INDEPENDENT_SEGMENTS:J = 0x8L

.field private static final OPT_BIT_I_FRAMES_ONLY:J = 0x4L

.field private static final OPT_BIT_MEDIA_SEQUENCE:J = 0x1L

.field private static final OPT_BIT_ONGOING:J = 0x2L


# instance fields
.field private iFramesOnly:Z

.field private independentSegments:Z

.field private initBits:J

.field private mediaSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/lindstrom/m3u8/model/MediaSegment;",
            ">;"
        }
    .end annotation
.end field

.field private mediaSequence:I

.field private ongoing:Z

.field private optBits:J

.field private playlistType:Lio/lindstrom/m3u8/model/PlaylistType;

.field private targetDuration:I

.field private version:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->initBits:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->mediaSegments:Ljava/util/List;

    instance-of v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use: new MediaPlaylist.Builder()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)I
    .locals 0

    iget p0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->targetDuration:I

    return p0
.end method

.method static synthetic access$1000(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Z
    .locals 0

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->iFramesOnlyIsSet()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->iFramesOnly:Z

    return p0
.end method

.method static synthetic access$1200(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Z
    .locals 0

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->independentSegmentsIsSet()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->independentSegments:Z

    return p0
.end method

.method static synthetic access$200(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Lio/lindstrom/m3u8/model/PlaylistType;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->playlistType:Lio/lindstrom/m3u8/model/PlaylistType;

    return-object p0
.end method

.method static synthetic access$300(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->mediaSegments:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(ZLjava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->createUnmodifiableList(ZLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->version:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$600(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Z
    .locals 0

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->mediaSequenceIsSet()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)I
    .locals 0

    iget p0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->mediaSequence:I

    return p0
.end method

.method static synthetic access$800(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Z
    .locals 0

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->ongoingIsSet()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->ongoing:Z

    return p0
.end method

.method private static createSafeList(Ljava/lang/Iterable;ZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;ZZ)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz p2, :cond_2

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const-string v2, "element"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private static createUnmodifiableList(ZLjava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p0, p1, Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    move-object p0, p1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->trimToSize()V

    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private formatRequiredAttributesMessage()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-wide v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->initBits:J

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-string v1, "targetDuration"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot build MediaPlaylist, some of required attributes are not set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private from(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Lio/lindstrom/m3u8/model/Playlist;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/lindstrom/m3u8/model/Playlist;

    invoke-interface {v0}, Lio/lindstrom/m3u8/model/Playlist;->independentSegments()Z

    move-result v1

    invoke-virtual {p0, v1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->independentSegments(Z)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    invoke-interface {v0}, Lio/lindstrom/m3u8/model/Playlist;->version()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->version(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    :cond_0
    instance-of v0, p1, Lio/lindstrom/m3u8/model/MediaPlaylist;

    if-eqz v0, :cond_2

    check-cast p1, Lio/lindstrom/m3u8/model/MediaPlaylist;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaPlaylist;->mediaSegments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->addAllMediaSegments(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaPlaylist;->playlistType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->playlistType(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    :cond_1
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaPlaylist;->targetDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->targetDuration(I)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaPlaylist;->ongoing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->ongoing(Z)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaPlaylist;->iFramesOnly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->iFramesOnly(Z)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaPlaylist;->mediaSequence()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->mediaSequence(I)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    :cond_2
    return-void
.end method

.method private iFramesOnlyIsSet()Z
    .locals 4

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->optBits:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private independentSegmentsIsSet()Z
    .locals 4

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->optBits:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private mediaSequenceIsSet()Z
    .locals 4

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->optBits:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ongoingIsSet()Z
    .locals 4

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->optBits:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final addAllMediaSegments(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/lindstrom/m3u8/model/MediaSegment;",
            ">;)",
            "Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/lindstrom/m3u8/model/MediaSegment;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->mediaSegments:Ljava/util/List;

    const-string v2, "mediaSegments element"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    return-object p1
.end method

.method public final addMediaSegments(Lio/lindstrom/m3u8/model/MediaSegment;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    .locals 2

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->mediaSegments:Ljava/util/List;

    const-string v1, "mediaSegments element"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    return-object p1
.end method

.method public final varargs addMediaSegments([Lio/lindstrom/m3u8/model/MediaSegment;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->mediaSegments:Ljava/util/List;

    const-string v4, "mediaSegments element"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    return-object p1
.end method

.method public build()Lio/lindstrom/m3u8/model/MediaPlaylist;
    .locals 4

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->initBits:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$ImmutableMediaPlaylist;-><init>(Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;Lio/lindstrom/m3u8/model/MediaPlaylistBuilder$1;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->formatRequiredAttributesMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final from(Lio/lindstrom/m3u8/model/MediaPlaylist;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->from(Ljava/lang/Object;)V

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    return-object p1
.end method

.method public final from(Lio/lindstrom/m3u8/model/Playlist;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->from(Ljava/lang/Object;)V

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    return-object p1
.end method

.method public final iFramesOnly(Z)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    .locals 4

    iput-boolean p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->iFramesOnly:Z

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->optBits:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->optBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    return-object p1
.end method

.method public final independentSegments(Z)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    .locals 4

    iput-boolean p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->independentSegments:Z

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->optBits:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->optBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    return-object p1
.end method

.method public final mediaSegments(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/lindstrom/m3u8/model/MediaSegment;",
            ">;)",
            "Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->mediaSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->addAllMediaSegments(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mediaSequence(I)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    .locals 4

    iput p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->mediaSequence:I

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->optBits:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->optBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    return-object p1
.end method

.method public final ongoing(Z)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    .locals 4

    iput-boolean p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->ongoing:Z

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->optBits:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->optBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    return-object p1
.end method

.method public final playlistType(Lio/lindstrom/m3u8/model/PlaylistType;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    .locals 1

    const-string v0, "playlistType"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/lindstrom/m3u8/model/PlaylistType;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->playlistType:Lio/lindstrom/m3u8/model/PlaylistType;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    return-object p1
.end method

.method public final playlistType(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "+",
            "Lio/lindstrom/m3u8/model/PlaylistType;",
            ">;)",
            "Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/lindstrom/m3u8/model/PlaylistType;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->playlistType:Lio/lindstrom/m3u8/model/PlaylistType;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    return-object p1
.end method

.method public final targetDuration(I)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    .locals 4

    iput p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->targetDuration:I

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->initBits:J

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->initBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    return-object p1
.end method

.method public final version(I)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->version:Ljava/lang/Integer;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    return-object p1
.end method

.method public final version(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MediaPlaylistBuilder;->version:Ljava/lang/Integer;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    return-object p1
.end method
