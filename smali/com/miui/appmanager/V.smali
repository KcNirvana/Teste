.class final Lcom/miui/appmanager/V;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic aWA:Lcom/miui/appmanager/ApplicationsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/V;->aWA:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/V;->aWA:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/V;->aWA:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bka(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/h;->blP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/appmanager/V;->aWA:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjE(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/appmanager/widget/AppDetailCheckBoxView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->biz(Z)V

    return-void
.end method
