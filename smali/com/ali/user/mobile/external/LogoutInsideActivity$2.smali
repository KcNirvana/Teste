.class Lcom/ali/user/mobile/external/LogoutInsideActivity$2;
.super Ljava/lang/Object;
.source "LogoutInsideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/external/LogoutInsideActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/external/LogoutInsideActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/external/LogoutInsideActivity$2;->this$0:Lcom/ali/user/mobile/external/LogoutInsideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/external/LogoutInsideActivity$2;->this$0:Lcom/ali/user/mobile/external/LogoutInsideActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/external/LogoutInsideActivity;->finish()V

    return-void
.end method
