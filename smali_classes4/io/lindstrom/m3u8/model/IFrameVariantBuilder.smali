.class Lio/lindstrom/m3u8/model/IFrameVariantBuilder;
.super Ljava/lang/Object;
.source "IFrameVariantBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;
    }
.end annotation


# static fields
.field private static final INIT_BIT_BANDWIDTH:J = 0x2L

.field private static final INIT_BIT_URI:J = 0x1L


# instance fields
.field private averageBandwidth:Ljava/lang/Long;

.field private bandwidth:J

.field private codecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hdcpLevel:Ljava/lang/String;

.field private initBits:J

.field private programId:Ljava/lang/Integer;

.field private resolution:Lio/lindstrom/m3u8/model/Resolution;

.field private uri:Ljava/lang/String;

.field private video:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->initBits:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->codecs:Ljava/util/List;

    instance-of v0, p0, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use: new IFrameVariant.Builder()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->uri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)J
    .locals 2

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->bandwidth:J

    return-wide v0
.end method

.method static synthetic access$300(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->averageBandwidth:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$400(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->codecs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(ZLjava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->createUnmodifiableList(ZLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)Lio/lindstrom/m3u8/model/Resolution;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->resolution:Lio/lindstrom/m3u8/model/Resolution;

    return-object p0
.end method

.method static synthetic access$700(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->hdcpLevel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->video:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->programId:Ljava/lang/Integer;

    return-object p0
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
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-wide v1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->initBits:J

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-string v1, "uri"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-wide v1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->initBits:J

    const-wide/16 v5, 0x2

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const-string v1, "bandwidth"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot build IFrameVariant, some of required attributes are not set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addAllCodecs(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/IFrameVariant$Builder;"
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

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->codecs:Ljava/util/List;

    const-string v2, "codecs element"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    return-object p1
.end method

.method public final addCodecs(Ljava/lang/String;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;
    .locals 2

    iget-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->codecs:Ljava/util/List;

    const-string v1, "codecs element"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    return-object p1
.end method

.method public final varargs addCodecs([Ljava/lang/String;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->codecs:Ljava/util/List;

    const-string v4, "codecs element"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    return-object p1
.end method

.method public final averageBandwidth(J)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->averageBandwidth:Ljava/lang/Long;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    return-object p1
.end method

.method public final averageBandwidth(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;)",
            "Lio/lindstrom/m3u8/model/IFrameVariant$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->averageBandwidth:Ljava/lang/Long;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    return-object p1
.end method

.method public final bandwidth(J)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;
    .locals 2

    iput-wide p1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->bandwidth:J

    iget-wide p1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->initBits:J

    const-wide/16 v0, -0x3

    and-long/2addr p1, v0

    iput-wide p1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->initBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    return-object p1
.end method

.method public build()Lio/lindstrom/m3u8/model/IFrameVariant;
    .locals 4

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->initBits:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;-><init>(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;Lio/lindstrom/m3u8/model/IFrameVariantBuilder$1;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->formatRequiredAttributesMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final codecs(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/IFrameVariant$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->codecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->addAllCodecs(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final from(Lio/lindstrom/m3u8/model/IFrameVariant;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;
    .locals 2

    const-string v0, "instance"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/IFrameVariant;->uri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->uri(Ljava/lang/String;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/IFrameVariant;->bandwidth()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->bandwidth(J)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/IFrameVariant;->averageBandwidth()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->averageBandwidth(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    :cond_0
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/IFrameVariant;->codecs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->addAllCodecs(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/IFrameVariant;->resolution()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->resolution(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    :cond_1
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/IFrameVariant;->hdcpLevel()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->hdcpLevel(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    :cond_2
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/IFrameVariant;->video()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->video(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    :cond_3
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/IFrameVariant;->programId()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->programId(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    :cond_4
    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    return-object p1
.end method

.method public final hdcpLevel(Ljava/lang/String;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;
    .locals 1

    const-string v0, "hdcpLevel"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->hdcpLevel:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    return-object p1
.end method

.method public final hdcpLevel(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/IFrameVariant$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->hdcpLevel:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    return-object p1
.end method

.method public final programId(I)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->programId:Ljava/lang/Integer;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    return-object p1
.end method

.method public final programId(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/lindstrom/m3u8/model/IFrameVariant$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->programId:Ljava/lang/Integer;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    return-object p1
.end method

.method public final resolution(Lio/lindstrom/m3u8/model/Resolution;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;
    .locals 1

    const-string v0, "resolution"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/lindstrom/m3u8/model/Resolution;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->resolution:Lio/lindstrom/m3u8/model/Resolution;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    return-object p1
.end method

.method public final resolution(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "+",
            "Lio/lindstrom/m3u8/model/Resolution;",
            ">;)",
            "Lio/lindstrom/m3u8/model/IFrameVariant$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/lindstrom/m3u8/model/Resolution;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->resolution:Lio/lindstrom/m3u8/model/Resolution;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    return-object p1
.end method

.method public final uri(Ljava/lang/String;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;
    .locals 4

    const-string v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->uri:Ljava/lang/String;

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->initBits:J

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->initBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    return-object p1
.end method

.method public final video(Ljava/lang/String;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;
    .locals 1

    const-string v0, "video"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->video:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    return-object p1
.end method

.method public final video(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/IFrameVariant$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->video:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    return-object p1
.end method
