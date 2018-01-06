.class Lcom/miui/weather2/view/onOnePage/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/bl;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bl;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->u(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bl;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/bl;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->c(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
