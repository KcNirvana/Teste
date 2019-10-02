.class Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;
.super Ljava/lang/Object;
.source "MasterPlaylistBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;
    }
.end annotation


# static fields
.field private static final OPT_BIT_INDEPENDENT_SEGMENTS:J = 0x1L


# instance fields
.field private alternativeRenditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/lindstrom/m3u8/model/AlternativeRendition;",
            ">;"
        }
    .end annotation
.end field

.field private iFrameVariants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/lindstrom/m3u8/model/IFrameVariant;",
            ">;"
        }
    .end annotation
.end field

.field private independentSegments:Z

.field private optBits:J

.field private variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/lindstrom/m3u8/model/Variant;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->alternativeRenditions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->variants:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->iFrameVariants:Ljava/util/List;

    instance-of v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use: new MasterPlaylist.Builder()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->alternativeRenditions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(ZLjava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->createUnmodifiableList(ZLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->variants:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->iFrameVariants:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->version:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$600(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;)Z
    .locals 0

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->independentSegmentsIsSet()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->independentSegments:Z

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

.method private from(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Lio/lindstrom/m3u8/model/Playlist;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/lindstrom/m3u8/model/Playlist;

    invoke-interface {v0}, Lio/lindstrom/m3u8/model/Playlist;->independentSegments()Z

    move-result v1

    invoke-virtual {p0, v1}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->independentSegments(Z)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    invoke-interface {v0}, Lio/lindstrom/m3u8/model/Playlist;->version()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->version(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    :cond_0
    instance-of v0, p1, Lio/lindstrom/m3u8/model/MasterPlaylist;

    if-eqz v0, :cond_1

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MasterPlaylist;->alternativeRenditions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->addAllAlternativeRenditions(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MasterPlaylist;->iFrameVariants()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->addAllIFrameVariants(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MasterPlaylist;->variants()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->addAllVariants(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    :cond_1
    return-void
.end method

.method private independentSegmentsIsSet()Z
    .locals 4

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->optBits:J

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


# virtual methods
.method public final addAllAlternativeRenditions(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/lindstrom/m3u8/model/AlternativeRendition;",
            ">;)",
            "Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;"
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

    check-cast v0, Lio/lindstrom/m3u8/model/AlternativeRendition;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->alternativeRenditions:Ljava/util/List;

    const-string v2, "alternativeRenditions element"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    return-object p1
.end method

.method public final addAllIFrameVariants(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/lindstrom/m3u8/model/IFrameVariant;",
            ">;)",
            "Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;"
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

    check-cast v0, Lio/lindstrom/m3u8/model/IFrameVariant;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->iFrameVariants:Ljava/util/List;

    const-string v2, "iFrameVariants element"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    return-object p1
.end method

.method public final addAllVariants(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/lindstrom/m3u8/model/Variant;",
            ">;)",
            "Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;"
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

    check-cast v0, Lio/lindstrom/m3u8/model/Variant;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->variants:Ljava/util/List;

    const-string v2, "variants element"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    return-object p1
.end method

.method public final addAlternativeRenditions(Lio/lindstrom/m3u8/model/AlternativeRendition;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 2

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->alternativeRenditions:Ljava/util/List;

    const-string v1, "alternativeRenditions element"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    return-object p1
.end method

.method public final varargs addAlternativeRenditions([Lio/lindstrom/m3u8/model/AlternativeRendition;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->alternativeRenditions:Ljava/util/List;

    const-string v4, "alternativeRenditions element"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    return-object p1
.end method

.method public final addIFrameVariants(Lio/lindstrom/m3u8/model/IFrameVariant;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 2

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->iFrameVariants:Ljava/util/List;

    const-string v1, "iFrameVariants element"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    return-object p1
.end method

.method public final varargs addIFrameVariants([Lio/lindstrom/m3u8/model/IFrameVariant;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->iFrameVariants:Ljava/util/List;

    const-string v4, "iFrameVariants element"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    return-object p1
.end method

.method public final addVariants(Lio/lindstrom/m3u8/model/Variant;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 2

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->variants:Ljava/util/List;

    const-string v1, "variants element"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    return-object p1
.end method

.method public final varargs addVariants([Lio/lindstrom/m3u8/model/Variant;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->variants:Ljava/util/List;

    const-string v4, "variants element"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    return-object p1
.end method

.method public final alternativeRenditions(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/lindstrom/m3u8/model/AlternativeRendition;",
            ">;)",
            "Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->alternativeRenditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->addAllAlternativeRenditions(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lio/lindstrom/m3u8/model/MasterPlaylist;
    .locals 2

    new-instance v0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;-><init>(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$1;)V

    return-object v0
.end method

.method public final from(Lio/lindstrom/m3u8/model/MasterPlaylist;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->from(Ljava/lang/Object;)V

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    return-object p1
.end method

.method public final from(Lio/lindstrom/m3u8/model/Playlist;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->from(Ljava/lang/Object;)V

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    return-object p1
.end method

.method public final iFrameVariants(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/lindstrom/m3u8/model/IFrameVariant;",
            ">;)",
            "Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->iFrameVariants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->addAllIFrameVariants(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final independentSegments(Z)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 4

    iput-boolean p1, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->independentSegments:Z

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->optBits:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->optBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    return-object p1
.end method

.method public final variants(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/lindstrom/m3u8/model/Variant;",
            ">;)",
            "Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->addAllVariants(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final version(I)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->version:Ljava/lang/Integer;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    return-object p1
.end method

.method public final version(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->version:Ljava/lang/Integer;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    return-object p1
.end method
