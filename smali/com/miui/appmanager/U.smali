.class final Lcom/miui/appmanager/U;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aWy:Lcom/miui/appmanager/ApplicationsDetailsActivity;

.field final synthetic aWz:Z


# direct methods
.method constructor <init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/U;->aWy:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iput-boolean p2, p0, Lcom/miui/appmanager/U;->aWz:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/U;->aWy:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/U;->aWy:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bka(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/appmanager/U;->aWz:Z

    invoke-static {v0, v1, v2}, Lcom/miui/appmanager/h;->blQ(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
