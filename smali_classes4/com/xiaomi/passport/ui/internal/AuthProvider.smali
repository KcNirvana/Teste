.class public abstract Lcom/xiaomi/passport/ui/internal/AuthProvider;
.super Ljava/lang/Object;
.source "AuthProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u000c\u001a\u00020\rH$J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\tH\u0002R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/AuthProvider;",
        "",
        "name",
        "",
        "(Ljava/lang/String;)V",
        "getName",
        "()Ljava/lang/String;",
        "signInAndStoreAccount",
        "Lcom/xiaomi/passport/ui/internal/Source;",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        "context",
        "Landroid/content/Context;",
        "credential",
        "Lcom/xiaomi/passport/ui/internal/AuthCredential;",
        "signInWithAuthCredential",
        "storePassToken",
        "",
        "accountInfo",
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
.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/AuthProvider;->name:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$storePassToken(Lcom/xiaomi/passport/ui/internal/AuthProvider;Landroid/content/Context;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/accountsdk/account/data/AccountInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/ui/internal/AuthProvider;->storePassToken(Landroid/content/Context;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    return-void
.end method

.method private final storePassToken(Landroid/content/Context;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->passToken:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->addOrUpdateAccountManager(Landroid/content/Context;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AuthProvider;->name:Ljava/lang/String;

    return-object v0
.end method

.method public signInAndStoreAccount(Landroid/content/Context;Lcom/xiaomi/passport/ui/internal/AuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/passport/ui/internal/AuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/passport/ui/internal/AuthCredential;",
            ")",
            "Lcom/xiaomi/passport/ui/internal/Source<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credential"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/xiaomi/passport/ui/internal/AuthProvider;->signInWithAuthCredential(Lcom/xiaomi/passport/ui/internal/AuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;

    move-result-object p2

    new-instance v0, Lcom/xiaomi/passport/ui/internal/AuthProvider$signInAndStoreAccount$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/ui/internal/AuthProvider$signInAndStoreAccount$1;-><init>(Lcom/xiaomi/passport/ui/internal/AuthProvider;Landroid/content/Context;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, v0}, Lcom/xiaomi/passport/ui/internal/Source;->next(Lkotlin/jvm/functions/Function1;)Lcom/xiaomi/passport/ui/internal/Source;

    move-result-object p1

    sget-object p2, Lcom/xiaomi/passport/ui/internal/AuthProvider$signInAndStoreAccount$2;->INSTANCE:Lcom/xiaomi/passport/ui/internal/AuthProvider$signInAndStoreAccount$2;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p2}, Lcom/xiaomi/passport/ui/internal/Source;->next(Lkotlin/jvm/functions/Function1;)Lcom/xiaomi/passport/ui/internal/Source;

    move-result-object p1

    return-object p1
.end method

.method protected abstract signInWithAuthCredential(Lcom/xiaomi/passport/ui/internal/AuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;
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
.end method
