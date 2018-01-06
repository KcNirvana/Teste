.class Lcom/miui/weather2/view/onOnePage/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/e;->a:Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/e;->a:Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->a(Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;)Lcom/miui/weather2/tools/ax;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "normal_click"

    const-string v1, "speeker"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "settings_click"

    const-string v1, "Settings_speaker"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/e;->a:Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->a(Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;)Lcom/miui/weather2/tools/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/tools/ax;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/e;->a:Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->a(Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;)Lcom/miui/weather2/tools/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/tools/ax;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/e;->a:Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->a(Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;)Lcom/miui/weather2/tools/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/e;->a:Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->b(Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/e;->a:Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->c(Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/tools/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
