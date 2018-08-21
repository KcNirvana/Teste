.class Lcom/ali/user/mobile/external/AuthLoginResultActivity$1;
.super Ljava/lang/Object;
.source "AuthLoginResultActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/external/AuthLoginResultActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/external/AuthLoginResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/external/AuthLoginResultActivity$1;->this$0:Lcom/ali/user/mobile/external/AuthLoginResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/external/AuthLoginResultActivity$1;->this$0:Lcom/ali/user/mobile/external/AuthLoginResultActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->dismissProgress()V

    iget-object v0, p0, Lcom/ali/user/mobile/external/AuthLoginResultActivity$1;->this$0:Lcom/ali/user/mobile/external/AuthLoginResultActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->finish()V

    iget-object v0, p0, Lcom/ali/user/mobile/external/AuthLoginResultActivity$1;->this$0:Lcom/ali/user/mobile/external/AuthLoginResultActivity;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AuthLoginResultActivity"

    const-string/jumbo v2, "AuthLoginResultActivity finish error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
