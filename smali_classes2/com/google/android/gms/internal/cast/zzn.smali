.class public final Lcom/google/android/gms/internal/cast/zzn;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/google/android/gms/cast/framework/IntroductoryOverlay;


# instance fields
.field private color:I

.field private zzhv:Landroid/app/Activity;

.field private zzhw:Landroid/view/View;

.field private zzhy:Ljava/lang/String;

.field private zzhz:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

.field private final zziq:Z

.field private zzir:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

.field private zzis:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhv:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzae()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zziq:Z

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzac()Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhz:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzab()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhw:Landroid/view/View;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzaf()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhy:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzad()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzn;->color:I

    return-void
.end method

.method private final reset()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzn;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhv:Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhz:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhw:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzir:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhy:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzn;->color:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzis:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzis:Z

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/cast/zzn;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhv:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/cast/zzn;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhz:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/cast/zzn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzn;->reset()V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/cast/zzn;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzir:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    return-object p0
.end method

.method static zzg(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected final onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzn;->reset()V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final remove()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzis:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhv:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzn;->reset()V

    :cond_0
    return-void
.end method

.method public final show()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhv:Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhw:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzis:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhv:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzn;->zzg(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zziq:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhv:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zze(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzn;->reset()V

    return-void

    :cond_2
    new-instance v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhv:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzir:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iget v0, p0, Lcom/google/android/gms/internal/cast/zzn;->color:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzir:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzn;->color:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzg(I)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzir:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzn;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhv:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/gms/cast/framework/R$layout;->cast_help_text:I

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzn;->zzir:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhy:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzn;->zzir:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzir:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhw:Landroid/view/View;

    new-instance v3, Lcom/google/android/gms/internal/cast/zzo;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/cast/zzo;-><init>(Lcom/google/android/gms/internal/cast/zzn;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Landroid/view/View;Landroid/view/View;ZLcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/cast/zzn;->zzis:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzhv:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzn;->zzir:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method
