.class Lcom/miui/video/player/service/presenter/AirkanPresenter$MilinkStatusListener;
.super Ljava/lang/Object;
.source "AirkanPresenter.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$OnStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/presenter/AirkanPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MilinkStatusListener"
.end annotation


# instance fields
.field public mCtrlRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/player/service/presenter/AirkanPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/video/player/service/presenter/AirkanPresenter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter$MilinkStatusListener;->mCtrlRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getController()Lcom/miui/video/player/service/presenter/AirkanPresenter;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter$MilinkStatusListener;->mCtrlRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/presenter/AirkanPresenter;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStatusChanged(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter$MilinkStatusListener;->getController()Lcom/miui/video/player/service/presenter/AirkanPresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;->getCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;->getCode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;->getCode()I

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->access$100(Lcom/miui/video/player/service/presenter/AirkanPresenter;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->access$000(Lcom/miui/video/player/service/presenter/AirkanPresenter;)V

    :cond_3
    :goto_1
    return-void
.end method
