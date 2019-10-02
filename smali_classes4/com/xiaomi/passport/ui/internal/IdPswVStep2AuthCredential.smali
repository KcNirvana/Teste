.class public final Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;
.super Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;
.source "AuthBaseProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;",
        "Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;",
        "id",
        "",
        "step1Token",
        "metaLoginData",
        "Lcom/xiaomi/accountsdk/account/data/MetaLoginData;",
        "step2code",
        "trustCurrentEnv",
        "",
        "sid",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;ZLjava/lang/String;)V",
        "getMetaLoginData",
        "()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;",
        "getStep1Token",
        "()Ljava/lang/String;",
        "getStep2code",
        "getTrustCurrentEnv",
        "()Z",
        "passportui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field private final metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final step1Token:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final step2code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final trustCurrentEnv:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "step1Token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metaLoginData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "step2code"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sid"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p6}, Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;->step1Token:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iput-object p4, p0, Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;->step2code:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;->trustCurrentEnv:Z

    return-void
.end method


# virtual methods
.method public final getMetaLoginData()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    return-object v0
.end method

.method public final getStep1Token()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;->step1Token:Ljava/lang/String;

    return-object v0
.end method

.method public final getStep2code()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;->step2code:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrustCurrentEnv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;->trustCurrentEnv:Z

    return v0
.end method
