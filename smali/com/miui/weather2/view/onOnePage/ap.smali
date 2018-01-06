.class Lcom/miui/weather2/view/onOnePage/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/ao;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/ap;->a:Lcom/miui/weather2/view/onOnePage/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ap;->a:Lcom/miui/weather2/view/onOnePage/ao;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/ao;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method
