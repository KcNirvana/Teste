.class Lcom/miui/weather2/view/onOnePage/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/al;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/al;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/al;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/miui/weather2/view/onOnePage/am;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/am;-><init>(Lcom/miui/weather2/view/onOnePage/al;)V

    const-string v2, "weather2_background"

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/al;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v3, v3, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/AdvertismentData;->getTagId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/al;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v4, v4, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v4}, Lcom/miui/weather2/structures/AdvertismentData;->getEx()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/weather2/a/a;->a(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/al;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    :cond_0
    return-void
.end method
