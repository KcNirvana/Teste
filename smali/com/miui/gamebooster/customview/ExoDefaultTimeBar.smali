.class public Lcom/miui/gamebooster/customview/ExoDefaultTimeBar;
.super Lcom/google/android/exoplayer2/ui/DefaultTimeBar;
.source ""


# instance fields
.field private ho:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/customview/ExoDefaultTimeBar;->ho:Z

    new-instance v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setScrubberColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/customview/ExoDefaultTimeBar;->ho:Z

    new-instance v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setScrubberColor(I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
