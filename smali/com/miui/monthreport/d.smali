.class Lcom/miui/monthreport/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private aYU:Z

.field private aYV:Landroid/location/Location;

.field private aYW:Lcom/miui/monthreport/e;

.field private aYX:Ljava/util/List;

.field final synthetic aYY:Lcom/miui/monthreport/b;

.field private isSuccess:Z


# direct methods
.method public constructor <init>(Lcom/miui/monthreport/b;Lcom/miui/monthreport/e;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/miui/monthreport/d;->aYY:Lcom/miui/monthreport/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/miui/monthreport/d;->aYU:Z

    iput-boolean v0, p0, Lcom/miui/monthreport/d;->isSuccess:Z

    iput-object p2, p0, Lcom/miui/monthreport/d;->aYW:Lcom/miui/monthreport/e;

    iput-object p3, p0, Lcom/miui/monthreport/d;->aYX:Ljava/util/List;

    return-void
.end method

.method static synthetic buK(Lcom/miui/monthreport/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/monthreport/d;->aYU:Z

    return v0
.end method

.method static synthetic buL(Lcom/miui/monthreport/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/monthreport/d;->isSuccess:Z

    return v0
.end method

.method static synthetic buM(Lcom/miui/monthreport/d;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/miui/monthreport/d;->aYV:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic buN(Lcom/miui/monthreport/d;)Lcom/miui/monthreport/e;
    .locals 1

    iget-object v0, p0, Lcom/miui/monthreport/d;->aYW:Lcom/miui/monthreport/e;

    return-object v0
.end method

.method static synthetic buO(Lcom/miui/monthreport/d;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/monthreport/d;->aYX:Ljava/util/List;

    return-object v0
.end method

.method static synthetic buP(Lcom/miui/monthreport/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/monthreport/d;->aYU:Z

    return p1
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/monthreport/d;->aYV:Landroid/location/Location;

    :cond_0
    iput-boolean v1, p0, Lcom/miui/monthreport/d;->isSuccess:Z

    iget-object v0, p0, Lcom/miui/monthreport/d;->aYY:Lcom/miui/monthreport/b;

    invoke-static {v0}, Lcom/miui/monthreport/b;->buG(Lcom/miui/monthreport/b;)Lcom/miui/monthreport/c;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/miui/monthreport/c;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/monthreport/d;->aYY:Lcom/miui/monthreport/b;

    invoke-static {v0}, Lcom/miui/monthreport/b;->buG(Lcom/miui/monthreport/b;)Lcom/miui/monthreport/c;

    move-result-object v0

    invoke-static {v1, p0}, Lcom/miui/monthreport/b;->buH(ILcom/miui/monthreport/d;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/monthreport/c;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
