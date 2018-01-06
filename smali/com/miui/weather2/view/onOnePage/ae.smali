.class Lcom/miui/weather2/view/onOnePage/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/ae;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "VIDEO_FINISH"

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/ae;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v1, v1, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AdvertismentData;->getEx()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/ae;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v2, v2, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AdvertismentData;->getAudioFinishMonitorUrls()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/ae;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v3}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "ad_click"

    const-string v1, "video_finish"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ae;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/ae;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/widget/Button;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/ae;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v2, v2, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    aput-object v2, v1, v5

    new-instance v2, Lcom/miui/weather2/view/onOnePage/af;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/onOnePage/af;-><init>(Lcom/miui/weather2/view/onOnePage/ae;)V

    invoke-static {v0, v1, v2, v6, v7}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;[Landroid/view/View;Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ae;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/ae;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->e(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/widget/VideoView;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Lcom/miui/weather2/view/onOnePage/ag;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/onOnePage/ag;-><init>(Lcom/miui/weather2/view/onOnePage/ae;)V

    invoke-static {v0, v1, v2, v6, v7}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->b(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;[Landroid/view/View;Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ae;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v0, v4}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->b(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;Z)Z

    return-void
.end method
