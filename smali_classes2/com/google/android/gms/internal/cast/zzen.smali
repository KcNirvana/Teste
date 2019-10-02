.class public abstract Lcom/google/android/gms/internal/cast/zzen;
.super Ljava/lang/Object;


# instance fields
.field private zzyj:Ljava/lang/Runnable;

.field private zzyk:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doFrame(J)V
.end method

.method final zzdg()Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzen;->zzyk:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/cast/zzeo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzeo;-><init>(Lcom/google/android/gms/internal/cast/zzen;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzen;->zzyk:Landroid/view/Choreographer$FrameCallback;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzen;->zzyk:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method final zzdh()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzen;->zzyj:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/cast/zzep;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzep;-><init>(Lcom/google/android/gms/internal/cast/zzen;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzen;->zzyj:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzen;->zzyj:Ljava/lang/Runnable;

    return-object v0
.end method
