.class final Lcom/google/android/gms/internal/cast/zzeq;
.super Lcom/google/android/gms/internal/cast/zzel;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzel;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzeq;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/cast/zzen;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzeq;->handler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzen;->zzdh()Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
