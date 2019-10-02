.class Lcom/mixpanel/android/mpmetrics/BackgroundCapture;
.super Ljava/lang/Object;
.source "BackgroundCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;,
        Lcom/mixpanel/android/mpmetrics/BackgroundCapture$OnBackgroundCapturedListener;
    }
.end annotation


# static fields
.field private static final GRAY_72PERCENT_OPAQUE:I

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.BackgroundCapture"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x1c

    const/16 v1, 0xba

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture;->GRAY_72PERCENT_OPAQUE:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture;->GRAY_72PERCENT_OPAQUE:I

    return v0
.end method

.method public static captureBackground(Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/BackgroundCapture$OnBackgroundCapturedListener;)V
    .locals 1

    new-instance v0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$1;

    invoke-direct {v0, p0, p1}, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$1;-><init>(Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/BackgroundCapture$OnBackgroundCapturedListener;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
