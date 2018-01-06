.class Lcom/miui/weather2/view/onOnePage/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/aq;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/aq;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/aq;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v3}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/widget/Button;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/miui/weather2/view/onOnePage/ar;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/onOnePage/ar;-><init>(Lcom/miui/weather2/view/onOnePage/aq;)V

    const-wide/16 v4, 0x1f4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->b(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;[Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method
