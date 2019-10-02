.class final Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;
.super Ljava/lang/Object;
.source "MasterPlaylistBuilder.java"

# interfaces
.implements Lio/lindstrom/m3u8/model/MasterPlaylist;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutableMasterPlaylist"
.end annotation


# instance fields
.field private final alternativeRenditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/lindstrom/m3u8/model/AlternativeRendition;",
            ">;"
        }
    .end annotation
.end field

.field private final iFrameVariants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/lindstrom/m3u8/model/IFrameVariant;",
            ">;"
        }
    .end annotation
.end field

.field private final independentSegments:Z

.field private final variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/lindstrom/m3u8/model/Variant;",
            ">;"
        }
    .end annotation
.end field

.field private final version:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->access$100(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->access$200(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->alternativeRenditions:Ljava/util/List;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->access$300(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->access$200(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->variants:Ljava/util/List;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->access$400(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->access$200(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->iFrameVariants:Ljava/util/List;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->access$500(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->version:Ljava/lang/Integer;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->access$600(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->access$700(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/lindstrom/m3u8/model/Playlist$-CC;->$default$independentSegments(Lio/lindstrom/m3u8/model/Playlist;)Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->independentSegments:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;-><init>(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;)V

    return-void
.end method

.method private equalTo(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;)Z
    .locals 2

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->alternativeRenditions:Ljava/util/List;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->alternativeRenditions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->variants:Ljava/util/List;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->variants:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->iFrameVariants:Ljava/util/List;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->iFrameVariants:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->version:Ljava/lang/Integer;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->version:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->independentSegments:Z

    iget-boolean p1, p1, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->independentSegments:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public alternativeRenditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/lindstrom/m3u8/model/AlternativeRendition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->alternativeRenditions:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;

    if-eqz v1, :cond_1

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->equalTo(Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;)Z

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

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->alternativeRenditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0x2a0a0

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x1505

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->iFrameVariants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->version:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-boolean v2, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->independentSegments:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public iFrameVariants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/lindstrom/m3u8/model/IFrameVariant;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->iFrameVariants:Ljava/util/List;

    return-object v0
.end method

.method public independentSegments()Z
    .locals 1

    iget-boolean v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->independentSegments:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MasterPlaylist{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "alternativeRenditions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->alternativeRenditions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "variants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->variants:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "iFrameVariants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->iFrameVariants:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->version:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->version:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "independentSegments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->independentSegments:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public variants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/lindstrom/m3u8/model/Variant;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->variants:Ljava/util/List;

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

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder$ImmutableMasterPlaylist;->version:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
