.class Lcom/miui/weather2/view/onOnePage/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/ad;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ad;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->r(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const-string v0, "VIDEO_START"

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/ad;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v1, v1, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AdvertismentData;->getEx()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/ad;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v2, v2, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AdvertismentData;->getAudioStartMonitorUrls()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/ad;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v3}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ad;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->s(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;->a(Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ad;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/ad;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->s(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->post(Ljava/lang/Runnable;)Z

    const-string v0, "ad_click"

    const-string v1, "video_start"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method
