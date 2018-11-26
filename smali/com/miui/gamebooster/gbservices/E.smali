.class final Lcom/miui/gamebooster/gbservices/E;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic qp:Lcom/miui/gamebooster/gbservices/D;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/D;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/E;->qp:Lcom/miui/gamebooster/gbservices/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/E;->qp:Lcom/miui/gamebooster/gbservices/D;

    iget-object v0, v0, Lcom/miui/gamebooster/gbservices/D;->qo:Lcom/miui/gamebooster/gbservices/k;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/gamebooster/gbservices/k;->pR:Landroid/service/notification/StatusBarNotification;

    return-void
.end method
