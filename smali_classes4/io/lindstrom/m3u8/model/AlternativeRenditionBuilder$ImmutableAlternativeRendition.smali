.class final Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;
.super Ljava/lang/Object;
.source "AlternativeRenditionBuilder.java"

# interfaces
.implements Lio/lindstrom/m3u8/model/AlternativeRendition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutableAlternativeRendition"
.end annotation


# instance fields
.field private final assocLanguage:Ljava/lang/String;

.field private final autoSelect:Ljava/lang/Boolean;

.field private final channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final characteristics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultRendition:Ljava/lang/Boolean;

.field private final forced:Ljava/lang/Boolean;

.field private final groupId:Ljava/lang/String;

.field private final inStreamId:Ljava/lang/String;

.field private final language:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final type:Lio/lindstrom/m3u8/model/MediaType;

.field private final uri:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->access$100(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Lio/lindstrom/m3u8/model/MediaType;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->type:Lio/lindstrom/m3u8/model/MediaType;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->access$200(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->uri:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->access$300(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->groupId:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->access$400(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->language:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->access$500(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->assocLanguage:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->access$600(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->name:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->access$700(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->defaultRendition:Ljava/lang/Boolean;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->access$800(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->autoSelect:Ljava/lang/Boolean;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->access$900(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->forced:Ljava/lang/Boolean;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->access$1000(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->inStreamId:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->access$1100(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->access$1200(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->characteristics:Ljava/util/List;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->access$1300(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;->access$1200(ZLjava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->channels:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;-><init>(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder;)V

    return-void
.end method

.method private equalTo(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;)Z
    .locals 2

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->type:Lio/lindstrom/m3u8/model/MediaType;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->type:Lio/lindstrom/m3u8/model/MediaType;

    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->uri:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->uri:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->groupId:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->language:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->language:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->assocLanguage:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->assocLanguage:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->name:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->defaultRendition:Ljava/lang/Boolean;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->defaultRendition:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->autoSelect:Ljava/lang/Boolean;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->autoSelect:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->forced:Ljava/lang/Boolean;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->forced:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->inStreamId:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->inStreamId:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->characteristics:Ljava/util/List;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->characteristics:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->channels:Ljava/util/List;

    iget-object p1, p1, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->channels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public assocLanguage()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->assocLanguage:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public autoSelect()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->autoSelect:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public channels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->channels:Ljava/util/List;

    return-object v0
.end method

.method public characteristics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->characteristics:Ljava/util/List;

    return-object v0
.end method

.method public defaultRendition()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->defaultRendition:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;

    if-eqz v1, :cond_1

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->equalTo(Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public forced()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->forced:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public groupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->type:Lio/lindstrom/m3u8/model/MediaType;

    invoke-virtual {v0}, Lio/lindstrom/m3u8/model/MediaType;->hashCode()I

    move-result v0

    const v1, 0x2a0a0

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x1505

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->uri:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->groupId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->language:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->assocLanguage:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->defaultRendition:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->autoSelect:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->forced:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->inStreamId:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->characteristics:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->channels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public inStreamId()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->inStreamId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public language()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->language:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlternativeRendition{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->type:Lio/lindstrom/m3u8/model/MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->uri:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->language:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->assocLanguage:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "assocLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->assocLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->defaultRendition:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "defaultRendition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->defaultRendition:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->autoSelect:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "autoSelect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->autoSelect:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->forced:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "forced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->forced:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->inStreamId:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "inStreamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->inStreamId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "characteristics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->characteristics:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->channels:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lio/lindstrom/m3u8/model/MediaType;
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->type:Lio/lindstrom/m3u8/model/MediaType;

    return-object v0
.end method

.method public uri()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/AlternativeRenditionBuilder$ImmutableAlternativeRendition;->uri:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
