.class final Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;
.super Ljava/lang/Object;
.source "VariantBuilder.java"

# interfaces
.implements Lio/lindstrom/m3u8/model/Variant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/lindstrom/m3u8/model/VariantBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutableVariant"
.end annotation


# instance fields
.field private final audio:Ljava/lang/String;

.field private final averageBandwidth:Ljava/lang/Long;

.field private final bandwidth:J

.field private final closedCaptions:Ljava/lang/String;

.field private final codecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final frameRate:Ljava/lang/Double;

.field private final hdcpLevel:Ljava/lang/String;

.field private final programId:Ljava/lang/Integer;

.field private final resolution:Lio/lindstrom/m3u8/model/Resolution;

.field private final subtitles:Ljava/lang/String;

.field private final uri:Ljava/lang/String;

.field private final video:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/lindstrom/m3u8/model/VariantBuilder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/lindstrom/m3u8/model/VariantBuilder;->access$100(Lio/lindstrom/m3u8/model/VariantBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->bandwidth:J

    invoke-static {p1}, Lio/lindstrom/m3u8/model/VariantBuilder;->access$200(Lio/lindstrom/m3u8/model/VariantBuilder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->averageBandwidth:Ljava/lang/Long;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/VariantBuilder;->access$300(Lio/lindstrom/m3u8/model/VariantBuilder;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lio/lindstrom/m3u8/model/VariantBuilder;->access$400(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->codecs:Ljava/util/List;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/VariantBuilder;->access$500(Lio/lindstrom/m3u8/model/VariantBuilder;)Lio/lindstrom/m3u8/model/Resolution;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->resolution:Lio/lindstrom/m3u8/model/Resolution;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/VariantBuilder;->access$600(Lio/lindstrom/m3u8/model/VariantBuilder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->frameRate:Ljava/lang/Double;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/VariantBuilder;->access$700(Lio/lindstrom/m3u8/model/VariantBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->hdcpLevel:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/VariantBuilder;->access$800(Lio/lindstrom/m3u8/model/VariantBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->audio:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/VariantBuilder;->access$900(Lio/lindstrom/m3u8/model/VariantBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->video:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/VariantBuilder;->access$1000(Lio/lindstrom/m3u8/model/VariantBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->subtitles:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/VariantBuilder;->access$1100(Lio/lindstrom/m3u8/model/VariantBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->closedCaptions:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/VariantBuilder;->access$1200(Lio/lindstrom/m3u8/model/VariantBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->uri:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/VariantBuilder;->access$1300(Lio/lindstrom/m3u8/model/VariantBuilder;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->programId:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lio/lindstrom/m3u8/model/VariantBuilder;Lio/lindstrom/m3u8/model/VariantBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;-><init>(Lio/lindstrom/m3u8/model/VariantBuilder;)V

    return-void
.end method

.method private equalTo(Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;)Z
    .locals 4

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->bandwidth:J

    iget-wide v2, p1, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->bandwidth:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->averageBandwidth:Ljava/lang/Long;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->averageBandwidth:Ljava/lang/Long;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->codecs:Ljava/util/List;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->codecs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->resolution:Lio/lindstrom/m3u8/model/Resolution;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->resolution:Lio/lindstrom/m3u8/model/Resolution;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->frameRate:Ljava/lang/Double;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->frameRate:Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->hdcpLevel:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->hdcpLevel:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->audio:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->audio:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->video:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->video:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->subtitles:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->subtitles:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->closedCaptions:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->closedCaptions:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->uri:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->programId:Ljava/lang/Integer;

    iget-object p1, p1, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->programId:Ljava/lang/Integer;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
.method public audio()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->audio:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public averageBandwidth()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->averageBandwidth:Ljava/lang/Long;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bandwidth()J
    .locals 2

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->bandwidth:J

    return-wide v0
.end method

.method public closedCaptions()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->closedCaptions:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public codecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->codecs:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;

    if-eqz v1, :cond_1

    check-cast p1, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->equalTo(Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public frameRate()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->frameRate:Ljava/lang/Double;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->bandwidth:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const v1, 0x2a0a0

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x1505

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->averageBandwidth:Ljava/lang/Long;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->codecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->resolution:Lio/lindstrom/m3u8/model/Resolution;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->frameRate:Ljava/lang/Double;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->hdcpLevel:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->audio:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->video:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->subtitles:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->closedCaptions:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->uri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->programId:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public hdcpLevel()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->hdcpLevel:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public programId()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->programId:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public resolution()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lio/lindstrom/m3u8/model/Resolution;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->resolution:Lio/lindstrom/m3u8/model/Resolution;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public subtitles()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->subtitles:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Variant{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "bandwidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->bandwidth:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->averageBandwidth:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "averageBandwidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->averageBandwidth:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "codecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->codecs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->resolution:Lio/lindstrom/m3u8/model/Resolution;

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->resolution:Lio/lindstrom/m3u8/model/Resolution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->frameRate:Ljava/lang/Double;

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "frameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->frameRate:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->hdcpLevel:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hdcpLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->hdcpLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->audio:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "audio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->audio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->video:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->video:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->subtitles:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "subtitles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->subtitles:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->closedCaptions:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "closedCaptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->closedCaptions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->programId:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "programId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->programId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public video()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/VariantBuilder$ImmutableVariant;->video:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
