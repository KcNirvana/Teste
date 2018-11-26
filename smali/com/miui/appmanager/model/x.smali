.class final Lcom/miui/appmanager/model/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aQQ:Lcom/miui/appmanager/model/a;

.field final synthetic aQR:Lcom/miui/appmanager/AppManagerMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/model/a;Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/x;->aQQ:Lcom/miui/appmanager/model/a;

    iput-object p2, p0, Lcom/miui/appmanager/model/x;->aQR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/x;->aQR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-virtual {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bng()V

    return-void
.end method
