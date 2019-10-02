.class public Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;
.super Landroid/support/v4/app/DialogFragment;


# instance fields
.field private zzdm:[J

.field private zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private zzok:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private zzol:Ljava/util/List;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation
.end field

.field private zzom:Ljava/util/List;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation
.end field

.field private zzon:Landroid/app/Dialog;

.field private zzoo:Lcom/google/android/gms/cast/MediaInfo;

.field private zzop:[J


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/cast/MediaInfo;[J)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzoo:Lcom/google/android/gms/cast/MediaInfo;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzop:[J

    return-void
.end method

.method public static newInstance()Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/gms/cast/MediaInfo;[J)Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;-><init>(Lcom/google/android/gms/cast/MediaInfo;[J)V

    return-object v0
.end method

.method private static zza(Ljava/util/List;[JI)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;[JI)I"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-wide v4, p1, v3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/cast/MediaTrack;

    invoke-virtual {v6}, Lcom/google/android/gms/cast/MediaTrack;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return p2
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzon:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzon:Landroid/app/Dialog;

    return-object p1
.end method

.method private static zza(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/MediaTrack;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaTrack;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;Lcom/google/android/gms/cast/framework/media/zzbb;Lcom/google/android/gms/cast/framework/media/zzbb;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zza(Lcom/google/android/gms/cast/framework/media/zzbb;Lcom/google/android/gms/cast/framework/media/zzbb;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/cast/framework/media/zzbb;Lcom/google/android/gms/cast/framework/media/zzbb;)V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzok:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/zzbb;->zzbs()Lcom/google/android/gms/cast/MediaTrack;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaTrack;->getId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaTrack;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/zzbb;->zzbs()Lcom/google/android/gms/cast/MediaTrack;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaTrack;->getId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzdm:[J

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzdm:[J

    array-length p1, p1

    if-lez p1, :cond_6

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzom:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/MediaTrack;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaTrack;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzol:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/MediaTrack;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaTrack;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzdm:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_6

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [J

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_7

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aput-wide v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->setActiveMediaTracks([J)Lcom/google/android/gms/common/api/PendingResult;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzbr()V

    return-void

    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzbr()V

    return-void
.end method

.method private final zzbr()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzon:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzon:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzon:Landroid/app/Dialog;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzok:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzom:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzol:Ljava/util/List;

    const/4 v0, 0x0

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzdm:[J

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/Session;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastSession;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzop:[J

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzop:[J

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzdm:[J

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getActiveTrackIds()[J

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzoo:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzoo:Lcom/google/android/gms/cast/MediaInfo;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzhp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_5

    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzok:Z

    return-void

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaInfo;->getMediaTracks()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzok:Z

    return-void

    :cond_6
    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zza(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzom:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zza(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzol:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzol:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzol:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/cast/MediaTrack$Builder;

    const-wide/16 v4, -0x1

    invoke-direct {v3, v4, v5, p1}, Lcom/google/android/gms/cast/MediaTrack$Builder;-><init>(JI)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v4, Lcom/google/android/gms/cast/framework/R$string;->cast_tracks_chooser_dialog_none:I

    invoke-virtual {p1, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/cast/MediaTrack$Builder;->setName(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaTrack$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/cast/MediaTrack$Builder;->setSubtype(I)Lcom/google/android/gms/cast/MediaTrack$Builder;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Lcom/google/android/gms/cast/MediaTrack$Builder;->setContentId(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaTrack$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaTrack$Builder;->build()Lcom/google/android/gms/cast/MediaTrack;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_7
    return-void

    :cond_8
    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzok:Z

    return-void

    :cond_9
    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzok:Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzol:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzdm:[J

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zza(Ljava/util/List;[JI)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzom:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzdm:[J

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zza(Ljava/util/List;[JI)I

    move-result v0

    new-instance v1, Lcom/google/android/gms/cast/framework/media/zzbb;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzol:Ljava/util/List;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/cast/framework/media/zzbb;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    new-instance p1, Lcom/google/android/gms/cast/framework/media/zzbb;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzom:Ljava/util/List;

    invoke-direct {p1, v2, v3, v0}, Lcom/google/android/gms/cast/framework/media/zzbb;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/google/android/gms/cast/framework/R$layout;->cast_tracks_chooser_dialog_layout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/google/android/gms/cast/framework/R$id;->text_list_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    sget v5, Lcom/google/android/gms/cast/framework/R$id;->audio_list_view:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    sget v6, Lcom/google/android/gms/cast/framework/R$id;->tab_host:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->setup()V

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/zzbb;->getCount()I

    move-result v7

    const/4 v8, 0x4

    if-nez v7, :cond_0

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v3, "textTab"

    invoke-virtual {v6, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    sget v7, Lcom/google/android/gms/cast/framework/R$id;->text_list_view:I

    invoke-virtual {v3, v7}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    sget v9, Lcom/google/android/gms/cast/framework/R$string;->cast_tracks_chooser_dialog_subtitles:I

    invoke-virtual {v7, v9}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v6, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/zzbb;->getCount()I

    move-result v3

    const/4 v7, 0x1

    if-gt v3, v7, :cond_1

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v3, "audioTab"

    invoke-virtual {v6, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    sget v5, Lcom/google/android/gms/cast/framework/R$id;->audio_list_view:I

    invoke-virtual {v3, v5}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v7, Lcom/google/android/gms/cast/framework/R$string;->cast_tracks_chooser_dialog_audio:I

    invoke-virtual {v5, v7}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v6, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v5, Lcom/google/android/gms/cast/framework/R$string;->cast_tracks_chooser_dialog_ok:I

    invoke-virtual {v3, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/cast/framework/media/zzba;

    invoke-direct {v5, p0, v1, p1}, Lcom/google/android/gms/cast/framework/media/zzba;-><init>(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;Lcom/google/android/gms/cast/framework/media/zzbb;Lcom/google/android/gms/cast/framework/media/zzbb;)V

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/google/android/gms/cast/framework/R$string;->cast_tracks_chooser_dialog_cancel:I

    new-instance v2, Lcom/google/android/gms/cast/framework/media/zzaz;

    invoke-direct {v2, p0}, Lcom/google/android/gms/cast/framework/media/zzaz;-><init>(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzon:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzon:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    iput-object v4, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzon:Landroid/app/Dialog;

    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzon:Landroid/app/Dialog;

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zzon:Landroid/app/Dialog;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    return-void
.end method
