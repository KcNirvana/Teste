.class Lcom/miui/weather2/view/onOnePage/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/ao;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ao;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/ao;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v3}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/widget/Button;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/miui/weather2/view/onOnePage/ap;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/onOnePage/ap;-><init>(Lcom/miui/weather2/view/onOnePage/ao;)V

    const-wide/16 v4, 0x1f4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;[Landroid/view/View;Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ao;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->u(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    return-void
.end method
