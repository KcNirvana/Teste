.class public final Lcom/google/android/gms/internal/cast/zzv;
.super Landroid/support/v7/media/MediaRouter$Callback;


# static fields
.field private static final zzbd:Lcom/google/android/gms/internal/cast/zzdg;


# instance fields
.field private final zzjb:Lcom/google/android/gms/internal/cast/zzl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/cast/zzdg;

    const-string v1, "MediaRouterCallback"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzv;->zzbd:Lcom/google/android/gms/internal/cast/zzdg;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzl;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzl;

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzv;->zzjb:Lcom/google/android/gms/internal/cast/zzl;

    return-void
.end method


# virtual methods
.method public final onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzv;->zzjb:Lcom/google/android/gms/internal/cast/zzl;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzl;->zza(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/gms/internal/cast/zzv;->zzbd:Lcom/google/android/gms/internal/cast/zzdg;

    const-string v0, "Unable to call %s on %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onRouteAdded"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/gms/internal/cast/zzl;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdg;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzv;->zzjb:Lcom/google/android/gms/internal/cast/zzl;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzl;->zzb(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/gms/internal/cast/zzv;->zzbd:Lcom/google/android/gms/internal/cast/zzdg;

    const-string v0, "Unable to call %s on %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onRouteChanged"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/gms/internal/cast/zzl;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdg;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzv;->zzjb:Lcom/google/android/gms/internal/cast/zzl;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzl;->zzc(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/gms/internal/cast/zzv;->zzbd:Lcom/google/android/gms/internal/cast/zzdg;

    const-string v0, "Unable to call %s on %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onRouteRemoved"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/gms/internal/cast/zzl;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdg;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzv;->zzjb:Lcom/google/android/gms/internal/cast/zzl;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzl;->zzd(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/gms/internal/cast/zzv;->zzbd:Lcom/google/android/gms/internal/cast/zzdg;

    const-string v0, "Unable to call %s on %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onRouteSelected"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/gms/internal/cast/zzl;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdg;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzv;->zzjb:Lcom/google/android/gms/internal/cast/zzl;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, v0, p2, p3}, Lcom/google/android/gms/internal/cast/zzl;->zza(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/gms/internal/cast/zzv;->zzbd:Lcom/google/android/gms/internal/cast/zzdg;

    const-string p3, "Unable to call %s on %s."

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onRouteUnselected"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/google/android/gms/internal/cast/zzl;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, p1, p3, v0}, Lcom/google/android/gms/internal/cast/zzdg;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
