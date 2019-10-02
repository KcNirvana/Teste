.class final Lcom/google/android/gms/internal/cast/zzet;
.super Ljava/lang/Object;


# static fields
.field private static final zzyn:Landroid/view/animation/Interpolator;

.field private static final zzyo:Landroid/view/animation/Interpolator;

.field private static final zzyp:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/cast/zzet;->zzyn:Landroid/view/animation/Interpolator;

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v3, v2, v1, v1}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/cast/zzet;->zzyo:Landroid/view/animation/Interpolator;

    invoke-static {v3, v2, v0, v1}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cast/zzet;->zzyp:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic zzdl()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzet;->zzyn:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic zzdm()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzet;->zzyo:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic zzdn()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzet;->zzyp:Landroid/view/animation/Interpolator;

    return-object v0
.end method
