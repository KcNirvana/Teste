.class public final Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;
.super Lcom/google/android/exoplayer2/offline/DownloadHelper;
.source ""


# instance fields
.field private final customCacheKey:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;->customCacheKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDownloadAction([BLjava/util/List;)Lcom/google/android/exoplayer2/offline/DownloadAction;
    .locals 4
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;->customCacheKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p1, v2}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;-><init>(Landroid/net/Uri;Z[BLjava/lang/String;)V

    return-object v0
.end method

.method public getPeriodCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getRemoveAction([B)Lcom/google/android/exoplayer2/offline/DownloadAction;
    .locals 4
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;->customCacheKey:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, p1, v2}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;-><init>(Landroid/net/Uri;Z[BLjava/lang/String;)V

    return-object v0
.end method

.method public getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method protected prepareInternal()V
    .locals 0

    return-void
.end method
