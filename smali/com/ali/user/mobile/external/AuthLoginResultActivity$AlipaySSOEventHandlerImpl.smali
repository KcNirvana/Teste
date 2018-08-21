.class Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl;
.super Ljava/lang/Object;
.source "AuthLoginResultActivity.java"

# interfaces
.implements Lcom/ali/user/mobile/authlogin/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/mobile/external/AuthLoginResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlipaySSOEventHandlerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/external/AuthLoginResultActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/external/AuthLoginResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl;->this$0:Lcom/ali/user/mobile/external/AuthLoginResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissProgress()V
    .locals 0

    return-void
.end method

.method public onAuthFailed(I)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl;->this$0:Lcom/ali/user/mobile/external/AuthLoginResultActivity;

    new-instance v1, Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl$1;-><init>(Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl;I)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showProgress()V
    .locals 0

    return-void
.end method

.method public startLogin(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl;->this$0:Lcom/ali/user/mobile/external/AuthLoginResultActivity;

    invoke-static {v0, p1}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->access$000(Lcom/ali/user/mobile/external/AuthLoginResultActivity;Ljava/lang/String;)V

    return-void
.end method
