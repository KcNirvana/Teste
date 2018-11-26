.class public final Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final count:I

.field public final durationsUs:[J

.field public final states:[I

.field public final uris:[Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v2, 0x0

    new-array v0, v2, [I

    new-array v1, v2, [Landroid/net/Uri;

    new-array v2, v2, [J

    const/4 v3, -0x1

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(I[I[Landroid/net/Uri;[J)V

    return-void
.end method

.method private constructor <init>(I[I[Landroid/net/Uri;[J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput p1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static copyDurationsUsWithSpaceForAdCount([JI)[J
    .locals 6
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v2, v0, v1, v4, v5}, Ljava/util/Arrays;->fill([JIIJ)V

    return-object v2
.end method

.method private static copyStatesWithSpaceForAdCount([II)[I
    .locals 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    return-object v2
.end method


# virtual methods
.method public getFirstAdIndexToPlay()I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->getNextAdIndexToPlay(I)I

    move-result v0

    return v0
.end method

.method public getNextAdIndexToPlay(I)I
    .locals 3

    add-int/lit8 v0, p1, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hasUnplayedAds()Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->getFirstAdIndexToPlay()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public withAdCount(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .locals 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    new-instance v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    invoke-direct {v3, p1, v1, v0, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v3

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v0, v0

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public withAdDurationsUs([J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .locals 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v0

    :cond_1
    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object p1

    goto :goto_1
.end method

.method public withAdState(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .locals 5
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    add-int/lit8 v3, p2, 0x1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v3

    aget v0, v3, p2

    if-nez v0, :cond_3

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v0, v0

    array-length v1, v3

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v1, v3

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v0

    move-object v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v0, v0

    array-length v2, v3

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v2, v3

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    :goto_3
    aput p1, v3, p2

    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    invoke-direct {v2, v4, v3, v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v2

    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-lt p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    aget v0, v3, p2

    if-eq v0, v2, :cond_1

    aget v0, v3, p2

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    move-object v1, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    goto :goto_3
.end method

.method public withAdUri(Landroid/net/Uri;I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .locals 5
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    add-int/lit8 v3, p2, 0x1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v3

    aget v0, v3, p2

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v0, v0

    array-length v1, v3

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v1, v3

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v0

    move-object v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v4, v3

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    aput-object p1, v0, p2

    aput v2, v3, p2

    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    invoke-direct {v2, v4, v3, v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v2

    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-lt p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    move-object v1, v0

    goto :goto_2
.end method

.method public withAllAdsSkipped()Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .locals 5
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    :goto_0
    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    new-array v2, v0, [I

    new-array v3, v0, [Landroid/net/Uri;

    new-array v4, v0, [J

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v1

    :cond_1
    aget v3, v2, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 v3, 0x2

    aput v3, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    aget v3, v2, v0

    if-eqz v3, :cond_2

    goto :goto_1
.end method
