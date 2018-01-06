.class Lcom/miui/weather2/view/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/RefreshableView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/RefreshableView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/u;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/u;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0}, Lcom/miui/weather2/view/RefreshableView;->w(Lcom/miui/weather2/view/RefreshableView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/u;->a:Lcom/miui/weather2/view/RefreshableView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/weather2/view/RefreshableView;->e(Lcom/miui/weather2/view/RefreshableView;Z)Z

    iget-object v0, p0, Lcom/miui/weather2/view/u;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0}, Lcom/miui/weather2/view/RefreshableView;->x(Lcom/miui/weather2/view/RefreshableView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/u;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0}, Lcom/miui/weather2/view/RefreshableView;->y(Lcom/miui/weather2/view/RefreshableView;)V

    goto :goto_0
.end method
