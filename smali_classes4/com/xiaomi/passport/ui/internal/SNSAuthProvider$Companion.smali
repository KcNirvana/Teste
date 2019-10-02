.class public final Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;
.super Ljava/lang/Object;
.source "AuthSnsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0012\u001a\u00020\u0013R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;",
        "",
        "()V",
        "authCredential",
        "Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;",
        "getAuthCredential",
        "()Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;",
        "setAuthCredential",
        "(Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;)V",
        "snsBindParameter",
        "Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;",
        "getSnsBindParameter",
        "()Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;",
        "setSnsBindParameter",
        "(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;)V",
        "invalidAuthCredential",
        "",
        "invalidBindParameter",
        "isBindingSnsAccount",
        "",
        "passportui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAuthCredential()Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->access$getAuthCredential$cp()Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;

    move-result-object v0

    return-object v0
.end method

.method public final getSnsBindParameter()Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->access$getSnsBindParameter$cp()Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

    move-result-object v0

    return-object v0
.end method

.method public final invalidAuthCredential()V
    .locals 2

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;

    const/4 v1, 0x0

    check-cast v1, Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;->setAuthCredential(Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;)V

    return-void
.end method

.method public final invalidBindParameter()V
    .locals 2

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;

    const/4 v1, 0x0

    check-cast v1, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;->setSnsBindParameter(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;)V

    return-void
.end method

.method public final isBindingSnsAccount()Z
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;->getSnsBindParameter()Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setAuthCredential(Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;)V
    .locals 0
    .param p1    # Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->access$setAuthCredential$cp(Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;)V

    return-void
.end method

.method public final setSnsBindParameter(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;)V
    .locals 0
    .param p1    # Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->access$setSnsBindParameter$cp(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;)V

    return-void
.end method
