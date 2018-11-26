.class final Lcom/miui/appmanager/P;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjS(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkk(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjQ(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkk(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bky(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z

    iget-object v0, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkf(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjQ(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lmiui/provider/ExtraNetwork;->setMobileRestrict(Landroid/content/Context;Ljava/lang/String;ZI)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkl(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjR(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkl(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkz(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z

    iget-object v0, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkf(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjR(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lmiui/provider/ExtraNetwork;->setMobileRestrict(Landroid/content/Context;Ljava/lang/String;ZI)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bko(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjU(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bko(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkC(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z

    iget-object v0, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkf(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjU(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraNetwork;->setWifiRestrict(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjY(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkP(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setSummary(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkk(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjQ(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkk(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bky(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z

    iget-object v0, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkf(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjQ(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/miui/appmanager/P;->aWt:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjz(Lcom/miui/appmanager/ApplicationsDetailsActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lmiui/provider/ExtraNetwork;->setMobileRestrict(Landroid/content/Context;Ljava/lang/String;ZI)Z

    goto :goto_0
.end method
