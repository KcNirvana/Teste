.class Lcom/miui/weather2/tools/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/tools/c;


# direct methods
.method constructor <init>(Lcom/miui/weather2/tools/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/e;->a:Lcom/miui/weather2/tools/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/tools/e;->a:Lcom/miui/weather2/tools/c;

    iget-object v0, v0, Lcom/miui/weather2/tools/c;->e:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/e;->a:Lcom/miui/weather2/tools/c;

    invoke-static {v0}, Lcom/miui/weather2/tools/c;->b(Lcom/miui/weather2/tools/c;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/tools/e;->a:Lcom/miui/weather2/tools/c;

    invoke-static {v0}, Lcom/miui/weather2/tools/c;->b(Lcom/miui/weather2/tools/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/weather2/tools/e;->a:Lcom/miui/weather2/tools/c;

    invoke-static {v1}, Lcom/miui/weather2/tools/c;->b(Lcom/miui/weather2/tools/c;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/e;->a:Lcom/miui/weather2/tools/c;

    invoke-static {v0}, Lcom/miui/weather2/tools/c;->b(Lcom/miui/weather2/tools/c;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
