.class Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;
.super Ljava/lang/Object;
.source "AlternativeRenditionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;
    }
.end annotation


# static fields
.field private static final INIT_BIT_GROUP_ID:J = 0x2L

.field private static final INIT_BIT_NAME:J = 0x4L

.field private static final INIT_BIT_TYPE:J = 0x1L


# instance fields
.field private assocLanguage:Ljava/lang/String;

.field private autoSelect:Ljava/lang/Boolean;

.field private channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private characteristics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultRendition:Ljava/lang/Boolean;

.field private forced:Ljava/lang/Boolean;

.field private groupId:Ljava/lang/String;

.field private inStreamId:Ljava/lang/String;

.field private initBits:J

.field private language:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:Lio/lindstrom/m3u8/model/MediaType;

.field private uri:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->initBits:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->characteristics:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->channels:Ljava/util/List;

    instance-of v0, p0, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use: new AlternativeRendition.Builder()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Lio/lindstrom/m3u8/model/MediaType;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->type:Lio/lindstrom/m3u8/model/MediaType;

    return-object p0
.end method

.method static synthetic access$1000(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->inStreamId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->characteristics:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(ZLjava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->createUnmodifiableList(ZLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->channels:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->uri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->groupId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->language:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->assocLanguage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->defaultRendition:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$800(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->autoSelect:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$900(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->forced:Ljava/lang/Boolean;

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

    iget-wide v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->initBits:J

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-wide v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->initBits:J

    const-wide/16 v5, 0x2

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const-string v1, "groupId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-wide v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->initBits:J

    const-wide/16 v5, 0x4

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot build AlternativeRendition, some of required attributes are not set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addAllChannels(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;"
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

    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->channels:Ljava/util/List;

    const-string v2, "channels element"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final addAllCharacteristics(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;"
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

    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->characteristics:Ljava/util/List;

    const-string v2, "characteristics element"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final addChannels(Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 2

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->channels:Ljava/util/List;

    const-string v1, "channels element"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final varargs addChannels([Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->channels:Ljava/util/List;

    const-string v4, "channels element"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final addCharacteristics(Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 2

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->characteristics:Ljava/util/List;

    const-string v1, "characteristics element"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final varargs addCharacteristics([Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->characteristics:Ljava/util/List;

    const-string v4, "characteristics element"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final assocLanguage(Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 1

    const-string v0, "assocLanguage"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->assocLanguage:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final assocLanguage(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->assocLanguage:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final autoSelect(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->autoSelect:Ljava/lang/Boolean;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final autoSelect(Z)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->autoSelect:Ljava/lang/Boolean;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public build()Lio/lindstrom/m3u8/model/AlternativeRendition;
    .locals 4

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->initBits:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;-><init>(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$1;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->formatRequiredAttributesMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final channels(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->addAllChannels(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final characteristics(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->characteristics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->addAllCharacteristics(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final defaultRendition(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->defaultRendition:Ljava/lang/Boolean;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final defaultRendition(Z)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->defaultRendition:Ljava/lang/Boolean;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final forced(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->forced:Ljava/lang/Boolean;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final forced(Z)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->forced:Ljava/lang/Boolean;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final from(Lio/lindstrom/m3u8/model/AlternativeRendition;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 2

    const-string v0, "instance"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->type()Lio/lindstrom/m3u8/model/MediaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->type(Lio/lindstrom/m3u8/model/MediaType;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->uri()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->uri(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    :cond_0
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->groupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->groupId(Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->language()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->language(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    :cond_1
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->assocLanguage()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->assocLanguage(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    :cond_2
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->name(Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->defaultRendition()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->defaultRendition(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    :cond_3
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->autoSelect()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->autoSelect(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    :cond_4
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->forced()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->forced(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    :cond_5
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->inStreamId()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->inStreamId(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    :cond_6
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->characteristics()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->addAllCharacteristics(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->channels()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->addAllChannels(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final groupId(Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 4

    const-string v0, "groupId"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->groupId:Ljava/lang/String;

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->initBits:J

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->initBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final inStreamId(Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 1

    const-string v0, "inStreamId"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->inStreamId:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final inStreamId(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->inStreamId:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final language(Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 1

    const-string v0, "language"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->language:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final language(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->language:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final name(Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->name:Ljava/lang/String;

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->initBits:J

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->initBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final type(Lio/lindstrom/m3u8/model/MediaType;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 4

    const-string v0, "type"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/lindstrom/m3u8/model/MediaType;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->type:Lio/lindstrom/m3u8/model/MediaType;

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->initBits:J

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->initBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final uri(Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->uri:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method

.method public final uri(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->uri:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    return-object p1
.end method
