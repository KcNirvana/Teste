.class Lcom/miui/weather2/view/onOnePage/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/bd;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bd;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getLandingPageH5Url()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bd;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "AD"

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/bd;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v3}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->m(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)I

    move-result v3

    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/bd;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v4}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->n(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Z

    move-result v4

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/bd;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v5}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->o(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZI)V

    return-void
.end method
