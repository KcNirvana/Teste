.class public final Lcom/google/android/gms/internal/cast/zzej;
.super Lcom/google/android/gms/internal/cast/zzei;


# instance fields
.field protected final animator:Landroid/animation/Animator;

.field private final zzyd:Ljava/lang/Runnable;

.field private final zzye:I

.field private zzyf:I

.field private zzyg:Lcom/google/android/gms/internal/cast/zzen;


# direct methods
.method private constructor <init>(Landroid/animation/Animator;ILjava/lang/Runnable;)V
    .locals 0
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzei;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/cast/zzek;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/cast/zzek;-><init>(Lcom/google/android/gms/internal/cast/zzej;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzej;->zzyg:Lcom/google/android/gms/internal/cast/zzen;

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzej;->animator:Landroid/animation/Animator;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzej;->zzye:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzej;->zzyd:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzej;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/cast/zzej;->zzyf:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/cast/zzej;->zzyf:I

    return v0
.end method

.method public static zza(Landroid/animation/Animator;ILjava/lang/Runnable;)V
    .locals 1
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Lcom/google/android/gms/internal/cast/zzej;

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzej;-><init>(Landroid/animation/Animator;ILjava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/cast/zzej;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzej;->zzde()Z

    move-result p0

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/cast/zzej;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzej;->zzyd:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final zzde()Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/cast/zzej;->zzye:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzej;->zzyf:I

    iget v2, p0, Lcom/google/android/gms/internal/cast/zzej;->zzye:I

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzei;->zzb(Landroid/animation/Animator;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzel;->zzdf()Lcom/google/android/gms/internal/cast/zzel;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzej;->zzyg:Lcom/google/android/gms/internal/cast/zzen;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzel;->zza(Lcom/google/android/gms/internal/cast/zzen;)V

    :cond_0
    return-void
.end method
