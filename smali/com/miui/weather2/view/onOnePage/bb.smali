.class Lcom/miui/weather2/view/onOnePage/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/ba;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/bb;->a:Lcom/miui/weather2/view/onOnePage/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bb;->a:Lcom/miui/weather2/view/onOnePage/ba;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/ba;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->b()V

    return-void
.end method
