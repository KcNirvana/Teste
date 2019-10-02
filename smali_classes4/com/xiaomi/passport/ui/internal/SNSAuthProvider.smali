.class public abstract Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;
.super Lcom/xiaomi/passport/ui/internal/AuthProvider;
.source "AuthSnsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000 *2\u00020\u0001:\u0001*B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\rH&J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0008\u0010\u000f\u001a\u00020\rH\u0016J*\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\r2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0016\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u001cH\u0004J\u0010\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010 \u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H$J\u0016\u0010\"\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0003J\u0010\u0010#\u001a\u00020\u00112\u0006\u0010$\u001a\u00020%H\u0002J\u0018\u0010&\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\'\u001a\u00020\u0003H\u0004J\u0018\u0010(\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020\u0003H\u0004R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0004\u00a8\u0006+"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;",
        "Lcom/xiaomi/passport/ui/internal/AuthProvider;",
        "name",
        "",
        "(Ljava/lang/String;)V",
        "sid",
        "getSid",
        "()Ljava/lang/String;",
        "setSid",
        "getAppId",
        "context",
        "Landroid/content/Context;",
        "getIconRes",
        "",
        "getRequestCode",
        "getTintColor",
        "onActivityResult",
        "",
        "activity",
        "Landroid/app/Activity;",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "signInWithAuthCredential",
        "Lcom/xiaomi/passport/ui/internal/Source;",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        "credential",
        "Lcom/xiaomi/passport/ui/internal/AuthCredential;",
        "signInWithSnsCodeAuthCredential",
        "authCredential",
        "Lcom/xiaomi/passport/ui/internal/SnsCodeAuthCredential;",
        "signInWithSnsTokenAuthCredential",
        "Lcom/xiaomi/passport/ui/internal/SnsTokenAuthCredential;",
        "startLogin",
        "storeBindParameter",
        "snsBindParameter",
        "Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;",
        "storeSnsCode",
        "code",
        "storeSnsToken",
        "token",
        "Companion",
        "passportui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;

.field private static authCredential:Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static snsBindParameter:Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field public sid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->Companion:Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/AuthProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getAuthCredential$cp()Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->authCredential:Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;

    return-object v0
.end method

.method public static final synthetic access$getSnsBindParameter$cp()Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->snsBindParameter:Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

    return-object v0
.end method

.method public static final synthetic access$setAuthCredential$cp(Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;)V
    .locals 0
    .param p0    # Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->authCredential:Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;

    return-void
.end method

.method public static final synthetic access$setSnsBindParameter$cp(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;)V
    .locals 0
    .param p0    # Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->snsBindParameter:Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

    return-void
.end method

.method public static final synthetic access$signInWithSnsCodeAuthCredential(Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;Lcom/xiaomi/passport/ui/internal/SnsCodeAuthCredential;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 0
    .param p1    # Lcom/xiaomi/passport/ui/internal/SnsCodeAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->signInWithSnsCodeAuthCredential(Lcom/xiaomi/passport/ui/internal/SnsCodeAuthCredential;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$signInWithSnsTokenAuthCredential(Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;Lcom/xiaomi/passport/ui/internal/SnsTokenAuthCredential;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 0
    .param p1    # Lcom/xiaomi/passport/ui/internal/SnsTokenAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->signInWithSnsTokenAuthCredential(Lcom/xiaomi/passport/ui/internal/SnsTokenAuthCredential;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$storeBindParameter(Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;)V
    .locals 0
    .param p1    # Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->storeBindParameter(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;)V

    return-void
.end method

.method private final signInWithSnsCodeAuthCredential(Lcom/xiaomi/passport/ui/internal/SnsCodeAuthCredential;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;

    invoke-direct {v0}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/SnsCodeAuthCredential;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->code(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/SnsCodeAuthCredential;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->sid(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/SnsCodeAuthCredential;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->appid(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->build()Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->snsLoginByCode(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p1

    const-string v0, "SNSRequest.snsLoginByCode(params)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final signInWithSnsTokenAuthCredential(Lcom/xiaomi/passport/ui/internal/SnsTokenAuthCredential;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;

    invoke-direct {v0}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/SnsTokenAuthCredential;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->token(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/SnsTokenAuthCredential;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->sid(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/SnsTokenAuthCredential;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->appid(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->build()Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->snsLoginByAccessToken(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p1

    const-string v0, "SNSRequest.snsLoginByAccessToken(params)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final storeBindParameter(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;)V
    .locals 0

    sput-object p1, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->snsBindParameter:Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

    return-void
.end method


# virtual methods
.method public abstract getAppId(Landroid/content/Context;)Ljava/lang/String;
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getIconRes()I
.end method

.method public getRequestCode()I
    .locals 1

    const/16 v0, -0x64

    return v0
.end method

.method public final getSid()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->sid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "sid"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getTintColor()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setSid(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->sid:Ljava/lang/String;

    return-void
.end method

.method protected final signInWithAuthCredential(Lcom/xiaomi/passport/ui/internal/AuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;
    .locals 3
    .param p1    # Lcom/xiaomi/passport/ui/internal/AuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/ui/internal/AuthCredential;",
            ")",
            "Lcom/xiaomi/passport/ui/internal/Source<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "credential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/ui/internal/Source;->Companion:Lcom/xiaomi/passport/ui/internal/Source$Companion;

    new-instance v1, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$signInWithAuthCredential$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$signInWithAuthCredential$1;-><init>(Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;Lcom/xiaomi/passport/ui/internal/AuthCredential;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/Source$Companion;->from(Lkotlin/jvm/functions/Function0;)Lcom/xiaomi/passport/ui/internal/Source;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support originAuthCredential:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method protected abstract startLogin(Landroid/app/Activity;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final startLogin(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->sid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->startLogin(Landroid/app/Activity;)V

    return-void
.end method

.method protected final storeSnsCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/passport/ui/internal/SnsCodeAuthCredential;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->sid:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v3, "sid"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {v0, v1, p1, p2, v2}, Lcom/xiaomi/passport/ui/internal/SnsCodeAuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;

    sput-object v0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->authCredential:Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;

    return-void
.end method

.method protected final storeSnsToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/passport/ui/internal/SnsTokenAuthCredential;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->sid:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v3, "sid"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {v0, v1, p1, p2, v2}, Lcom/xiaomi/passport/ui/internal/SnsTokenAuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;

    sput-object v0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->authCredential:Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;

    return-void
.end method
