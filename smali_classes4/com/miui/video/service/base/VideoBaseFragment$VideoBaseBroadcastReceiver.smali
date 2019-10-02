.class Lcom/miui/video/service/base/VideoBaseFragment$VideoBaseBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/base/VideoBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoBaseBroadcastReceiver"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/service/base/VideoBaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/video/service/base/VideoBaseFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/service/base/VideoBaseFragment$VideoBaseBroadcastReceiver;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "com.miui.videoplayer.force.refresh"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/base/VideoBaseFragment$VideoBaseBroadcastReceiver;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/base/VideoBaseFragment$VideoBaseBroadcastReceiver;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/service/base/VideoBaseFragment;

    const/4 p2, 0x1

    sget-object v0, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_INIT:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    invoke-virtual {p1, p2, v0}, Lcom/miui/video/service/base/VideoBaseFragment;->refresh(ZLcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    :cond_0
    return-void
.end method
