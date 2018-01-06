.class public Lcom/miui/weather2/receiver/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Lcom/miui/weather2/tools/ax;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/weather2/tools/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/receiver/a;->a:Lcom/miui/weather2/tools/ax;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/receiver/a;->a:Lcom/miui/weather2/tools/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/receiver/a;->a:Lcom/miui/weather2/tools/ax;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/ax;->c()V

    :cond_0
    return-void
.end method
