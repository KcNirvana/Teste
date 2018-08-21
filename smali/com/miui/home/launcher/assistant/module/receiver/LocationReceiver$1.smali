.class final Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$1$1;

    invoke-direct {v1, p0, p2}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$1$1;-><init>(Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$1;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    return-void
.end method
