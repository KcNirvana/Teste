.class public final Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final TYPE_AUDIO:I = 0x1

.field public static final TYPE_SUBTITLE:I = 0x2

.field public static final TYPE_VARIANT:I


# instance fields
.field public final trackIndex:I

.field public final type:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->type:I

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->trackIndex:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;)I
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->type:I

    iget v1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->type:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->trackIndex:I

    iget v1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->trackIndex:I

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->compareTo(Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    return v1

    :cond_2
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->type:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->type:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->trackIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->trackIndex:I

    if-ne v2, v3, :cond_3

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->type:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->trackIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->trackIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
