.class final Lcom/google/android/gms/internal/cast/zzer;
.super Lcom/google/android/gms/internal/cast/zzel;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private zzym:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzel;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzer;->zzym:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/cast/zzen;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzer;->zzym:Landroid/view/Choreographer;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzen;->zzdg()Landroid/view/Choreographer$FrameCallback;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
