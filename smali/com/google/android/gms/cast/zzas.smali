.class final Lcom/google/android/gms/cast/zzas;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;


# instance fields
.field private final synthetic zzfa:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field private final synthetic zzfb:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final synthetic zzfe:[Lcom/google/android/gms/cast/MediaQueueItem;

.field private final synthetic zzff:I

.field private final synthetic zzfg:I

.field private final synthetic zzfh:J

.field private final synthetic zzfi:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/zzas;->zzfa:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iput-object p3, p0, Lcom/google/android/gms/cast/zzas;->zzfb:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p4, p0, Lcom/google/android/gms/cast/zzas;->zzfe:[Lcom/google/android/gms/cast/MediaQueueItem;

    iput p5, p0, Lcom/google/android/gms/cast/zzas;->zzff:I

    iput p6, p0, Lcom/google/android/gms/cast/zzas;->zzfg:I

    iput-wide p7, p0, Lcom/google/android/gms/cast/zzas;->zzfh:J

    iput-object p9, p0, Lcom/google/android/gms/cast/zzas;->zzfi:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/cast/zzcn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;->zza(Lcom/google/android/gms/internal/cast/zzcn;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/cast/zzcn;)V
    .locals 10

    iget-object p1, p0, Lcom/google/android/gms/cast/zzas;->zzfa:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zze(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/zzas;->zzfa:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/zzas;->zzfb:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/cast/zzas;->zzfa:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzg(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/cast/zzdh;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/cast/zzas;->zzgc:Lcom/google/android/gms/internal/cast/zzdm;

    iget-object v4, p0, Lcom/google/android/gms/cast/zzas;->zzfe:[Lcom/google/android/gms/cast/MediaQueueItem;

    iget v5, p0, Lcom/google/android/gms/cast/zzas;->zzff:I

    iget v6, p0, Lcom/google/android/gms/cast/zzas;->zzfg:I

    iget-wide v7, p0, Lcom/google/android/gms/cast/zzas;->zzfh:J

    iget-object v9, p0, Lcom/google/android/gms/cast/zzas;->zzfi:Lorg/json/JSONObject;

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Lcom/google/android/gms/internal/cast/zzdm;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/cast/zzas;->zzfa:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    :try_start_3
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x834

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/zzas;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/cast/zzas;->zzfa:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    move-result-object v1

    goto :goto_0

    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/cast/zzas;->zzfa:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
