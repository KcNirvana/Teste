.class Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl$1;
.super Ljava/lang/Object;
.source "AuthLoginResultActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl;

.field final synthetic val$failedCode:I


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl$1;->this$1:Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl;

    iput p2, p0, Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl$1;->val$failedCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl$1;->this$1:Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl;

    iget-object v0, v0, Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl;->this$0:Lcom/ali/user/mobile/external/AuthLoginResultActivity;

    iget v1, p0, Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl$1;->val$failedCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->onProcessAuthResultError(Ljava/lang/String;)V

    return-void
.end method
