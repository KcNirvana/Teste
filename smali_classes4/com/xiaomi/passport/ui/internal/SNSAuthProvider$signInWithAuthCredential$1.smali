.class final Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$signInWithAuthCredential$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AuthSnsProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->signInWithAuthCredential(Lcom/xiaomi/passport/ui/internal/AuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
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
.field final synthetic $credential:Lcom/xiaomi/passport/ui/internal/AuthCredential;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;Lcom/xiaomi/passport/ui/internal/AuthCredential;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$signInWithAuthCredential$1;->this$0:Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$signInWithAuthCredential$1;->$credential:Lcom/xiaomi/passport/ui/internal/AuthCredential;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$signInWithAuthCredential$1;->$credential:Lcom/xiaomi/passport/ui/internal/AuthCredential;

    instance-of v1, v0, Lcom/xiaomi/passport/ui/internal/SnsCodeAuthCredential;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$signInWithAuthCredential$1;->this$0:Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$signInWithAuthCredential$1;->$credential:Lcom/xiaomi/passport/ui/internal/AuthCredential;

    check-cast v1, Lcom/xiaomi/passport/ui/internal/SnsCodeAuthCredential;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->access$signInWithSnsCodeAuthCredential(Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;Lcom/xiaomi/passport/ui/internal/SnsCodeAuthCredential;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, v0, Lcom/xiaomi/passport/ui/internal/SnsTokenAuthCredential;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$signInWithAuthCredential$1;->this$0:Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$signInWithAuthCredential$1;->$credential:Lcom/xiaomi/passport/ui/internal/AuthCredential;

    check-cast v1, Lcom/xiaomi/passport/ui/internal/SnsTokenAuthCredential;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->access$signInWithSnsTokenAuthCredential(Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;Lcom/xiaomi/passport/ui/internal/SnsTokenAuthCredential;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support originAuthCredential:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$signInWithAuthCredential$1;->$credential:Lcom/xiaomi/passport/ui/internal/AuthCredential;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest$NeedLoginForBindException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$signInWithAuthCredential$1;->this$0:Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;

    invoke-virtual {v0}, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest$NeedLoginForBindException;->getSNSBindParameter()Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

    move-result-object v2

    const-string v3, "e.snsBindParameter"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->access$storeBindParameter(Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$signInWithAuthCredential$1;->invoke()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0
.end method
