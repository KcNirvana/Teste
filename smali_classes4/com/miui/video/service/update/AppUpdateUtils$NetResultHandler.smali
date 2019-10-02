.class Lcom/miui/video/service/update/AppUpdateUtils$NetResultHandler;
.super Landroid/os/Handler;
.source "AppUpdateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/update/AppUpdateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetResultHandler"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/service/update/AppUpdateUtils;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/miui/video/service/update/AppUpdateUtils;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p1, p0, Lcom/miui/video/service/update/AppUpdateUtils$NetResultHandler;->mRef:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/video/service/update/AppUpdateUtils$NetResultHandler;->mRef:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/miui/video/service/update/AppUpdateUtils;Lcom/miui/video/service/update/AppUpdateUtils$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/service/update/AppUpdateUtils$NetResultHandler;-><init>(Landroid/os/Looper;Lcom/miui/video/service/update/AppUpdateUtils;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils$NetResultHandler;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils$NetResultHandler;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils$NetResultHandler;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/service/update/AppUpdateUtils;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/video/service/update/entity/UpdateResultEntity;

    invoke-static {v0, p1}, Lcom/miui/video/service/update/AppUpdateUtils;->access$300(Lcom/miui/video/service/update/AppUpdateUtils;Lcom/miui/video/service/update/entity/UpdateResultEntity;)V

    :cond_1
    :goto_0
    return-void
.end method
