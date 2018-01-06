.class Lcom/miui/weather2/view/onOnePage/bg;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/bg;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bg;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bg;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->b(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bg;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/bg;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->c(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
