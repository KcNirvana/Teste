.class final Lcom/miui/gamebooster/service/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field final synthetic mZ:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/x;->mZ:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    const-string/jumbo v0, "GameBoxWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/x;->mZ:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oE(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/service/x;->mZ:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oE(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/x;->mZ:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oF(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/x;->mZ:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oH(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
