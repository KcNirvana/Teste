.class final Lcom/alipay/security/mobile/api/AuthenticatorApiAgent$2;
.super Ljava/lang/Object;
.source "AuthenticatorApiAgent.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent$2;->val$userID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent$2;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent$2;->val$userID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getPayAuthData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
