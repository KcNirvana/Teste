.class public Lcom/miui/networkassistant/monitor/impl/ImsiMonitor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/monitor/IMonitor;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsiMonitor"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v0, "ImsiMonitor"

    const-string/jumbo v1, "invoked:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public register()V
    .locals 1

    const-string/jumbo v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-static {v0, p0}, Lcom/miui/networkassistant/monitor/GolbalReceiver;->addMonitor(Ljava/lang/String;Lcom/miui/networkassistant/monitor/IMonitor;)V

    return-void
.end method
