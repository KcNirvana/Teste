.class Lcom/miui/weather2/view/onOnePage/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/a;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/b;->a:Lcom/miui/weather2/view/onOnePage/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/b;->a:Lcom/miui/weather2/view/onOnePage/a;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/a;->a:Lcom/miui/weather2/structures/AdvertismentData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/b;->a:Lcom/miui/weather2/view/onOnePage/a;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/a;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getViewMonitorUrls()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIEW"

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/b;->a:Lcom/miui/weather2/view/onOnePage/a;

    iget-object v2, v2, Lcom/miui/weather2/view/onOnePage/a;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AdvertismentData;->getEx()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/b;->a:Lcom/miui/weather2/view/onOnePage/a;

    invoke-virtual {v3}, Lcom/miui/weather2/view/onOnePage/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
