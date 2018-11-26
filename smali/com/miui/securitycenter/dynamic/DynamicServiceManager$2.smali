.class final Lcom/miui/securitycenter/dynamic/DynamicServiceManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securitycenter/dynamic/ServiceConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/securitycenter/dynamic/app/AppActivityManager;

    invoke-virtual {p1}, Lcom/miui/securitycenter/dynamic/app/AppActivityManager;->init()V

    return-void
.end method

.method public onServiceConnectionFail(I)V
    .locals 2

    const-string/jumbo v0, "DynamicServiceManager"

    const-string/jumbo v1, "onServiceConnectionFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
