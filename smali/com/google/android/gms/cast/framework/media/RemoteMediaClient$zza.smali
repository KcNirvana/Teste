.class final Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzdl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field private zzfy:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private zzfz:J

.field final synthetic zzns:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzns:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzfz:J

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzfy:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    iget-object p5, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzfy:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzns:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {p5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzh(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/cast/Cast$CastApi;

    move-result-object p5

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzfy:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p5, v0, p1, p2}, Lcom/google/android/gms/cast/Cast$CastApi;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/cast/framework/media/zzau;

    invoke-direct {p2, p0, p3, p4}, Lcom/google/android/gms/cast/framework/media/zzau;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;J)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No GoogleApiClient available"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzl()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzfz:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzfz:J

    return-wide v0
.end method
