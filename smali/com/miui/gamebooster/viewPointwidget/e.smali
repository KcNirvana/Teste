.class Lcom/miui/gamebooster/viewPointwidget/e;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic gA:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/viewPointwidget/e;->gA:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/e;->gA:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    iget-object v0, v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->gk:Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->ki()V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/e;->gA:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-virtual {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jp()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/e;->gA:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-virtual {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->jh()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
