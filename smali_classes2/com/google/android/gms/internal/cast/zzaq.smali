.class public final Lcom/google/android/gms/internal/cast/zzaq;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;


# instance fields
.field private final zzkw:Lcom/google/android/gms/cast/framework/media/ImagePicker;

.field private final zzow:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field private final zzpw:Landroid/widget/ImageView;

.field private final zzpy:Lcom/google/android/gms/internal/cast/zzx;

.field private final zzqa:Landroid/graphics/Bitmap;

.field private final zzqb:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;ILandroid/view/View;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/cast/framework/media/ImageHints;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzpw:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzow:Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzqa:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzqb:Landroid/view/View;

    invoke-static {p2}, Lcom/google/android/gms/cast/framework/CastContext;->zzb(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzkw:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzx;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzpy:Lcom/google/android/gms/internal/cast/zzx;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzaq;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzqb:Landroid/view/View;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/cast/zzaq;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzpw:Landroid/widget/ImageView;

    return-object p0
.end method

.method private final zzby()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzkw:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzkw:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzow:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;Lcom/google/android/gms/cast/framework/media/ImageHints;)Lcom/google/android/gms/common/images/WebImage;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/framework/media/MediaUtils;->getImageUri(Lcom/google/android/gms/cast/MediaInfo;I)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzaq;->zzbz()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzpy:Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/cast/zzx;->zza(Landroid/net/Uri;)Z

    return-void

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzaq;->zzbz()V

    return-void
.end method

.method private final zzbz()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzqb:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzqb:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzpw:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzqa:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzpw:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzqa:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onMediaStatusUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzaq;->zzby()V

    return-void
.end method

.method public final onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzpy:Lcom/google/android/gms/internal/cast/zzx;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzar;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzar;-><init>(Lcom/google/android/gms/internal/cast/zzaq;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzx;->zza(Lcom/google/android/gms/internal/cast/zzy;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzaq;->zzbz()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzaq;->zzby()V

    return-void
.end method

.method public final onSessionEnded()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzpy:Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzx;->clear()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzaq;->zzbz()V

    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method
