.class Lcom/ali/user/mobile/external/LoginPreCheckActivity$7;
.super Ljava/lang/Object;
.source "LoginPreCheckActivity.java"

# interfaces
.implements Lcom/ali/user/mobile/authlogin/a/c;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$7;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissPreProgress()V
    .locals 0

    return-void
.end method

.method public openAlipaySuccess()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$7;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->access$1100(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V

    return-void
.end method

.method public preAuthFailed(I)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$7;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->access$400(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V

    return-void
.end method

.method public showPreProgress()V
    .locals 0

    return-void
.end method
