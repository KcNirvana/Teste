.class final Lcom/miui/appmanager/H;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aWk:Lcom/miui/appmanager/ApplicationsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/H;->aWk:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/H;->aWk:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-virtual {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/H;->aWk:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkh(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/appmanager/widget/AMScrollView;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/AMScrollView;->fullScroll(I)Z

    :cond_0
    return-void
.end method
