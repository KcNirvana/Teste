.class Lcom/miui/weather2/view/onOnePage/am;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/al;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/al;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/am;->a:Lcom/miui/weather2/view/onOnePage/al;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/am;->a:Lcom/miui/weather2/view/onOnePage/al;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/al;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    new-instance v1, Lcom/miui/weather2/view/onOnePage/an;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/an;-><init>(Lcom/miui/weather2/view/onOnePage/am;)V

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "tag_id"

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/am;->a:Lcom/miui/weather2/view/onOnePage/al;

    iget-object v2, v2, Lcom/miui/weather2/view/onOnePage/al;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v2, v2, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AdvertismentData;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "category_advertisement"

    const-string v2, "ad_close_clicked"

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
