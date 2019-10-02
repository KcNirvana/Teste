.class final Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;
.super Ljava/lang/Object;
.source "ResolutionBuilder.java"

# interfaces
.implements Lio/lindstrom/m3u8/model/Resolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/lindstrom/m3u8/model/ResolutionBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutableResolution"
.end annotation


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method private constructor <init>(Lio/lindstrom/m3u8/model/ResolutionBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/lindstrom/m3u8/model/ResolutionBuilder;->access$100(Lio/lindstrom/m3u8/model/ResolutionBuilder;)I

    move-result v0

    iput v0, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;->width:I

    invoke-static {p1}, Lio/lindstrom/m3u8/model/ResolutionBuilder;->access$200(Lio/lindstrom/m3u8/model/ResolutionBuilder;)I

    move-result p1

    iput p1, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;->height:I

    return-void
.end method

.method synthetic constructor <init>(Lio/lindstrom/m3u8/model/ResolutionBuilder;Lio/lindstrom/m3u8/model/ResolutionBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;-><init>(Lio/lindstrom/m3u8/model/ResolutionBuilder;)V

    return-void
.end method

.method private equalTo(Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;)Z
    .locals 2

    iget v0, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;->width:I

    iget v1, p1, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;->height:I

    iget p1, p1, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;->height:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;

    if-eqz v1, :cond_1

    check-cast p1, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;->equalTo(Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;)Z

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

    iget v0, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;->width:I

    const v1, 0x2a0a0

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x1505

    shl-int/lit8 v0, v1, 0x5

    iget v2, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;->height:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public height()I
    .locals 1

    iget v0, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;->height:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resolution{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public width()I
    .locals 1

    iget v0, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;->width:I

    return v0
.end method
