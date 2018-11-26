.class final Lcom/miui/gamebooster/d/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic sK:Lcom/miui/gamebooster/d/a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/d/d;->sK:Lcom/miui/gamebooster/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/d/d;->sK:Lcom/miui/gamebooster/d/a;

    invoke-static {v0}, Lcom/miui/gamebooster/d/a;->uC(Lcom/miui/gamebooster/d/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    iget-object v0, p0, Lcom/miui/gamebooster/d/d;->sK:Lcom/miui/gamebooster/d/a;

    invoke-static {v0}, Lcom/miui/gamebooster/d/a;->uE(Lcom/miui/gamebooster/d/a;)Lcom/miui/gamebooster/customview/FirstWindowItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/FirstWindowItem;->getButton()Lmiui/widget/SlidingButton;

    move-result-object v0

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    const-string/jumbo v0, "float"

    :goto_0
    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->uq(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "close"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/d/d;->sK:Lcom/miui/gamebooster/d/a;

    invoke-static {v0}, Lcom/miui/gamebooster/d/a;->uF(Lcom/miui/gamebooster/d/a;)Lcom/miui/gamebooster/customview/FirstWindowItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/FirstWindowItem;->getButton()Lmiui/widget/SlidingButton;

    move-result-object v0

    if-ne p1, v0, :cond_3

    invoke-static {p2}, Lcom/miui/gamebooster/c/b;->ur(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/d/d;->sK:Lcom/miui/gamebooster/d/a;

    invoke-static {v0}, Lcom/miui/gamebooster/d/a;->uD(Lcom/miui/gamebooster/d/a;)Lcom/miui/gamebooster/customview/FirstWindowItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/FirstWindowItem;->getButton()Lmiui/widget/SlidingButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/a/a;->eQ()Z

    move-result v0

    if-eqz v0, :cond_4

    xor-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tY(Z)V

    goto :goto_1

    :cond_4
    xor-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tZ(Z)V

    goto :goto_1
.end method
