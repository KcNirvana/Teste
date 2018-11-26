.class final Lcom/miui/appmanager/ay;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic aXi:Lcom/miui/appmanager/AppManagerMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/ay;->aXi:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/miui/appmanager/r;
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/ay;->aXi:Lcom/miui/appmanager/AppManagerMainActivity;

    iget-object v1, p0, Lcom/miui/appmanager/ay;->aXi:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-virtual {v1}, Lcom/miui/appmanager/AppManagerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->boM(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/content/Context;)Lcom/miui/appmanager/r;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/appmanager/ay;->loadInBackground()Lcom/miui/appmanager/r;

    move-result-object v0

    return-object v0
.end method
