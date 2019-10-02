.class Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;
.super Landroid/os/AsyncTask;
.source "BackgroundCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/BackgroundCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundCaptureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mCalculatedHighlightColor:I

.field private final mListener:Lcom/mixpanel/android/mpmetrics/BackgroundCapture$OnBackgroundCapturedListener;

.field private final mParentActivity:Landroid/app/Activity;

.field private mSourceImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/BackgroundCapture$OnBackgroundCapturedListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;->mParentActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;->mListener:Lcom/mixpanel/android/mpmetrics/BackgroundCapture$OnBackgroundCapturedListener;

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;->mCalculatedHighlightColor:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;->mSourceImage:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;->mSourceImage:Landroid/graphics/Bitmap;

    const/16 v1, 0x14

    invoke-static {p1, v1}, Lcom/mixpanel/android/util/StackBlurManager;->process(Landroid/graphics/Bitmap;I)V

    new-instance p1, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;->mSourceImage:Landroid/graphics/Bitmap;

    invoke-direct {p1, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/mixpanel/android/mpmetrics/BackgroundCapture;->access$000()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;->mSourceImage:Landroid/graphics/Bitmap;

    goto :goto_0

    :catch_1
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;->mSourceImage:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;->mListener:Lcom/mixpanel/android/mpmetrics/BackgroundCapture$OnBackgroundCapturedListener;

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;->mSourceImage:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;->mCalculatedHighlightColor:I

    invoke-interface {p1, v0, v1}, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$OnBackgroundCapturedListener;->onBackgroundCaptured(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;->mParentActivity:Landroid/app/Activity;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v1, v2}, Lcom/mixpanel/android/util/ActivityImageUtils;->getScaledScreenshot(Landroid/app/Activity;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;->mSourceImage:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;->mSourceImage:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/mixpanel/android/util/ActivityImageUtils;->getHighlightColorFromBitmap(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask;->mCalculatedHighlightColor:I

    return-void
.end method
