.class public Lcom/miui/video/service/utils/VideoDurationHelper;
.super Ljava/lang/Object;
.source "VideoDurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/service/utils/VideoDurationHelper$LoadDurationListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadLoaclVideoDurationUseCodec(Ljava/lang/String;Lcom/miui/video/service/utils/VideoDurationHelper$LoadDurationListener;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lcom/miui/video/service/utils/VideoDurationHelper$1;

    invoke-direct {p1, p0, v0}, Lcom/miui/video/service/utils/VideoDurationHelper$1;-><init>(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    invoke-static {p1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
