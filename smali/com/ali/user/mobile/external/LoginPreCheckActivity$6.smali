.class Lcom/ali/user/mobile/external/LoginPreCheckActivity$6;
.super Ljava/lang/Object;
.source "LoginPreCheckActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$6;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$6;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->dismissProgress()V

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$6;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LoginPreCheckActivity finish error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
