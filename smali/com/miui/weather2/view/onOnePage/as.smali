.class Lcom/miui/weather2/view/onOnePage/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/as;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/as;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/as;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->b(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/as;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->c(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/as;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->d(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    goto :goto_0
.end method
