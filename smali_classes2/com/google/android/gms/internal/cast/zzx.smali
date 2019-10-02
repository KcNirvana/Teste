.class public final Lcom/google/android/gms/internal/cast/zzx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzab;


# instance fields
.field private final zzgs:Landroid/content/Context;

.field private final zzow:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field private zzox:Landroid/net/Uri;

.field private zzoy:Lcom/google/android/gms/internal/cast/zzz;

.field private zzoz:Lcom/google/android/gms/internal/cast/zzac;

.field private zzpa:Landroid/graphics/Bitmap;

.field private zzpb:Z

.field private zzpc:Lcom/google/android/gms/internal/cast/zzy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzx;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/cast/framework/media/ImageHints;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzgs:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzx;->zzow:Lcom/google/android/gms/cast/framework/media/ImageHints;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzac;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzac;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzoz:Lcom/google/android/gms/internal/cast/zzac;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzx;->reset()V

    return-void
.end method

.method private final reset()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzoy:Lcom/google/android/gms/internal/cast/zzz;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzoy:Lcom/google/android/gms/internal/cast/zzz;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cast/zzz;->cancel(Z)Z

    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzoy:Lcom/google/android/gms/internal/cast/zzz;

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzox:Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzpa:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzpb:Z

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzx;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzpc:Lcom/google/android/gms/internal/cast/zzy;

    return-void
.end method

.method public final onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzpa:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzpb:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzpc:Lcom/google/android/gms/internal/cast/zzy;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzpc:Lcom/google/android/gms/internal/cast/zzy;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzpa:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/cast/zzy;->zza(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzoy:Lcom/google/android/gms/internal/cast/zzz;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzpc:Lcom/google/android/gms/internal/cast/zzy;

    return-void
.end method

.method public final zza(Landroid/net/Uri;)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzx;->reset()V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzox:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzx;->reset()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzox:Landroid/net/Uri;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzow:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getWidthInPixels()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzow:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getHeightInPixels()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzx;->zzgs:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzow:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getWidthInPixels()I

    move-result v5

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzow:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getHeightInPixels()I

    move-result v6

    new-instance p1, Lcom/google/android/gms/internal/cast/zzz;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/cast/zzz;-><init>(Landroid/content/Context;IIZLcom/google/android/gms/internal/cast/zzab;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzoy:Lcom/google/android/gms/internal/cast/zzz;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzgs:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/cast/zzz;

    invoke-direct {v1, p1, p0}, Lcom/google/android/gms/internal/cast/zzz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cast/zzab;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzoy:Lcom/google/android/gms/internal/cast/zzz;

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzoy:Lcom/google/android/gms/internal/cast/zzz;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzox:Landroid/net/Uri;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Landroid/net/Uri;

    aput-object v1, v0, v2

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/cast/zzz;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzpb:Z

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v2
.end method
