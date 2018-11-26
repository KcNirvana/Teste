.class final Lcom/miui/appmanager/D;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source ""


# instance fields
.field final synthetic aWg:Lcom/miui/appmanager/ApplicationsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/D;->aWg:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/D;->aWg:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjX(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/appmanager/d;

    move-result-object v0

    new-instance v1, Lcom/miui/appmanager/E;

    invoke-direct {v1, p0, p1}, Lcom/miui/appmanager/E;-><init>(Lcom/miui/appmanager/D;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/d;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
