.class Lcom/ali/user/mobile/biz/a$b;
.super Ljava/lang/Object;
.source "AliUserSdkLoginBiz.java"

# interfaces
.implements Lcom/ali/user/mobile/g/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/mobile/biz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/biz/a;

.field private b:Lcom/ali/user/mobile/accountbiz/extservice/RSAService;


# direct methods
.method public constructor <init>(Lcom/ali/user/mobile/biz/a;)V
    .locals 1

    iput-object p1, p0, Lcom/ali/user/mobile/biz/a$b;->a:Lcom/ali/user/mobile/biz/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/ali/user/mobile/biz/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getRSAService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/RSAService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/biz/a$b;->b:Lcom/ali/user/mobile/accountbiz/extservice/RSAService;

    return-void
.end method


# virtual methods
.method public a()Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;
    .locals 6

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;

    invoke-direct {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;-><init>()V

    iget-object v1, p0, Lcom/ali/user/mobile/biz/a$b;->b:Lcom/ali/user/mobile/accountbiz/extservice/RSAService;

    invoke-interface {v1}, Lcom/ali/user/mobile/accountbiz/extservice/RSAService;->getRsaKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;->rsaPK:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/mobile/biz/a$b;->b:Lcom/ali/user/mobile/accountbiz/extservice/RSAService;

    invoke-interface {v1}, Lcom/ali/user/mobile/accountbiz/extservice/RSAService;->getRsaTS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;->rsaTS:Ljava/lang/String;

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "rsaService\u8fd4\u56de\u7684\u516c\u94a5: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;->rsaPK:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
