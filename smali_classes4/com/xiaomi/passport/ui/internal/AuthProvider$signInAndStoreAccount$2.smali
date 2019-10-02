.class final Lcom/xiaomi/passport/ui/internal/AuthProvider$signInAndStoreAccount$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AuthProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/AuthProvider;->signInAndStoreAccount(Landroid/content/Context;Lcom/xiaomi/passport/ui/internal/AuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        "it",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/xiaomi/passport/ui/internal/AuthProvider$signInAndStoreAccount$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/ui/internal/AuthProvider$signInAndStoreAccount$2;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/internal/AuthProvider$signInAndStoreAccount$2;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/ui/internal/AuthProvider$signInAndStoreAccount$2;->INSTANCE:Lcom/xiaomi/passport/ui/internal/AuthProvider$signInAndStoreAccount$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 1
    .param p1    # Lcom/xiaomi/accountsdk/account/data/AccountInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->Companion:Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;->isBindingSnsAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/xiaomi/passport/ui/internal/NeedBindSnsException;

    sget-object v0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->Companion:Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;->getSnsBindParameter()Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {p1, v0}, Lcom/xiaomi/passport/ui/internal/NeedBindSnsException;-><init>(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;)V

    sget-object v0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->Companion:Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;->invalidBindParameter()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/AuthProvider$signInAndStoreAccount$2;->invoke(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p1

    return-object p1
.end method
