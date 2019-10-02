.class final Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$signInWithVStep2code$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PassportCore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;->signInWithVStep2code(Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $credential:Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$signInWithVStep2code$1;->this$0:Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$signInWithVStep2code$1;->$credential:Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 6

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$signInWithVStep2code$1;->$credential:Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;->getTrustCurrentEnv()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->setTrust(Z)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$signInWithVStep2code$1;->$credential:Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;->getMetaLoginData()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->setMetaLoginData(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$signInWithVStep2code$1;->$credential:Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;->getStep1Token()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->setStep1Token(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$signInWithVStep2code$1;->$credential:Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->setServiceId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$signInWithVStep2code$1;->$credential:Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->setUserId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$signInWithVStep2code$1;->$credential:Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;->getStep2code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->setStep2code(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->build()Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/passport/utils/AccountHelper;->loginByStep2(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->getCaptchaUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$signInWithVStep2code$1;->this$0:Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;

    const-string v2, "url"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;->access$getCaptchaImageNullSafe(Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/passport/ui/internal/CaptchaException;

    new-instance v3, Lcom/xiaomi/passport/ui/internal/Captcha;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v5, "captcha.second"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v4, v1, v0}, Lcom/xiaomi/passport/ui/internal/Captcha;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/xiaomi/passport/ui/internal/CaptchaException;-><init>(Lcom/xiaomi/passport/ui/internal/Captcha;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$signInWithVStep2code$1;->invoke()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0
.end method
