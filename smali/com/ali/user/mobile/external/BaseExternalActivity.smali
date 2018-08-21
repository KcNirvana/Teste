.class public Lcom/ali/user/mobile/external/BaseExternalActivity;
.super Lcom/ali/user/mobile/login/ui/BaseLoginActivity;
.source "BaseExternalActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected clearAccount()V
    .locals 0

    return-void
.end method

.method protected clearPassword()V
    .locals 0

    return-void
.end method

.method protected getLoginAccount()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected getLoginPassword()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected getShownAccount()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected onNewAccount(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method protected setAppId()V
    .locals 0

    return-void
.end method
