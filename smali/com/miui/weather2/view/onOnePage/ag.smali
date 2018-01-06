.class Lcom/miui/weather2/view/onOnePage/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/ae;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/ag;->a:Lcom/miui/weather2/view/onOnePage/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ag;->a:Lcom/miui/weather2/view/onOnePage/ae;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/ae;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->e(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/widget/VideoView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    return-void
.end method
