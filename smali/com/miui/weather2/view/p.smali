.class Lcom/miui/weather2/view/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/RefreshableView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/RefreshableView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/p;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/p;->a:Lcom/miui/weather2/view/RefreshableView;

    iget-object v1, p0, Lcom/miui/weather2/view/p;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v1}, Lcom/miui/weather2/view/RefreshableView;->a(Lcom/miui/weather2/view/RefreshableView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/weather2/view/RefreshableView;->a(Lcom/miui/weather2/view/RefreshableView;I)I

    iget-object v0, p0, Lcom/miui/weather2/view/p;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0}, Lcom/miui/weather2/view/RefreshableView;->a(Lcom/miui/weather2/view/RefreshableView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/p;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v1}, Lcom/miui/weather2/view/RefreshableView;->b(Lcom/miui/weather2/view/RefreshableView;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/p;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0}, Lcom/miui/weather2/view/RefreshableView;->a(Lcom/miui/weather2/view/RefreshableView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
