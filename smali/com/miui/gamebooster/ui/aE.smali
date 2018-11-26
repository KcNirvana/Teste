.class final Lcom/miui/gamebooster/ui/aE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic ei:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/aE;->ei:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/aE;->ei:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dD(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/gamebooster/ui/aE;->ei:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    if-lez p1, :cond_1

    add-int/lit8 v0, p1, 0x1

    :goto_0
    invoke-static {v1, v0, v2}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dW(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;IZ)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/aE;->ei:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-static {v0, p1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dV(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;I)V

    :goto_1
    return-void

    :cond_1
    move v0, p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/aE;->ei:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v0, p1, v2}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dW(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;IZ)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/aE;->ei:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v0, p1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dV(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;I)V

    goto :goto_1
.end method
