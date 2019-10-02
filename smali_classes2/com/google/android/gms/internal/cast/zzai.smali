.class public final Lcom/google/android/gms/internal/cast/zzai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;


# instance fields
.field private zzai:Lcom/google/android/gms/cast/CastDevice;

.field private final zzgs:Landroid/content/Context;

.field private zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private final zzip:Lcom/google/android/gms/internal/cast/zzw;

.field private zzld:Z

.field private final zzpg:Lcom/google/android/gms/cast/framework/CastOptions;

.field private final zzph:Landroid/content/ComponentName;

.field private final zzpi:Lcom/google/android/gms/internal/cast/zzx;

.field private final zzpj:Lcom/google/android/gms/internal/cast/zzx;

.field private zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

.field private zzpl:Landroid/support/v4/media/session/MediaSessionCompat$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpg:Lcom/google/android/gms/cast/framework/CastOptions;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzai;->zzip:Lcom/google/android/gms/internal/cast/zzw;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpg:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpg:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getExpandedControllerActivityClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpg:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getExpandedControllerActivityClassName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzph:Landroid/content/ComponentName;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzx;

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzx;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpi:Lcom/google/android/gms/internal/cast/zzx;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpi:Lcom/google/android/gms/internal/cast/zzx;

    new-instance p2, Lcom/google/android/gms/internal/cast/zzaj;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/cast/zzaj;-><init>(Lcom/google/android/gms/internal/cast/zzai;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzx;->zza(Lcom/google/android/gms/internal/cast/zzy;)V

    new-instance p1, Lcom/google/android/gms/internal/cast/zzx;

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzx;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpj:Lcom/google/android/gms/internal/cast/zzx;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpj:Lcom/google/android/gms/internal/cast/zzx;

    new-instance p2, Lcom/google/android/gms/internal/cast/zzak;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/cast/zzak;-><init>(Lcom/google/android/gms/internal/cast/zzai;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzx;->zza(Lcom/google/android/gms/internal/cast/zzy;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpg:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpg:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;I)Lcom/google/android/gms/common/images/WebImage;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaMetadata;->hasImages()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/images/WebImage;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzai;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-object p0
.end method

.method private final zza(ILcom/google/android/gms/cast/MediaInfo;)V
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance p2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {p2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    invoke-virtual {p2, v3, v1, v2, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance p2, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const-wide/16 v4, 0x5

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x200

    :goto_0
    iget-object v6, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v7, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v7}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    invoke-virtual {v7, p1, v1, v2, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzph:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzph:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzai;->zzbt()Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    const-string v2, "android.media.metadata.TITLE"

    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {p1, v4}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    const-string v2, "android.media.metadata.DISPLAY_TITLE"

    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {p1, v4}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    const-string v2, "android.media.metadata.DISPLAY_SUBTITLE"

    const-string v4, "com.google.android.gms.cast.metadata.SUBTITLE"

    invoke-virtual {p1, v4}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/cast/zzai;->zza(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpi:Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cast/zzx;->zza(Landroid/net/Uri;)Z

    goto :goto_2

    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/internal/cast/zzai;->zza(Landroid/graphics/Bitmap;I)V

    :goto_2
    const/4 p2, 0x3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzai;->zza(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpj:Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/zzx;->zza(Landroid/net/Uri;)Z

    return-void

    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/cast/zzai;->zza(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private final zza(Landroid/graphics/Bitmap;I)V
    .locals 2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzai;->zzbt()Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    const-string v1, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void

    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 p2, 0x1

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzai;->zzbt()Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    const-string v1, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_2
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzai;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzai;->zza(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private final zzbt()Landroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    return-object v0

    :cond_0
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v1, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-object v1
.end method

.method private final zzbu()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpg:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private final zzbv()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpg:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getEnableReconnectionService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/cast/framework/ReconnectionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public final onAdBreakStatusUpdated()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzai;->zzg(Z)V

    return-void
.end method

.method public final onMetadataUpdated()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzai;->zzg(Z)V

    return-void
.end method

.method public final onPreloadStatusUpdated()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzai;->zzg(Z)V

    return-void
.end method

.method public final onQueueStatusUpdated()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzai;->zzg(Z)V

    return-void
.end method

.method public final onSendingRemoteMediaRequest()V
    .locals 0

    return-void
.end method

.method public final onStatusUpdated()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzai;->zzg(Z)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/cast/CastDevice;)V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzld:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpg:Lcom/google/android/gms/cast/framework/CastOptions;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpg:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->addListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzai:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x3

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1, p2, v0, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_1
    new-instance p1, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpg:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaIntentReceiverClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    const-string v5, "CastMediaSession"

    invoke-direct {v2, v4, v5, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    invoke-direct {p0, v3, p2}, Lcom/google/android/gms/internal/cast/zzai;->zza(ILcom/google/android/gms/cast/MediaInfo;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzai:Lcom/google/android/gms/cast/CastDevice;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzai:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/google/android/gms/cast/framework/R$string;->cast_casting_to_device:I

    new-array v5, p2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gms/internal/cast/zzai;->zzai:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v6}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzal;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/cast/zzal;-><init>(Lcom/google/android/gms/internal/cast/zzai;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpl:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpl:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzip:Lcom/google/android/gms/internal/cast/zzw;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzw;->setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzld:Z

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/cast/zzai;->zzg(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final zzg(Z)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    move-object v3, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v3

    :goto_1
    const/4 v4, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    if-nez v3, :cond_3

    goto :goto_5

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getPlayerState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const/4 v3, 0x0

    goto :goto_6

    :pswitch_1
    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x2

    goto :goto_6

    :pswitch_2
    const/4 v3, 0x0

    const/4 v4, 0x3

    goto :goto_6

    :pswitch_3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getIdleReason()I

    move-result v3

    iget-object v9, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v9}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v9

    if-eqz v9, :cond_4

    if-ne v3, v6, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLoadingItemId()I

    move-result v10

    if-eqz v10, :cond_6

    if-eq v3, v7, :cond_5

    if-ne v3, v5, :cond_6

    :cond_5
    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-eqz v9, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v10}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v3, 0x0

    :cond_9
    const/4 v4, 0x0

    :goto_6
    invoke-direct {p0, v4, v2}, Lcom/google/android/gms/internal/cast/zzai;->zza(ILcom/google/android/gms/cast/MediaInfo;)V

    if-nez v4, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzai;->zzbu()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzai;->zzbv()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpg:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v0, :cond_10

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    const-class v4, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_media_notification_force_update"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_media_info"

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "extra_remote_media_client_player_state"

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getPlayerState()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_cast_device"

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzai:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "extra_media_session_token"

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v2, :cond_b

    goto :goto_7

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v1

    :goto_7
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->getQueueRepeatMode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentItemId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/MediaStatus;->getIndexById(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_8

    :pswitch_4
    const/4 v2, 0x1

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemCount()I

    move-result p1

    sub-int/2addr p1, v7

    if-ge v1, p1, :cond_e

    goto :goto_9

    :cond_d
    const/4 v2, 0x0

    :cond_e
    const/4 v7, 0x0

    :goto_9
    const-string p1, "extra_can_skip_next"

    invoke-virtual {v0, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "extra_can_skip_prev"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_f
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_10
    if-nez v3, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpg:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastOptions;->getEnableReconnectionService()Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    const-class v1, Lcom/google/android/gms/cast/framework/ReconnectionService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_11
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final zzi(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzld:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzld:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->removeListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgs:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzip:Lcom/google/android/gms/internal/cast/zzw;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zzw;->setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpi:Lcom/google/android/gms/internal/cast/zzx;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpi:Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzx;->clear()V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpj:Lcom/google/android/gms/internal/cast/zzx;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpj:Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzx;->clear()V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v3, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/cast/zzai;->zza(ILcom/google/android/gms/cast/MediaInfo;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    iput-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpk:Landroid/support/v4/media/session/MediaSessionCompat;

    :cond_5
    iput-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzai:Lcom/google/android/gms/cast/CastDevice;

    iput-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzpl:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzai;->zzbu()V

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzai;->zzbv()V

    :cond_6
    return-void
.end method
