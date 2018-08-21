.class Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$1;
.super Ljava/lang/Object;
.source "SecurityInitServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$1;->this$0:Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v1, ">>>>>>>>>>>> startPipelineForLoginFail"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
