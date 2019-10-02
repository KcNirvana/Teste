.class public Lcom/miui/video/player/service/utils/media/MediaEventReceiver;
.super Ljava/lang/Object;
.source "MediaEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/utils/media/MediaEventReceiver$LocalMediaStateReceiver;,
        Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaButtonReceiver"

.field private static sLocalMediaStateReceiverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/utils/media/MediaEventReceiver$LocalMediaStateReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static sMediaSessionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/utils/media/MiMediaSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/miui/video/player/service/utils/media/MediaEventReceiver;->sMediaSessionList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/miui/video/player/service/utils/media/MediaEventReceiver;->sLocalMediaStateReceiverList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/miui/video/player/service/utils/media/MediaEventReceiver;->sMediaSessionList:Ljava/util/List;

    return-object v0
.end method

.method public static isMediaEventValid(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v2, 0x7e

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    if-ne p0, v2, :cond_2

    return v3

    :cond_2
    return v0
.end method

.method public static register(Landroid/content/Context;Lcom/miui/video/player/service/utils/media/MiMediaSession;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/video/player/service/utils/media/MediaEventReceiver$LocalMediaStateReceiver;

    invoke-direct {v0, p1}, Lcom/miui/video/player/service/utils/media/MediaEventReceiver$LocalMediaStateReceiver;-><init>(Lcom/miui/video/player/service/utils/media/MiMediaSession;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object p0, Lcom/miui/video/player/service/utils/media/MediaEventReceiver;->sLocalMediaStateReceiverList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/miui/video/player/service/utils/media/MediaEventReceiver;->sMediaSessionList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "MediaButtonReceiver"

    const-string p1, "register: "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static unRegister(Landroid/content/Context;Lcom/miui/video/player/service/utils/media/MiMediaSession;)V
    .locals 3

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/miui/video/player/service/utils/media/MediaEventReceiver;->sLocalMediaStateReceiverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/player/service/utils/media/MediaEventReceiver$LocalMediaStateReceiver;

    invoke-static {v1}, Lcom/miui/video/player/service/utils/media/MediaEventReceiver$LocalMediaStateReceiver;->access$000(Lcom/miui/video/player/service/utils/media/MediaEventReceiver$LocalMediaStateReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/miui/video/player/service/utils/media/MediaEventReceiver$LocalMediaStateReceiver;->access$000(Lcom/miui/video/player/service/utils/media/MediaEventReceiver$LocalMediaStateReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/miui/video/player/service/utils/media/MediaEventReceiver$LocalMediaStateReceiver;->access$000(Lcom/miui/video/player/service/utils/media/MediaEventReceiver$LocalMediaStateReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    sget-object v1, Lcom/miui/video/player/service/utils/media/MediaEventReceiver;->sMediaSessionList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/video/player/service/utils/media/MiMediaSession;->setCallBack(Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/video/player/service/utils/media/MiMediaSession;->setActive(Z)V

    invoke-virtual {p1}, Lcom/miui/video/player/service/utils/media/MiMediaSession;->release()V

    goto :goto_0

    :cond_2
    const-string p0, "MediaButtonReceiver"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unRegister"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/video/player/service/utils/media/MediaEventReceiver;->sMediaSessionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  :  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/video/player/service/utils/media/MediaEventReceiver;->sLocalMediaStateReceiverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    return-void
.end method
