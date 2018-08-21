.class Lcom/ali/user/mobile/login/ui/BaseLoginActivity$a;
.super Landroid/os/Handler;
.source "BaseLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/mobile/login/ui/BaseLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;


# direct methods
.method public constructor <init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$a;->a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "UnifyLoginHandler receive msg: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$a;->a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onLoginPreFinish(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
