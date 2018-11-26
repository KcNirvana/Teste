.class final Lcom/miui/appmanager/model/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aQS:Lcom/miui/appmanager/model/a;

.field final synthetic aQT:Lcom/miui/appmanager/AppManagerMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/model/a;Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/y;->aQS:Lcom/miui/appmanager/model/a;

    iput-object p2, p0, Lcom/miui/appmanager/model/y;->aQT:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/model/y;->aQT:Lcom/miui/appmanager/AppManagerMainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/model/y;->aQT:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-virtual {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/model/y;->aQT:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-virtual {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bng()V

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/model/y;->aQS:Lcom/miui/appmanager/model/a;

    invoke-static {v0}, Lcom/miui/appmanager/model/a;->bgO(Lcom/miui/appmanager/model/a;)I

    move-result v0

    const/16 v1, 0x271e

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/model/y;->aQS:Lcom/miui/appmanager/model/a;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/a;->getPositionId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/model/y;->aQS:Lcom/miui/appmanager/model/a;

    invoke-static {v1}, Lcom/miui/appmanager/model/a;->bgN(Lcom/miui/appmanager/model/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/j;->bmm(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
